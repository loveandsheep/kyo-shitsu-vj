#pragma once

#include "utils.h"
#include "ofMain.h"
#include "divider_sketch.h"
#include "divider_pattern.h"
#include "ofxGui.h"
#include "ofxOsc.h"

class ofApp : public ofBaseApp{

	public:
		void setup();
		void update();
		void draw();

		void keyPressed(int key);
		void keyReleased(int key);
		void mouseMoved(int x, int y );
		void mouseDragged(int x, int y, int button);
		void mousePressed(int x, int y, int button);
		void mouseReleased(int x, int y, int button);
		void mouseEntered(int x, int y);
		void mouseExited(int x, int y);
		void windowResized(int w, int h);
		void dragEvent(ofDragInfo dragInfo);
		void gotMessage(ofMessage msg);
	
	divider::sketch mainSketch;
	divider::pattern patterns;
	
	ofxPanel gui;
	ofParameter<float> fov;
	ofParameter<float> geom_volume;
	ofParameter<float> fps;
	ofParameter<float> master;
	ofParameter<bool> autoBang;
	
	ofParameter<bool> enable_hex;
	ofParameter<bool> enable_split;
	ofParameter<bool> enable_lines;
	ofParameter<bool> enable_triangle;
	ofParameter<bool> enable_circle;
	
	ofxOscReceiver receiver;
	
	//3Dビュー
	//ズーム
	//エフェクト
	
	bool bDebug = true;
	bool bPreview = false;
	ofVideoPlayer video;
	
	ofImage kyo_logo;
	float logo_transp = 0;
};
