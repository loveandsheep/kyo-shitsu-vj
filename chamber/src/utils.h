//
//  utils.h
//  chamber
//
//  Created by Ovis aries on 2016/08/27.
//
//

#ifndef utils_h
#define utils_h
#include "ofMain.h"

namespace divider{
	
	static ofVec2f hexPolar(float deg, float radius, int nG = 6)
	{
		int nGon = nG;
		float clampBase = radius;
		float th = ofDegToRad(deg);
		
		float thp = (th - PI / 2.0) + (nGon == 4 ? 0.785 : 0.0);
		float clampRad = cos(PI / nGon) / cos(thp - 2 * PI / nGon * floor((nGon * thp + PI) / (2 * PI))) * clampBase;
		
		return ofVec2f(sin(th) * clampRad,
					   cos(th) * clampRad);
	}
	
}

#endif /* utils_h */
