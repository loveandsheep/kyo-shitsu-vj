//
//  divider_track.hpp
//  chamber
//
//  Created by Ovis aries on 2016/11/12.
//
//

#ifndef divider_track_hpp
#define divider_track_hpp

#include "ofxCv.h"
#include "ofxDelaunay.h"
#include "ofxTrueTypeFontUC.h"

namespace divider
{
	class tracker{
	public:
		void setup();
		void update(ofPixels & image);
		void draw();
		
		bool presetSW[7];
		void ptn_number(vector<ofPoint> const & pts);
		void ptn_kanji(vector<ofPoint> const & pts);
		void ptn_eiji(vector<ofPoint> const & pts);
		void ptn_linePlot(vector<ofPoint> const & pts);
		void ptn_delaunay(vector<ofPoint> const & pts);
		void ptn_horizon(vector<ofPoint> const & pts);
		void ptn_rectnoise(vector<ofPoint> const & pts);
		
		ofxCv::FlowPyrLK flow;
		
		ofxDelaunay delaunay;
		ofxTrueTypeFontUC font;
		
		vector<string> words;
		vector<string> words_e;
	
		void trackPreset(int num);
	};
}

#endif
