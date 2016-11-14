//
//  paletteUI.hpp
//  paletteEditor
//
//  Created by Ovis aries on 2016/11/14.
//
//

#ifndef paletteUI_hpp
#define paletteUI_hpp

#include "ofMain.h"

class paletteUI{
public:
	ofFloatColor cols[5];
	
	vector<ofVec2f> colorRing_vert;
	vector<ofFloatColor> colorRing_color;
	
	void setup();
	void draw(int x, int y);
	
	void mouseMoved(ofMouseEventArgs & arg);
	void mousePressed(ofMouseEventArgs & arg);
	void mouseDragged(ofMouseEventArgs & arg);
	void mouseReleased(ofMouseEventArgs & arg);
};

#endif /* paletteUI_hpp */
