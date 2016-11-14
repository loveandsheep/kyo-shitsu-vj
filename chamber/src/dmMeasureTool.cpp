//
//  dmMeasureTool.cpp
//  repuboo_circus_main
//
//  Created by Ovis aries on 2016/10/09.
//
//

#include "dmMeasureTool.h"

using namespace dm;

void measureTool::setStartPoint(string label)
{
	map<string, measureUnit>::iterator it = units.find(label);
	measureUnit *un;
	
	if (it == units.end())
	{
		pair<string, measureUnit> newUnit = pair<string, measureUnit>();
		newUnit.first = label;
		newUnit.second.label = label;
		un = &newUnit.second;
		units.insert(newUnit);
	}
	else
	{
		un = &(*it).second;
	}
	
	un->st_time = ofGetElapsedTimeMicros();
}

void measureTool::setEndPoint(string label)
{
	uint64_t tm = ofGetElapsedTimeMicros();
	map<string, measureUnit>::iterator it = units.find(label);
	
	if (it == units.end())
	{
		ofLogWarning("measureUnit", label + " not called startPoint");
	}
	else
	{
		measureUnit & un = (*it).second;
		un.log.push_back(tm - un.st_time);
		
		while (un.log.size() > logLength)
		{
			un.log.erase(un.log.begin());
		}
		
		un.timeMax = 0;
		for (int i = 0;i < un.log.size();i++)
		{
			un.timeMax = MAX(un.log[i], un.timeMax);
		}
	}
}

void measureTool::draw()
{
	map<string, measureUnit>::iterator it = units.begin();
	int graph_height = 50;
	int graph_width = 300;
	float x_step = graph_width / float(logLength);
	int cnt = 0;
	
	ofPushStyle();
	while (it != units.end())
	{
		ofPushMatrix();

		measureUnit &un = (*it).second;
		ofTranslate(0, cnt * (graph_height + 30));
		
		ofSetColor(0, 200);
		ofDrawRectangle(0, -20, graph_width, graph_height + 20);

		ofSetColor(255);
		ofDrawBitmapString(un.label + ":" + ofToString(un.log.back()), 0, 0);
		ofDrawBitmapString("max : " + ofToString(un.timeMax), 0, 17);
		
		vector<ofVec2f> graph;
		graph.assign(un.log.size(), ofVec2f());
		
		
		for (int i = 0;i < un.log.size();i++)
		{
			graph[i].set(graph_width - x_step * (un.log.size() - i),
						 ofMap(un.log[i], 0, MAX(1, un.timeMax), graph_height, 0));
		}
		
		ofSetColor(0, 255, 100);
		glEnableClientState(GL_VERTEX_ARRAY);
		glVertexPointer(2, GL_FLOAT, 0, &graph[0]);
		glDrawArrays(GL_LINE_STRIP, 0, graph.size());
		glDisableClientState(GL_VERTEX_ARRAY);
		
		cnt++;
		++it;
		
		ofPopMatrix();
	}
	ofPopStyle();
}

void measureTool::setLogLength(int l)
{
	logLength = MAX(0, l);
}

int measureTool::getLogLength()
{
	return logLength;
}
