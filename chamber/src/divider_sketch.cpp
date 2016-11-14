//
//  divider_sketch.cpp
//  chamber
//
//  Created by Ovis aries on 2016/08/09.
//
//

#include "divider_sketch.h"

using namespace divider;

void sketch::setup()
{
	ofFbo::Settings setting;
	
	setting.width = screen_width;
	setting.height = screen_height;
	setting.numSamples = 8;
	
	buffer_dst.allocate(setting);
	buffer.allocate(setting);
	fx.setup(&buffer_dst, setting);
	
	initShader();
	
	pal.addPreset("test"	, 0x1f271b, 0x19647e, 0xee964b, 0xf4d35e, 0x28AFB0);
	pal.addPreset("autumn"	, 0x754f44, 0xec7357, 0xfdd692, 0xfbffb9, 0xe1ce7a);
	pal.addPreset("cmg"		, 0x3D405B, 0xE0390B, 0xDAE0F2, 0xEFE9E7, 0xF5F0F6);
	pal.addPreset("snow"	, 0x353535, 0x284B63, 0x3C6E71, 0xD9D9D9, 0xFFFFFF);
	pal.addPreset("DeepVio"	, 0x4A0D67, 0x473198, 0xADFC92, 0x9BF3F0, 0xDAFFED);
	pal.addPreset("seaside"	, 0x3581B8, 0xFCB07E, 0xD4E09B, 0xCBDFBD, 0xF6F4D2);
	pal.addPreset("country" , 0x0B0500, 0xFE5E41, 0x00A878, 0xF3C178, 0xD8F1A0);
	pal.addPreset("jet"		, 0x2A1F2D, 0x3B2C35, 0x5B6C5D, 0x59C9A5, 0x56E39F);
	pal.addPreset("cream"	, 0x493657, 0xCE7DA5, 0xFFD1BA, 0xBEE5BF, 0xDFF3E3);
	pal.addPreset("plum"	, 0x66101F, 0x855A5C, 0x8A8E91, 0xB8D4E3, 0xEEFFDB);
	pal.addPreset("smoke"	, 0x0C120C, 0xC20114, 0x8A8E91, 0xC7D6D5, 0xECEBF3);
	pal.addPreset("smoke2"	, 0x0C120C, 0x10D378, 0x8A8E91, 0xC7D6D5, 0xECEBF3);
	pal.addPreset("smoke3"	, 0x0C120C, 0x6E00FF, 0x8A8E91, 0xC7D6D5, 0xECEBF3);
	pal.addPreset("lavender", 0x7E3F8F, 0x81559B, 0x8C86AA, 0xB2EF9B, 0xDAFF7D);
	pal.addPreset("puce"	, 0x4D243D, 0xBCD39C, 0xB1F8F2, 0xFFFC99, 0xECDCC9);
	pal.addPreset("cadet"	, 0x201E50, 0x525B76, 0x869D96, 0x1282A2, 0xECFEAA);
	pal.addPreset("indigo"	, 0x1F271B, 0x540D6E, 0xEE4266, 0xFFD23F, 0xF3FCF0);
	pal.addPreset("ivory"	, 0x791E94, 0x407899, 0xEE4266, 0x41D3BD, 0xFFFFF2);
	pal.addPreset("arsenic"	, 0x403D58, 0xFC7753, 0x41D3BD, 0xDBD56E, 0xF2EFEA);
	pal.addPreset("crayola"	, 0x483C46, 0x3C6E71, 0xF4743B, 0x70AE6E, 0xBEEE62);
	pal.addPreset("opera"	, 0x240115, 0xDE3C4B, 0xC884A6, 0xE7BBE3, 0x84FFD2);
	pal.addPreset("cyan"	, 0x23001E, 0x1D918D, 0xFF5151, 0xFFBA49, 0xD7DDE2);
	//	pal.addPreset(""	, 0x, 0x, 0x, 0x, 0x);
	currentPalette = "cmg";
	
	fx.getfxUnit(KSMR_FRAGFX_NOISE)->bEnable = true;
	fx.getfxUnit(KSMR_FRAGFX_NOISE)->u_Volume = 0.07;
	
	ofDirectory dir;
	dir.listDir(ofToDataPath("videos"));
	
	for (int i = 0;i < dir.getFiles().size();i++)
	{
		string path = dir.getFiles()[i].getAbsolutePath();
		if (path.find(".mp4") != string::npos ||
			path.find(".mov") != string::npos) addVideo(path);
	}
	
	currentVid = video[0];
	currentVid->play();
	
	camera_pos.set(0.0, 0.0, 1500.0);
	camera_base.set(0.0, 0.0, 1500.0);
	camera_targ.set(0.0, 0.0, 1500.0);
	
	track.setup();
}

