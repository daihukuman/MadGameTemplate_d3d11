#include <Windows.h>
#include <chrono>
#include <thread>

#include "App.h"
#include "Shared_data.h"

int WINAPI wWinMain(HINSTANCE hInst, HINSTANCE, PWSTR, int nCmdshow) {
	App app(hInst);

	int FrameWait = (1.f / 60.f) * 1000;

	auto start = std::chrono::steady_clock::now();

	float deltatime = 0;
	float smoothdelta = deltatime;

	MSG msg{};
	while (Shared_data::running)
	{
		while (PeekMessageW(&msg, nullptr, 0, 0, PM_REMOVE))
		{
			TranslateMessage(&msg);
			DispatchMessageW(&msg);
		}

		auto now = std::chrono::steady_clock::now();

		deltatime = std::chrono::duration<float>(now - start).count();

		smoothdelta = smoothdelta * 0.8f + deltatime * 0.2f;

		start = now;

		app.game->Think(smoothdelta);

		app.game->Render();

		smoothdelta = deltatime;

		float elapsed = std::chrono::duration<float>(
			std::chrono::steady_clock::now() - now
		).count();

		std::this_thread::sleep_for(
			std::chrono::duration<float>(FrameWait - elapsed)
		);

	}

	return 0;

}