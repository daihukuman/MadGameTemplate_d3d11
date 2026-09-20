#pragma once
#include <Windows.h>
#include <wrl/client.h>
#include <d3d11.h>

#include "Shared_data.h"
#include "Entity.h"

class Game
{

	HWND Window;

public:

	Game(HWND hWnd, HINSTANCE hInst);

	static LRESULT CALLBACK WndProc(HWND hWnd, UINT msg, WPARAM wp, LPARAM lp);

	void Think(const float deltatime);
	void Render();

};