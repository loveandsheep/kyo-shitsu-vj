//
//  divider_pattern.h
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#ifndef divider_pattern_h
#define divider_pattern_h

#include "ofMain.h"
#include "divider_geometry.h"

namespace divider{
	
	class pattern
	{
	public:
		void setPattern(int pat);
		
		void update();
		void draw(ofRectangle field);
		
		void addGeom(ofVec2f position, geomType gtype, float speed, float scale, int autoRelease = 0);
		
		vector< ofPtr<divider::geometry> > geoms;
	};
}


#endif /* divider_pattern_h */
