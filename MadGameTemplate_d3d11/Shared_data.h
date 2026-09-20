#pragma once
#include <Windows.h>
#include <wrl/client.h>
#include <d3d11.h>

#include <vector>

class Entity;

class Shared_data {

	friend class Game;

public:

	static inline bool running = true;

	static inline HWND Window = NULL;
	static inline HINSTANCE hInstance = NULL;

	static inline std::vector<Entity*> Entities = {};

	class Input {
		friend class Game;

	public:



	};
	class Direct3D {
		friend class Game;

		static ID3D11Device* p_device;
		static ID3D11DeviceContext* p_context;
		static IDXGISwapChain* p_swapchain;
		static ID3D11RenderTargetView* p_Rendertarget;

	public:

		static inline ID3D11Device*& device = p_device;
		static inline ID3D11DeviceContext*& context = p_context;
		static inline IDXGISwapChain*& swapchain = p_swapchain;
		static inline ID3D11RenderTargetView*& Rendertarget = p_Rendertarget;

	};
};