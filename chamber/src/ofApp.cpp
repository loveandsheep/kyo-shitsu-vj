#include "ofApp.h"

//--------------------------------------------------------------
void ofApp::setup()
{

	mainSketch.setup();
	ofSetCircleResolution(50);
	
	gui.setup();
	gui.add(fps.set("fps", 60.0, 20.0, 90.0));
	gui.add(geom_volume.set("volume", 55, 10, 200));
	gui.add(master.set("master", 1.0, 0.0, 1.0));
	gui.add(mainSketch.fx_mix.set("fx", 0.0, 0.0, 0.3));
	gui.add(mainSketch.b3D.set("3DView", false));
	gui.add(autoBang.set("auto", true));
	
	gui.add(enable_hex.set("HEX", true));
	gui.add(enable_split.set("SPLIT", true));
	gui.add(enable_lines.set("LINE", true));
	gui.add(enable_triangle.set("TRIANGLE", true));
	gui.add(enable_circle.set("CIRCLE", true));
	
	receiver.setup(12400);
}

//--------------------------------------------------------------
void ofApp::update()
{
	fps = ofGetFrameRate();
//	video.update();
	mainSketch.update();
	patterns.update();
	
	while (receiver.hasWaitingMessages())
	{
		ofxOscMessage m;
		receiver.getNextMessage(m);
		
		if (m.getAddress() == "/master")
		{
			master = m.getArgAsFloat(0);
		}
		
		if (m.getAddress() == "/objects")
		{
			enable_hex = m.getArgAsInt(0);
			enable_split = m.getArgAsInt(1);
			enable_lines = m.getArgAsInt(2);
			enable_triangle = m.getArgAsInt(3);
			enable_circle = m.getArgAsInt(4);
		}
		
		if (m.getAddress() == "/3d")
			mainSketch.b3D = (m.getArgAsInt(0) == 1);
		
		if (m.getAddress() == "/color")
			mainSketch.colorShuffle();
		
		if (m.getAddress() == "/auto")
			autoBang = (m.getArgAsInt(0) == 1);
		
		if (m.getAddress() == "/auto_volume")
			geom_volume = ofMap(m.getArgAsFloat(0), 0.0, 1.0, 10, 200);
		
		if (m.getAddress() == "/fx")
			mainSketch.fx_mix = m.getArgAsFloat(0);
		
		if (m.getAddress() == "/channel/note/Velocity")
		{
			mainSketch.colorShuffle();
		}
	}
}

//--------------------------------------------------------------
void ofApp::draw()
{
	mainSketch.begin();
	{
		ofClear(0, 0, 0, 255);
		
		ofEnableBlendMode(OF_BLENDMODE_ADD);
		ofSetColor(255, 51);
		ofTranslate(ofSignedNoise(ofGetFrameNum() / 154.62) * 45.0,
					ofSignedNoise(ofGetFrameNum() / 185.34) * 45.0);
		
		ofRotateZ(mainSketch.rotation);
		patterns.draw(ofRectangle(0, 0,
								  mainSketch.buffer.getWidth(),
								  mainSketch.buffer.getHeight()));
		
		ofSetRectMode(OF_RECTMODE_CORNER);
	}
	mainSketch.end();
	
	/*output*/
	ofEnableBlendMode(OF_BLENDMODE_ALPHA);
	mainSketch.genShading();
	
	/*Grid*/
	mainSketch.buffer_dst.begin();
	mainSketch.buffer_dst.end();
	
	ofBackground(0, 0, 0);
	ofSetColor(255);
	mainSketch.buffer_dst.draw(1100, 400, 820, 461);
	ofSetColor(255 * master);
//	mainSketch.buffer_dst.draw(1920, 152, 1280, 720);
	mainSketch.buffer_dst.draw(1920, 0, 1920, 1080);
	mainSketch.buffer_dst.draw(1100, 0, 640, 360);
	mainSketch.currentVid->draw(460, 0, 640, 360);
	for (int i = 0;i < mainSketch.video.size();i++)
	{
		mainSketch.video[i]->draw(460 + (i % 2) * 320, 360 + i / 2 * 180, 320, 180);
	}
	
	ofNoFill();
	ofSetColor(255);
	ofDrawRectangle(1100, 0, 640, 360);
	ofFill();
	if (bDebug) mainSketch.drawColorSelector(230, 30);
	
	ofSetColor(255);

	static int step = 30;
	if (autoBang)
	{
		if (ofGetFrameNum() % step == 0)
		{
			step = ofRandom(5, geom_volume);
			vector<int> ky;

			if (enable_hex)
			{
				ky.push_back('q');
				ky.push_back('s');
			}
			if (enable_split)
			{
				ky.push_back('a');
			}
			if (enable_lines)
			{
				ky.push_back('d');
				ky.push_back('x');
				ky.push_back('c');
			}
			if (enable_triangle)
			{
				ky.push_back('r');
			}
			if (enable_circle)
			{
				ky.push_back('z');
			}
			
			if (ky.size() > 0)
				keyPressed(ky[int(ofRandom(100)) % ky.size()]);
		}
	}
	if (bDebug) gui.draw();
}

