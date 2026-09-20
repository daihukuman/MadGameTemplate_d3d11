#include "App.h"
#include "Shared_data.h"

App::App(HINSTANCE hInstance) : hInst(hInstance) {

	WNDCLASSW wc{};
	wc.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
	wc.lpszClassName = L"daihukuman";
	wc.hInstance = hInstance;
	wc.hCursor = LoadCursorW(NULL, IDC_ARROW);

	RegisterClassW(&wc);

	Window = CreateWindowExW(
		0,
		L"daihukuman",
		L"Game",
		WS_OVERLAPPEDWINDOW | WS_VISIBLE | WS_CLIPCHILDREN,
		CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT, CW_USEDEFAULT,
		NULL, NULL, hInstance, this
	);

}

LRESULT CALLBACK App::WndProc(HWND hWnd, UINT msg, WPARAM wp, LPARAM lp) {
	if (msg == WM_NCCREATE) {
		CREATESTRUCTW *cs = (CREATESTRUCTW*)lp;
		App* app = (App*)cs->lpCreateParams;
		app->Window = hWnd;
		SetWindowLongPtrW(hWnd, GWLP_USERDATA, (LONG_PTR)app);
	}
	App* app = (App*)GetWindowLongPtrW(hWnd, GWLP_USERDATA);
	switch (msg)
	{
	case WM_CREATE:
	{
		app->game = std::make_unique<Game>(app->Window, app->hInst);
		break;
	}
	default:
		return DefWindowProcW(hWnd, msg, wp, lp);
	}
	return 0;
}