void sketch::addVideo(string path)
{
	video.push_back(ofPtr<ofVideoPlayer>(new ofVideoPlayer()));
	video.back()->load(path);
	video.back()->setVolume(0.0);
	video.back()->setPosition(0.0);
}

void sketch::drawVideoSelector(int x, int y)
{
	ofSetColor(255);
	ofPushMatrix();
	ofTranslate(x, y);
	
	currentVid->draw(0, 0, 640, 360);
	
	for (int i = 0;i < video.size();i++)
	{
		ofRectangle rct = ofRectangle((i % 2) * 320, 360 + i / 2 * 180,
									  320, 180);
		video[i]->draw(rct);
		
		if (ofGetMousePressed())
		{
			if (rct.inside(ofGetMouseX() - x, ofGetMouseY() - y))
			{
				if (currentVid != video[i])
				{
					currentVid->stop();
					currentVid = video[i];
					video[i]->play();
					video[i]->setPosition(ofRandom(0, 0.8));
				}
			}
		}
	}
	
	ofPopMatrix();
}

void sketch::drawColorSelector(int x, int y)
{
	
	//Palette selector
	map<string, colorPreset>::iterator it = pal.presets.begin();
	int counter = 0;
	while (it != pal.presets.end())
	{
		colorPreset & cl = (*it).second;
		
		for (int i = 0;i < 5;i++)
		{
			ofSetColor(cl.palette[i]);
			ofDrawRectangle(x + i * 20, counter * 25 + y, 20, 20);
		}
		ofSetColor(255);
		ofDrawBitmapStringHighlight((*it).first, x + 110, y + counter * 25 + 16);
		
		if (ofRectangle(x, counter * 25 + y, 100, 20).inside(ofGetMouseX(), ofGetMouseY()))
		{
			if (ofGetMousePressed())
			{
				currentPalette = (*it).first;				
			}
			
			colorPreset p = pal.presets.find(currentPalette)->second;
			cout << "Swaped : (\"" << currentPalette << "\", ";
			for (int i = 0;i < 5;i++)
			{
				cout << "0x" << std::setfill('0') << std::hex <<
				std::setw(2) << int(ofColor(p.palette[4 - i]).r) <<
				std::setw(2) << int(ofColor(p.palette[4 - i]).g) <<
				std::setw(2) << int(ofColor(p.palette[4 - i]).b) <<
				(i == 4 ? ")" : ", ");
			}
			cout << endl << std::dec;
		}
		
		counter++;
		++it;
	}
}

void sketch::colorShuffle()
{
	map<string, colorPreset>::iterator it = pal.presets.begin();
	int counter = 0;
	int targ = int(ofRandom(100)) % pal.presets.size();
	
	while (it != pal.presets.end())
	{
		if (targ == counter)
		{
			if (currentPalette == (*it).first)
			{
				//最初から
				targ = int(ofRandom(100)) % pal.presets.size();
				it = pal.presets.begin();
				counter = 0;
			}
			else
			{
				currentPalette = (*it).first;
			}
		}
		
		counter++;
		++it;
	}
}

void sketch::update()
{
	dm::measureTool::getInstance().setStartPoint("video");
	currentVid->update();
	if (currentVid->isFrameNew()) track.update(currentVid->getPixels());
	dm::measureTool::getInstance().setEndPoint("video");
}

