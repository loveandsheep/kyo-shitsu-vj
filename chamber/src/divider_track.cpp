//
//  divider_track.cpp
//  chamber
//
//  Created by Ovis aries on 2016/11/12.
//
//

#include "divider_track.h"

using namespace divider;

void tracker::setup()
{
	font.load("min6.ttc", 72);
	
	words.push_back("､ｮ､鬢ｮ､鬢ﾒ､ｫ､?ﾎﾇ");
	words.push_back("ﾀﾖ､､､ｳ､ﾉ､筅ｿ､ﾁ｡");
	words.push_back("ｵｭ､ﾊﾀﾐ､ﾎｷ摠ｪ");
	words.push_back("ﾋﾎ荀ｿ､ｵ､筅ﾄ");
	words.push_back("ﾎ､ﾒ､ﾈ､ｿ､ﾁ｡｢･ﾕ");
	words.push_back("色味");
	words.push_back("官爵");
	words.push_back("大器");
	words.push_back("欅");
	
	words_e.push_back("substance");
	words_e.push_back("emerge");
	words_e.push_back("half");
	words_e.push_back("mile");
	words_e.push_back("beach");
	words_e.push_back("class");
	words_e.push_back("poly");
	words_e.push_back("hit");
}

void tracker::update(ofPixels & image)
{
	if (ofGetFrameNum() > 120)
	{
		if (ofGetFrameNum() % 120 == 100) flow.resetFlow();
		flow.calcOpticalFlow(image);
	}
}

void tracker::draw()
{
	ofSetColor(255, 51);
	vector<ofPoint> pts = flow.getFeatures();
	
	if (presetSW[0]) ptn_number(pts);
	if (presetSW[1]) ptn_kanji(pts);
	if (presetSW[2]) ptn_eiji(pts);
	if (presetSW[3]) ptn_linePlot(pts);
	if (presetSW[4]) ptn_delaunay(pts);
	if (presetSW[5]) ptn_horizon(pts);
	if (presetSW[6]) ptn_rectnoise(pts);
	
}

void tracker::ptn_rectnoise(vector<ofPoint> const & pts)
{
	for (int i = 0;i < pts.size();i+=pts.size() / 10.0)
	{
		ofPushMatrix();
		ofTranslate(pts[i] * 1.5);
		ofSetRectMode(OF_RECTMODE_CENTER);
		if (i % 3 == 0) ofNoFill();
		ofDrawRectangle(0, 0,
						ofMap(ofSignedNoise(pts[i].x / 264.67), 0.2, 0.8, 0.0, 1.0) * 200,
						ofMap(ofSignedNoise(pts[i].y / 567.34), 0.2, 0.8, 0.0, 1.0) * 200);
		ofSetRectMode(OF_RECTMODE_CORNER);
		ofPopMatrix();
		ofFill();
	}
}

void tracker::ptn_horizon(vector<ofPoint> const & pts)
{
	for (int i = 0;i < pts.size();i+=15)
	{
		ofDrawLine(0, pts[i].y, 1920, pts[i].y);
	}
}

void tracker::ptn_kanji(const vector<ofPoint> &pts)
{
	for (int i = 0;i < pts.size();i+=pts.size() / 10.0)
	{
		ofPushMatrix();
		ofTranslate(pts[i] * 1.5);
		float s = ofSignedNoise(i * 342.423) * 3.0;
		ofScale(s, s);
		font.drawString(words[words.size() * ofNoise(pts[i].x / 200.0, pts[i].y / 200.0)], 0, 0);
		ofPopMatrix();
	}
}

void tracker::ptn_eiji(const vector<ofPoint> &pts)
{
	for (int i = 0;i < pts.size();i+=2)
	{
		ofPushMatrix();
		ofTranslate(pts[i] * 1.5);
		float s = ofSignedNoise(i * 342.423);
		ofScale(s, s);
		font.drawString(words_e[words_e.size() * ofNoise(pts[i].x / 100.0, pts[i].y / 100.0)], 0, 0);
		ofPopMatrix();
	}
}


void tracker::ptn_number(const vector<ofPoint> &pts)
{
	for (int i = 0;i < pts.size();i+=5)
	{
		ofPushMatrix();
		ofTranslate(pts[i] * 1.5);
		float s = ofSignedNoise(i * 342.423) * 1.0;
		ofScale(s, s);
		font.drawString(ofToString(ofNoise(pts[i].x / 200.0, pts[i].y / 200.0) * 5233.4235), 0, 0);
		ofPopMatrix();
	}
}

void tracker::ptn_delaunay(const vector<ofPoint> &pts)
{
	delaunay.reset();
	for (int i = 0;i < pts.size();i+=pts.size() / 10.0) delaunay.addPoint(pts[i]);
	delaunay.triangulate();
	
	vector<ofVec3f> dlp;
	vector<ofVec3f> verts = delaunay.triangleMesh.getVertices();
	vector<ofIndexType> indices = delaunay.triangleMesh.getIndices();
	for (int i = 0;i < delaunay.getNumTriangles();i++)
	{
		dlp.push_back(verts[indices[i*3]]);
		dlp.push_back(verts[indices[i*3+1]]);
		dlp.push_back(verts[indices[i*3+2]]);
	}

	ofPushMatrix();
	ofScale(1.5, 1.5);
	
	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	
	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(3, GL_FLOAT, 0, &dlp[0]);
	
	glDrawArrays(GL_TRIANGLES, 0, dlp.size());
	
	glDisableClientState(GL_VERTEX_ARRAY);
	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);

	ofPopMatrix();

}

void tracker::ptn_linePlot(vector<ofPoint> const & pts)
{
	ofSetLineWidth(2.0);
	for (int i = 0;i < pts.size();i+=pts.size() / 10.0)
	{
		int idx = (i + 100) % pts.size();
		ofDrawLine(pts[i] * 1.5, pts[idx] * 1.5);
		
		for (int j = 0;j < 2;j++)
		{
			ofPushMatrix();
			ofTranslate(pts[j == 0 ? i : idx] * 1.5);
			ofRotateZ(45);
			float sc = ofNoise(i * 342.41) * 1.5;
			ofScale(sc, sc);
			if (fmod(sc, 1.0) < 0.5) ofNoFill();
			ofDrawRectangle(-10, -10, 20, 20);
			ofFill();
			ofPopMatrix();
		}
	}
	ofSetLineWidth(1.0);
}

void tracker::trackPreset(int num)
{
	//0:数字　1:漢字　2:英字　3:ライン　4:ドロネー　5:横線 6:矩形ノイズ
	presetSW[0] = 0;
	presetSW[1] = 0;
	presetSW[2] = 0;
	presetSW[3] = 0;
	presetSW[4] = 0;
	presetSW[5] = 0;
	presetSW[6] = 0;
	
	num %= 8;
	
	if (num == 0)
	{

	}
	if (num == 1)
	{
		presetSW[4] = 1;
	}
	if (num == 2)
	{
		presetSW[3] = 1;
	}
	if (num == 3)
	{
		presetSW[0] = 1;
		presetSW[5] = 1;
	}
	if (num == 4)
	{
		presetSW[1] = 1;
		presetSW[4] = 1;
	}
	if (num == 5)
	{
		presetSW[2] = 1;
	}
	if (num == 6)
	{
		presetSW[6] = 1;
	}
	if (num == 7)
	{
		presetSW[1] = 1;
		presetSW[5] = 1;
		presetSW[6] = 1;
	}
}
