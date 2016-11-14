//
//  divider_palette.cpp
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#include "divider_palette.h"

using namespace divider;

void palette::addPreset(string name, int c1, int c2, int c3, int cBase, int cAccent)
{
	ofFloatColor c[5];
	c[0].setHex(c1);
	c[1].setHex(c2);
	c[2].setHex(c3);
	c[3].setHex(cBase);
	c[4].setHex(cAccent);
	
	addPreset(name, c);
}

void palette::addPreset(string name, ofFloatColor* colorArr)
{
	pair<string, colorPreset> newP;
	colorPreset cp;
	for (int i = 0;i < 5;i++)
		cp.palette[i] = colorArr[i];
	
	newP.first = string(name);
	newP.second = colorPreset(cp);
	
	presets.insert(newP);
}

ofFloatColor palette::getBase(string name)
{
	ofFloatColor* ptr = getColorArray(name);
	return ptr ? ptr[3] : ofFloatColor(1.0, 1.0, 1.0, 1.0);
}

ofFloatColor palette::getAccent(string name)
{
	ofFloatColor* ptr = getColorArray(name);
	return ptr ? ptr[4] : ofFloatColor(1.0, 1.0, 1.0, 1.0);
}

ofFloatColor* palette::getColorArray(string name)
{
	map<string, colorPreset>::iterator it = presets.find(name);
	
	if (it != presets.end())
	{
		return it->second.palette;
	}
	else
	{
		return nullptr;
	}
}