void sketch::begin()
{
	buffer.begin();
	camera.begin();
	camera.lookAt(ofVec3f(0.0));
	camera.setPosition(camera_pos);
	
	if (b3D)
	{
		camera_targ.set(300 , -700, 500);
		rotation_targ = fmod(ofGetFrameNum() / 2.0, 360.0);
	}else{
		camera_targ.set(0 , 0, 1500);
		rotation_targ = 0;
	}
	if (b3DLsat != b3D.get())
	{
		camera_base = camera_pos;
		transCount = 0;
	}
	b3DLsat = b3D;
	
	float inter = ofxeasing::map_clamp(transCount, 0, 150, 0.0, 1.0, ofxeasing::cubic::easeInOut);
	camera_pos = camera_base.getInterpolated(camera_targ, inter);
	rotation = ofLerp(rotation, rotation_targ, inter);
	transCount++;
}

void sketch::end()
{
	camera.end();
	track.draw();
	buffer.end();
}

void sketch::genShading()
{
	fx.getfxUnit(KSMR_FRAGFX_FRINGE)->u_Volume = 0.03;
	fx.getfxUnit(KSMR_FRAGFX_WATER)->u_Volume = 0.5;
	fx.getfxUnit(KSMR_FRAGFX_VERTSLIDE)->u_Volume = 13043.0;
	fx.getfxUnit(KSMR_FRAGFX_VERTNOISE)->u_Volume = fx_mix > 0.5 ? 2.0 : 1.0;
	
	fx.getfxUnit(KSMR_FRAGFX_FRINGE)->bEnable		= ofRandomuf() < fx_mix || fx_mix > 0.3;
	fx.getfxUnit(KSMR_FRAGFX_TEXCHIP)->bEnable		= ofRandomuf() / 5.0 < fx_mix;
	fx.getfxUnit(KSMR_FRAGFX_VERTNOISE)->bEnable	= ofRandomuf() * 2.0 < fx_mix;
	fx.getfxUnit(KSMR_FRAGFX_VERTSLIDE)->bEnable	= ofRandomuf() * 3.0 < fx_mix;
	fx.getfxUnit(KSMR_FRAGFX_WATER)->bEnable		= ofRandomuf() * 2.0 < fx_mix;
	fx.getfxUnit(KSMR_FRAGFX_INVERT)->bEnable		= (ofRandomuf() * 3.0 < fx_mix) && fx_mix > 0.9;
	
	
	GLfloat verts[] = {0.0, 0.0, screen_width, 0.0, 0.0, screen_height, screen_width, screen_height};
	
	buffer_dst.begin();
	ofClear(0, 0, 0, 255);
	ofSetColor(255);
	
	shader.begin();
	shader.setUniformTexture("tex", buffer.getTexture(), 0);
	if (currentVid->isFrameNew())
		shader.setUniformTexture("video", currentVid->getTexture(), 1);
	shader.setUniform4f("pl_1", pal.getColorArray(currentPalette)[0]);
	shader.setUniform4f("pl_2", pal.getColorArray(currentPalette)[1]);
	shader.setUniform4f("pl_3", pal.getColorArray(currentPalette)[2]);
	shader.setUniform4f("pl_4", pal.getColorArray(currentPalette)[3]);
	shader.setUniform4f("pl_5", pal.getColorArray(currentPalette)[4]);
	
	glEnableClientState(GL_VERTEX_ARRAY);
	glEnableClientState(GL_TEXTURE_COORD_ARRAY);
	
	glVertexPointer		(2, GL_FLOAT, 0, verts);
	glTexCoordPointer	(2, GL_FLOAT, 0, verts);
	
	glDrawArrays(GL_TRIANGLE_STRIP, 0, 4);
	
	glDisableClientState(GL_TEXTURE_COORD_ARRAY);
	glDisableClientState(GL_VERTEX_ARRAY);
	
	shader.end();
	
//	ovr_grid();
	
	for (int i = 0;i < 1920;i+=150)
	{
		for (int j = 0;j < 1080;j+=150)
		{
			ofPushMatrix();
			ofTranslate(i, j);
			ofDrawLine(-5, 0, 5, 0);
			ofDrawLine(0, -5, 0, 5);
			ofPopMatrix();
		}
	}
	
	buffer_dst.end();
	
	fx.applyFx();
	
}

