#include "Game.h"

Game::Game(HWND hWnd, HINSTANCE hInst) {

	WNDCLASSW wc{};
	wc.lpfnWndProc = Game::WndProc;
	wc.lpszClassName = L"daihukuman_game";
	wc.hInstance = hInst;

	RegisterClassW(&wc);

	Window = CreateWindowExW(
		0,
		L"daihukuman_game",
		L"Game",
		WS_VISIBLE | WS_CHILD,
		0, 0, 100, 100,
		hWnd,
		nullptr,
		hInst,
		nullptr
	);

	Shared_data::Window = Window;
	Shared_data::hInstance = hInst;

	DXGI_SWAP_CHAIN_DESC desc{};

	desc.BufferCount = 2;
	desc.BufferDesc.Format = DXGI_FORMAT_R8G8B8A8_UNORM;
	desc.OutputWindow = hWnd;
	desc.SampleDesc.Count = 1;
	desc.SwapEffect = DXGI_SWAP_EFFECT_FLIP_DISCARD;
	desc.Windowed = TRUE;

	HRESULT hr = D3D11CreateDeviceAndSwapChain(
		nullptr,
		D3D_DRIVER_TYPE_HARDWARE,
		nullptr,
		0,
		nullptr,
		0,
		D3D11_SDK_VERSION,
		&desc,
		&Shared_data::Direct3D::p_swapchain,
		&Shared_data::Direct3D::p_device,
		nullptr,
		&Shared_data::Direct3D::p_context
	);

	if (FAILED(hr)) {
		MessageBoxW(NULL, L"Error", L"Error", MB_OK);
	}

}

LRESULT Game::WndProc(HWND hWnd, UINT msg, WPARAM wp, LPARAM lp) {

}

void Game::Think(const float deltatime) {
	for (Entity* ent : Shared_data::Entities) {
		ent->Think(deltatime);
	}
}

void Game::Render() {
	for (Entity* ent : Shared_data::Entities) {
		ent->Render();
	}
}