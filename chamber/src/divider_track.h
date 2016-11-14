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

namespace divider
{
	class tracker{
	public:
		void setup();
		void update(ofPixels & image);
		void draw();
		
		void ptn_linePlot(vector<ofPoint> const & pts);
		void ptn_delaunay(vector<ofPoint> const & pts);
		
		ofxCv::FlowPyrLK flow;
		
		ofxDelaunay delaunay;
	};
}

#endif
