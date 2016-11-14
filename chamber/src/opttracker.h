//
//  tracker.hpp
//  chamber
//
//  Created by Ovis aries on 2016/11/12.
//
//

#ifndef opttracker_hpp
#define opttracker_hpp

#include "ofMain.h"
#include "ofxCv.h"

class optTracker{
public:
	
	void setup();
	void update(ofImage & image);
	void draw();
	
	ofxCv::FlowPyrLK flow;
	
};

#endif /* tracker_h */
