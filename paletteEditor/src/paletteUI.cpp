//
//  paletteUI.cpp
//  paletteEditor
//
//  Created by Ovis aries on 2016/11/14.
//
//

#include "paletteUI.h"

void paletteUI::setup()
{
	ofAddListener(ofEvents().mouseMoved, this, &paletteUI::mouseMoved);
	ofAddListener(ofEvents().mousePressed, this, &paletteUI::mousePressed);
	ofAddListener(ofEvents().mouseDragged, this, &paletteUI::mouseDragged);
	ofAddListener(ofEvents().mouseReleased, this, &paletteUI::mouseReleased);

	
	for (int i = 0;i < 360;i+=3)
	{
		colorRing_vert.push_back(ofVec2f());
	}
}

void paletteUI::draw(int x, int y)
{
	
}

void paletteUI::mouseMoved(ofMouseEventArgs & arg)
{
	
}
void paletteUI::mousePressed(ofMouseEventArgs & arg)
{
	
}
void paletteUI::mouseDragged(ofMouseEventArgs & arg)
{
	
}
void paletteUI::mouseReleased(ofMouseEventArgs & arg)
{
	
}
