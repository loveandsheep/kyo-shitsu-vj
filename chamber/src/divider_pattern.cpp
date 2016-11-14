//
//  divider_pattern.cpp
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#include "divider_pattern.h"

using namespace divider;


void pattern::update()
{
	for (auto it : geoms) it->update();
	
	vector< ofPtr<divider::geometry> >::iterator it = geoms.begin();
	while (it != geoms.end())
	{
		if ((*it)->isDone)
		{
			it = geoms.erase(it);
		}else{
			++it;
		}
	}
}

void pattern::draw(ofRectangle field)
{
	for (auto it : geoms)
	{
		ofPushMatrix();
		ofTranslate(0.0, 0.0, it->seed[3] * 500.0);
//		ofRotateZ(ofGetFrameNum() / 5.0);
		it->draw();
		ofPopMatrix();
	}
}

void pattern::addGeom(ofVec2f position, geomType gtype, float speed, float scale, int autoRelease)
{
	ofPtr<geometry> gm = ofPtr<geometry>(new geometry);
	gm->setup(position, gtype, speed, scale, autoRelease);
	geoms.push_back(gm);
}