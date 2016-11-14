//
//  divider_palette.h
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#ifndef divider_palette_h
#define divider_palette_h

#include "ofMain.h"

namespace divider{
	
	struct colorPreset{
		ofFloatColor palette[5];//0,1,2,base,accent
	};
	
	class palette{
	public:
		void addPreset(string name, ofFloatColor* colorArr);
		void addPreset(string name, int c1, int c2, int c3, int cBase, int cAccent);
		
		ofFloatColor getBase(string name);
		ofFloatColor getAccent(string name);
		ofFloatColor* getColorArray(string name);
		
		map<string, colorPreset> presets;
		
	};
}

#endif /* divider_palette_h */