void sketch::initShader()
{
	string paletten = STRINGIFY(
								uniform sampler2DRect tex;
								uniform sampler2DRect video;
								
								uniform float hue;
								uniform float sat;
								uniform vec4 pl_1;
								uniform vec4 pl_2;
								uniform vec4 pl_3;
								uniform vec4 pl_4;
								uniform vec4 pl_5;
								
								void main(void)
								{
									vec2 st = gl_TexCoord[0].st;
									vec4 palette[5];
									
									palette[0] = pl_1;//base
									palette[1] = pl_2;
									palette[2] = pl_3;//accent
									palette[3] = pl_4;
									palette[4] = pl_5;
									
									vec4 col = texture2DRect(tex, st);
									vec4 vcl = texture2DRect(video, st / 1.5);
									vec4 dst;
									
									if ((int(min(col.r * 5.0, 4.0)) == 1))
										col += vcl;

									float gray = (col.r + col.g + col.b) / 3.0;
									
									float index = min(gray * 5.0, 4.0);
									float mixer = mod(index, 1.0);
									
									dst = mix(palette[int(index)],
											  palette[int(mod(index + 1.0, 5.0))],
											  mixer);
									
									gl_FragColor = dst;
								}
	
	);
	
	string src = STRINGIFY(
						   uniform sampler2DRect tex;
						   
						   uniform float hue;
						   uniform float sat;
						   uniform vec4 pl_1;
						   uniform vec4 pl_2;
						   uniform vec4 pl_3;
						   uniform vec4 pl_4;
						   uniform vec4 pl_5;
						   
						   void main(void)
						   {
							   vec4 palette[5];
							   palette[0] = pl_1;
							   palette[1] = pl_2;
							   palette[2] = pl_3;
							   palette[3] = pl_4;
							   palette[4] = pl_5;
							   
							   vec4 hsb;
							   vec4 dst;
							   vec2 st = gl_TexCoord[0].st;
							   vec4 col = texture2DRect(tex, st);
							   
							   hsb.r = mod(col.r*5.3, 1.0);
							   hsb.g = mod(col.r*3.3, 0.5) + 0.5;
							   hsb.b = 1.0;
							   
							   dst.rgb = vec3(hsb.b, hsb.b, hsb.b);
							   
							   if (hsb.g > 0.0)
							   {
								   int i = int(hsb.r * 6.0);
								   float f = hsb.r * 6.0 - float(i);
								   if (i == 0)
								   {
									   dst.g *= 1.0 - hsb.g * (1.0 - f);
									   dst.b *= 1.0 - hsb.g;
								   }
								   if (i == 1)
								   {
									   dst.r *= 1.0 - hsb.g * f;
									   dst.b *= 1.0 - hsb.g;
								   }
								   if (i == 2)
								   {
									   dst.r *= 1.0 - hsb.g;
									   dst.b *= 1.0 - hsb.g * (1.0 - f);
								   }
								   if (i == 3)
								   {
									   dst.r *= 1.0 - hsb.g;
									   dst.g *= 1.0 - hsb.g * f;
								   }
								   if (i == 4)
								   {
									   dst.r *= 1.0 - hsb.g * (1.0 - f);
									   dst.g *= 1.0 - hsb.g;
								   }
								   if (i == 5)
								   {
									   dst.g *= 1.0 - hsb.g;
									   dst.b *= 1.0 - hsb.g * f;
								   }
							   }
							   
							   dst.a = 1.0;
							   
							   gl_FragColor = dst;
						   }
						   
						   );
	
	shader.setupShaderFromSource(GL_FRAGMENT_SHADER, paletten);
	shader.linkProgram();

}


void sketch::ovr_grid()
{
	static bool bGrid = false;
	static vector<ofVec2f> vts;
	
	if (!bGrid)
	{
		for (int i = 0;i < 1920;i+=20)
		{
			vts.push_back(ofVec2f(i, 0));
			vts.push_back(ofVec2f(i, 1080));
		}
		for (int i = 0;i < 1080;i+=20)
		{
			vts.push_back(ofVec2f(0, i));
			vts.push_back(ofVec2f(1920, i));
		}
		bGrid = true;
	}
	
	ofSetColor(255, 50);
	glEnableClientState(GL_VERTEX_ARRAY);
	glVertexPointer(2, GL_FLOAT, 0, &vts[0]);
	glDrawArrays(GL_LINES, 0, vts.size());
	glDisableClientState(GL_VERTEX_ARRAY);
}
