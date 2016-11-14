//
//  divider_geometry.cpp
//  chamber
//
//  Created by Ovis aries on 2016/08/16.
//
//

#include "divider_geometry.h"

using namespace divider;

void geometry::setup(ofVec2f position, geomType gtype, float speed, float scale, int autoRelease_)
{
	pos			= position;
	startFrame	= ofGetFrameNum();
	type		= gtype;
	frameSpeed	= MAX(0.1, speed);
	isDone		= false;
	scl			= scale;
	autoRelease = autoRelease_;
	phase		= PHASE_IN;
	
	for (int i = 0;i < 10;i++) seed[i] = ofRandomuf();
}

void geometry::update()
{
	float tm = getTime();
	int fm = getFrame();
	
	if (tm >= 1.0)
	{
		if (phase == PHASE_IN)	setPhase(PHASE_STAY);
		if (phase == PHASE_OUT) isDone = true;
	}
	if (autoRelease > 1)
	{
		if (phase == PHASE_STAY && fm > autoRelease) setPhase(PHASE_OUT);
	}
	
}

void geometry::setPhase(int ph)
{
	phase = ph;
	startFrame = ofGetFrameNum();
}

void geometry::draw()
{
	rotation = 0;
	float tm = getTime();
	float fm = getFrame();
	
	vector<ofVec2f> vt;
	GLenum drawType = GL_TRIANGLES;
	
	if (type == GEOM_ARC_1)
	{
		drawType = GL_TRIANGLE_STRIP;

		for (int i = 0;i <= 360;i+=3)
		{
			float angle;
			if (phase == PHASE_IN)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 0.0, 1.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) - ofDegToRad(500 * (1.0 - bs));
			}
			
			if (phase == PHASE_STAY)
				angle = ofDegToRad(i);
			
			if (phase == PHASE_OUT)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 1.0, 0.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) + ofDegToRad(800 * (1.0 - bs));
			}
			
			int ofs[] = {0, 120, 240};
			angle += ofs[int(seed[0] * 100.0) % 3];
			angle *= seed[1] < 0.5 ? -1.0 : 1.0;
			
			float width = 100.0 * scl;
			vt.push_back(ofVec2f(cos(angle) * width,
								 sin(angle) * width));
			vt.push_back(ofVec2f(cos(angle) * (width - 5),
								 sin(angle) * (width - 5)));
		}
	}
	if (type == GEOM_ARC_2)
	{
		drawType = GL_TRIANGLE_STRIP;
		
		for (int i = 0;i <= 360;i+=3)
		{
			float angle;
			if (phase == PHASE_IN)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 0.0, 1.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) - ofDegToRad(500 * (1.0 - bs));
			}
			
			if (phase == PHASE_STAY)
				angle = ofDegToRad(i);
			
			if (phase == PHASE_OUT)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 1.0, 0.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) + ofDegToRad(800 * (1.0 - bs));
			}
			
			int ofs[] = {0, 120, 240};
			angle += ofs[int(seed[0] * 100.0) % 3];
			angle *= seed[1] < 0.5 ? -1.0 : 1.0;
			
			float width = 100.0 * scl;
			vt.push_back(ofVec2f(cos(angle) * width,
								 sin(angle) * width));
			vt.push_back(ofVec2f(cos(angle) * 0,
								 sin(angle) * 0));
		}
	}
	if (type == GEOM_LINE_SPLIT_1)
	{
		drawType = GL_TRIANGLE_STRIP;
		float line_length, line_width;
		float splitter = 0;
		
		if (phase == PHASE_IN)
		{
			line_length = ofxeasing::map_clamp(tm, 0.0, 0.5, 0.0, 13000.0,
											   ofxeasing::quint::easeInOut);
			line_width = ofxeasing::map_clamp(tm, 0.0, 0.5, 0.0, 5.0,
											  ofxeasing::quint::easeInOut);
			rotation = ofxeasing::map_clamp(tm, 0.5, 1.0, 0.0, 180.0,
											ofxeasing::cubic::easeOut);
			splitter = ofxeasing::map_clamp(tm, 0.5, 1.0, 0.0, 12000,
											ofxeasing::quint::easeInOut);
		}
		if (phase == PHASE_STAY)
		{
			splitter = 12000;
			line_length = 13000.0;
			line_width = 5.0;
			rotation = 180.0;
		}
		if (phase == PHASE_OUT)
		{
			line_length = 13000.0;
			line_width = ofxeasing::map_clamp(tm, 0.0, 0.5, 5.0, 0.0,
											  ofxeasing::quint::easeInOut);
			splitter = ofxeasing::map_clamp(tm, 0.0, 0.5, 12000.0, 0.0,
											ofxeasing::quint::easeInOut);
			rotation = 180;
		}
		rotation += 60 + (int(seed[0] * 100) * 60);
		vt.push_back(ofVec2f(-line_width			, -line_length));
		vt.push_back(ofVec2f( line_width + splitter	, -line_length));
		vt.push_back(ofVec2f(-line_width			,  line_length));
		vt.push_back(ofVec2f( line_width + splitter	,  line_length));
	}
	if (type == GEOM_HEXA_1)
	{
		drawType = GL_TRIANGLE_STRIP;
		
		for (int i = 0;i <= 360;i+=3)
		{
			float angle;
			if (phase == PHASE_IN)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 0.0, 1.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) - ofDegToRad(500 * (1.0 - bs));
			}
			
			if (phase == PHASE_STAY)
				angle = ofDegToRad(i);
			
			if (phase == PHASE_OUT)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 1.0, 0.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) + ofDegToRad(800 * (1.0 - bs));
			}
			
			int ofs[] = {0, 120, 240};
			angle += ofDegToRad(ofs[int(seed[0] * 100.0) % 3]);
			angle *= seed[1] < 0.5 ? -1.0 : 1.0;
			
			float width = 100.0 * scl;
			vt.push_back(hexPolar(ofRadToDeg(angle), width));
			vt.push_back(hexPolar(ofRadToDeg(angle), width - 5));
		}
	}
	if (type == GEOM_HEXA_2)
	{
		drawType = GL_TRIANGLE_STRIP;
		
		for (int i = 0;i <= 360;i+=3)
		{
			float angle;
			if (phase == PHASE_IN)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 0.0, 1.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) - ofDegToRad(500 * (1.0 - bs));
			}
			
			if (phase == PHASE_STAY)
				angle = ofDegToRad(i);
			
			if (phase == PHASE_OUT)
			{
				float bs = ofxeasing::map_clamp(tm, 0.0, 1.0, 1.0, 0.0,
											 ofxeasing::quad::easeInOut);
				angle = bs * ofDegToRad(i) + ofDegToRad(800 * (1.0 - bs));
			}
			
			int ofs[] = {0, 120, 240};
			angle += ofDegToRad(ofs[int(seed[0] * 100.0) % 3]);
			angle *= seed[1] < 0.5 ? -1.0 : 1.0;
			
			float width = 100.0 * scl;
			vt.push_back(hexPolar(ofRadToDeg(angle), width));
			vt.push_back(ofVec2f(0, 0));

		}
	}
	if (type == GEOM_RIBBON_1)
	{
		drawType == GL_TRIANGLES;
		float length[5];
		float width = 3;
		int ang[] = {0, 30, 90, 150, 180};
		rotation = ang[int(seed[0] * 100) % 5];
						
		if (phase == PHASE_IN)
		{
			for (int i = 0;i < 3;i++)
				length[i] = ofxeasing::map_clamp(tm, 0.0 + abs(i - 1) * 0.1, 1.0, 0.0, 3000.0, ofxeasing::cubic::easeIn);
		}
		
		if (phase == PHASE_STAY)
		{
			for (int i = 0;i < 3;i++) length[i] = 3000;
		}
		if (phase == PHASE_OUT)
		{
			for (int i = 0;i < 3;i++)
				length[i] = ofxeasing::map_clamp(tm, 0.0 + abs(i - 1) * 0.1, 1.0, 3000.0, 0.0, ofxeasing::cubic::easeOut);
		}
		
		for (int i = 0;i < 1;i++)
		{
			ofVec2f c = ofVec2f(0, (i - 1) * 10);
			
			vt.push_back(c + ofVec2f(-length[i], -width));
 			vt.push_back(c + ofVec2f(-length[i],  width));
			vt.push_back(c + ofVec2f( length[i], -width));
			
			vt.push_back(c + ofVec2f(-length[i],  width));
			vt.push_back(c + ofVec2f( length[i], -width));
			vt.push_back(c + ofVec2f( length[i],  width));
		}
	}
	if (type == GEOM_HEXA_BLINK)
	{
		drawType = GL_TRIANGLE_STRIP;
		rotation = 0;
		bool blinker;
		if (phase == PHASE_IN)
			blinker = !(ofRandomuf() * tm < 0.1);
		if (phase == PHASE_STAY)
			blinker = true;
		if (phase == PHASE_OUT)
			blinker = !(ofRandomuf() * (1.0 - tm) < 0.1);
		
		if (blinker)
		{
			for (int i = 0;i <= 360;i+=60)
			{
				vt.push_back(hexPolar(i, scl * 100.0));
				vt.push_back(ofVec2f(0, 0));
			}
		}
	}

	if (type == GEOM_SQUARE_SCALE)
	{
		drawType = GL_TRIANGLE_STRIP;
		rotation = 45;
		float scale;
		
		if (phase == PHASE_IN)
			scale = scl * 100.0 * ofxeasing::map_clamp(tm, 0.0, 1.0, 0.0, 1.0,
													   ofxeasing::quart::easeInOut);
		if (phase == PHASE_STAY)
			scale = scl * 100.0;
		
		if (phase == PHASE_OUT)
			scale = scl * 100.0 * ofxeasing::map_clamp(tm, 0.0, 1.0, 1.0, 0.0,
													   ofxeasing::quart::easeInOut);
		
		for (int i = 0;i <= 360;i+=90)
		{
			vt.push_back(hexPolar(i, scale, 4));
			vt.push_back(ofVec2f(0, 0));
		}

	}
	
	if (type == GEOM_CIRCLE_STRIP)
	{
		float height = 0.0;
		
		for (int i = 0;i < 10;i++)
		{
			float radius = 100 * i;
			
			for (int j = 0;j < 360;j+=3)
			{
				vt.push_back(ofVec2f(sin(ofDegToRad(j)) * radius,
									 cos(ofDegToRad(j)) * radius));
				vt.push_back(ofVec2f(sin(ofDegToRad(j)) * (radius - height),
									 cos(ofDegToRad(j)) * (radius - height)));
			}
		}
	}
	
	if (type == GEOM_TRIANGLE_ROT)
	{
		float scale;
		drawType = GL_TRIANGLE_STRIP;
		
		if (phase == PHASE_IN)
		{
			scale = ofxeasing::map_clamp(tm, 0.0, 0.5, 0.0, 100 * scl,
										 ofxeasing::quint::easeInOut);
			rotation = ofxeasing::map_clamp(tm, 0.0, 1.0, 540.0, 0.0,
											ofxeasing::quint::easeOut);
		}
		if (phase == PHASE_STAY)
		{
			scale = scl * 100;
			rotation = 0;
		}
		if (phase == PHASE_OUT)
		{
			scale = ofxeasing::map_clamp(tm, 0.0, 1.0, 100 * scl, 0.0,
										 ofxeasing::quint::easeInOut);
			rotation = 0;
		}
		
		if (seed[1] < 0.5) rotation += 180;
		
		for (int j = 0;j <= 360;j+=120)
		{
			vt.push_back(ofVec2f(sin(ofDegToRad(j)) * scale,
								 cos(ofDegToRad(j)) * scale));
			vt.push_back(ofVec2f(seed[0] < 0.5 ? sin(ofDegToRad(j)) * (scale - 5) : 0.0,
								 seed[0] < 0.5 ? cos(ofDegToRad(j)) * (scale - 5) : 0.0));
		}
	}
	
	
	ofPushMatrix();
	ofTranslate(pos);
	ofRotateZ(rotation);
	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(2, GL_FLOAT, 0, &vt[0]);
	glDrawArrays(drawType, 0, vt.size());
	glDisableClientState(GL_VERTEX_ARRAY);
	
	ofPopMatrix();
}

int geometry::getFrame()
{
	return (ofGetFrameNum() - startFrame) * 60.0 / ofGetFrameRate();
}

float geometry::getTime()
{
	return ofMap(getFrame(), 0, 10.0 / frameSpeed, 0.0, 1.0, true);
}

void geometry::release()
{
	setPhase(PHASE_OUT);
}
