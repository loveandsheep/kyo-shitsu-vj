//
//  divider_geometry.h
//  chamber
//
//  Created by Ovis aries on 2016/08/16.
//
//

#ifndef divider_geometry_h
#define divider_geometry_h

#include "ofMain.h"
#include "ofxEasing.h"
#include "utils.h"

namespace divider{
	
	enum geomType{
		GEOM_ARC_1,
		GEOM_ARC_2,
		GEOM_LINE_SPLIT_1,
		GEOM_RIBBON_1,
		GEOM_HEXA_1,
		GEOM_HEXA_2,
		GEOM_HEXA_BLINK,
		GEOM_SQUARE_SCALE,
		GEOM_CIRCLE_STRIP,
		GEOM_LINE_STRIP,
		GEOM_TRIANGLE_ROT
	};
	
	class geometry{
	public:
		
		void			setup(ofVec2f position, geomType gtype,
							  float speed, float scale, int autoRelease_);
		void			update();
		virtual void	draw();
		
		void			release();
		
		int				getFrame();
		float			getTime();
		void			setPhase(int ph);
		
		static const int PHASE_IN = 0;
		static const int PHASE_STAY = 1;
		static const int PHASE_OUT = 2;
		
		geomType	type;
		ofVec2f		pos;
		float		scl;
		float		rotation;
		int			phase;
		int			startFrame;
		float		frameSpeed;
		bool		isDone;
		int			autoRelease;
		
		float seed[10];
	};
	
}

#endif /* divider_geometry_h */