//--------------------------------------------------------------
void ofApp::keyPressed(int key){
	ofVec2f c = divider::hexPolar(60 * int(ofRandom(6)), 200 * int(ofRandom(3)));
	
	int autorel = ofRandom(45, 60);
	
	if (key == 'a')
		patterns.addGeom(c, divider::GEOM_LINE_SPLIT_1,
						 0.3, 1.0, autorel);

	if (key == 'd')
		patterns.addGeom(c, divider::GEOM_HEXA_1,
						 0.3, 0.2 * int(ofRandom(20)), autorel);

	if (key == 's')
		patterns.addGeom(c, divider::GEOM_HEXA_2,
						 0.3, 0.19 * int(ofRandom(5)), autorel);

	if (key == 'z')
		patterns.addGeom(c, divider::GEOM_ARC_2,
						 0.3, 0.19 * int(ofRandom(35)), autorel);
	
	if (key == 'x')
		patterns.addGeom(c, divider::GEOM_ARC_1,
						 0.3, 0.19 * int(ofRandom(35)), autorel);
	
	if (key == 'c')
		patterns.addGeom(c, divider::GEOM_RIBBON_1,
						 0.5, 1.0, autorel);
	if (key == 'q')
		patterns.addGeom(c, divider::GEOM_HEXA_BLINK, 0.5, 0.2 * int(ofRandom(5)), autorel);
	
	if (key == 'w')
		patterns.addGeom(c, divider::GEOM_SQUARE_SCALE, 0.5, 0.2 * int(ofRandom(5)), autorel);
	
	if (key == 'r')
		patterns.addGeom(c, divider::GEOM_TRIANGLE_ROT, 0.5, 0.2 * int(ofRandom(35)), autorel);
	
	if (key == 'f')
		ofToggleFullscreen();
	
	if (key == 'g')
		bDebug ^= true;
	
	if (key == ' ')
		mainSketch.currentVid->setPosition(ofRandom(0.0, 0.8));
}

//--------------------------------------------------------------
void ofApp::keyReleased(int key){

}

//--------------------------------------------------------------
void ofApp::mouseMoved(int x, int y ){

}

//--------------------------------------------------------------
void ofApp::mouseDragged(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mousePressed(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseReleased(int x, int y, int button){

}

//--------------------------------------------------------------
void ofApp::mouseEntered(int x, int y){

}

//--------------------------------------------------------------
void ofApp::mouseExited(int x, int y){

}

//--------------------------------------------------------------
void ofApp::windowResized(int w, int h){

}

//--------------------------------------------------------------
void ofApp::gotMessage(ofMessage msg){

}

//--------------------------------------------------------------
void ofApp::dragEvent(ofDragInfo dragInfo){ 

}
