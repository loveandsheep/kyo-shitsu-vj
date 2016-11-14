//
//  divider_sketch.hpp
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#ifndef divider_sketch_hpp
#define divider_sketch_hpp

#include "ofMain.h"
#include "dmMeasureTool.h"
#include "ofxKsmrFragmentFx.h"
#include "divider_palette.h"
#include "ofxEasing.h"
#include "divider_track.h"

#define STRINGIFY(A) #A

namespace divider{
	
	static const float screen_width = 1920;
	static const float screen_height = 1080;
	
	class sketch{
	public:
		void setup();
		void update();
		
		void begin();
		void end();
		
		void addVideo(string path);
		
		void initShader();
		void genShading();
		void drawColorSelector(int x, int y);
		void drawVideoSelector(int x, int y);
		void colorShuffle();
		
		int ovr_choice = 0;
		
		void ovr_grid();
		void ovr_cross();
		void ovr_trigrid();
		
		ofFbo		buffer;
		ofFbo		buffer_dst;
		ofShader	shader;
		ofxKsmrFragmentFx fx;
		
		ofVec3f camera_pos, camera_base, camera_targ;
		int transCount;
		float rotation;
		float rotation_targ;
		bool b3DLsat = false;
		ofParameter<bool> b3D;
		ofParameter<float> fx_mix;
		
		string		currentPalette;
		palette		pal;
		tracker		track;
		
		ofEasyCam camera;
		vector< ofPtr<ofVideoPlayer> > video;
		
		ofPtr<ofVideoPlayer> currentVid;
	};
}

#endif /* divider_sketch_hpp */
