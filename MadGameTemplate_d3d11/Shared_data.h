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

		static wchar_t p_keys[256];

	public:

		const static inline wchar_t *keys = p_keys;

		class Mouse {
			friend class Game;

			static bool p_Lbutton;
			static bool p_Rbutton;

		public:

			const static inline bool& Lbutton = p_Lbutton;
			const static inline bool& Rbutton = p_Rbutton;

		};

	};
	class Direct3D {
		friend class Game;

		static ID3D11Device* p_device;
		static ID3D11DeviceContext* p_context;
		static IDXGISwapChain* p_swapchain;
		static ID3D11RenderTargetView* p_Rendertarget;

	public:

		const static inline ID3D11Device*& device = p_device;
		const static inline ID3D11DeviceContext*& context = p_context;
		const static inline IDXGISwapChain*& swapchain = p_swapchain;
		const static inline ID3D11RenderTargetView*& Rendertarget = p_Rendertarget;

	};
};