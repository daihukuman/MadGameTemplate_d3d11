#pragma once

#include <Windows.h>
#include "Game.h"

#include <memory>

class App
{

public:

	std::unique_ptr<Game> game = nullptr;

	HWND Window;
	HINSTANCE hInst;

	App(HINSTANCE hInstance);

	static LRESULT CALLBACK WndProc(HWND hWnd, UINT msg, WPARAM wp, LPARAM lp);

};

