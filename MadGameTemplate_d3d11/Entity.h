#pragma once
#include "Shared_data.h"

class Entity
{



public:

	virtual void Spawn();

	virtual void Think(const float deltatime);
	virtual void Render();

};