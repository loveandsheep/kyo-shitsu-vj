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
	
}

void tracker::update(ofPixels & image)
{
	if (ofGetFrameNum() > 240)
	{
		if (ofGetFrameNum() % 120 == 100) flow.resetFlow();
		flow.calcOpticalFlow(image);
	}
}

void tracker::draw()
{
	ofSetColor(255, 51);
	vector<ofPoint> pts = flow.getFeatures();
	
	ptn_linePlot(pts);
//	ptn_delaunay(pts);
	
	
//	delaunay.reset();
//	for (int i = 0;i < pts.size();i+=pts.size() / 10.0) delaunay.addPoint(pts[i]);
//	delaunay.triangulate();
//	
//	ofPushMatrix();
//	ofScale(1.5, 1.5);
//	ofNoFill();
//	ofFill();
//	if (delaunay.getNumTriangles() > 0)
//	{
//		vector<ofVec3f> pt = delaunay.getPointsForITriangle(delaunay.getTriangleAtIndex(0));
//		for (int i = 0;i < pt.size();i++)
//		{
//			cout << pt[i] << endl;
//		}
//		glEnableClientState(GL_VERTEX_ARRAY);
//		glVertexPointer(3, GL_FLOAT, 0, &pt[0]);
//		glDrawArrays(GL_TRIANGLES, 0, pt.size());
//		glDisableClientState(GL_VERTEX_ARRAY);
//	}
//	ofPopMatrix();

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
