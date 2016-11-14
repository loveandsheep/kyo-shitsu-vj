//
//  tracker.cpp
//  chamber
//
//  Created by Ovis aries on 2016/11/12.
//
//

#include "opttracker.h"

void optTracker::setup()
{
	
}

void optTracker::update(ofImage & image)
{
	if (ofGetFrameNum() % 120 == 0) flow.resetFlow();
	flow.calcOpticalFlow(image);
}

void optTracker::draw()
{
	flow.draw();
}
