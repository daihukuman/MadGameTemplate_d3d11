#pragma once
#include <wrl/client.h>
#include <d3d11.h>

#include "Entity.h"

class Player : public Entity
{
	Microsoft::WRL::ComPtr<ID3D11Texture2D> texture = nullptr;
public:

};