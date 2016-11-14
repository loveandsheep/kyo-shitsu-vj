//
//  dmMeasureTool.hpp
//  repuboo_circus_main
//
//  Created by Ovis aries on 2016/10/09.
//
//

#ifndef dmMeasureTool_hpp
#define dmMeasureTool_hpp

#include "ofMain.h"

namespace dm {
	
	class measureUnit{
	public:
		string label;
		uint64_t st_time = 0;
		uint64_t timeMax = 0;
		vector<uint64_t> log;
	};
	
	class measureTool{
	public:
		void setStartPoint(string label);
		void setEndPoint(string label);
		
		map<string, measureUnit> units;
		
		void draw();
		void setLogLength(int l);
		int getLogLength();
		
	protected:
		int logLength = 150;
	
		/* Singleton */
	private:
		measureTool() = default;
		~measureTool() = default;
		
	public:
		measureTool(const measureTool&) = delete;
		measureTool& operator=(const measureTool&) = delete;
		measureTool(measureTool&&) = delete;
		measureTool& operator=(measureTool&&) = delete;
		
		static measureTool& getInstance(void)
		{
			static measureTool inst;
			return inst;
		}
	};
 
}

#endif /* dmMeasureTool_hpp */
