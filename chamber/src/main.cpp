#include "ofMain.h"
#include "ofApp.h"

//========================================================================
int main( ){

	ofGLFWWindowSettings settings;
	settings.width = 1920;
	settings.height = 1080;
	settings.windowMode = OF_WINDOW;
	settings.multiMonitorFullScreen = true;
	
	ofCreateWindow(settings);			// <-------- setup the GL context

	// this kicks off the running of my app
	// can be OF_WINDOW or OF_FULLSCREEN
	// pass in width and height too:
	ofRunApp(new ofApp());

}
