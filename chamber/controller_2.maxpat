{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 7,
			"minor" : 2,
			"revision" : 2,
			"architecture" : "x86",
			"modernui" : 1
		}
,
		"rect" : [ -1587.0, 77.0, 1001.0, 825.0 ],
		"bgcolor" : [ 0.22469, 0.610152, 0.577364, 1.0 ],
		"editing_bgcolor" : [ 0.616069, 0.738724, 0.598772, 1.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "\bkusamura",
		"subpatcher_template" : "",
		"boxes" : [ 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-167",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.333313, 162.200012, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.666626, 162.200012, 84.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Logo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-166",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.799988, 303.0, 41.0, 22.0 ],
					"style" : "",
					"text" : "r logo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-165",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1134.625, 352.800018, 43.0, 22.0 ],
					"style" : "",
					"text" : "s logo"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-163",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 741.799988, 334.800018, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.666626, 184.200012, 84.0, 84.0 ],
					"size" : 1.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-164",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 741.799988, 380.600006, 84.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /logo"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-158",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 505.0, 292.0, 31.0, 22.0 ],
					"style" : "",
					"text" : "+ 0."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 901.0, 614.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 223.000015, 594.0, 32.0, 20.0 ],
					"style" : "",
					"text" : "Circl"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 852.0, 614.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 172.250015, 594.0, 32.0, 20.0 ],
					"style" : "",
					"text" : "Tri"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-61",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 802.0, 614.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.500015, 594.0, 32.0, 20.0 ],
					"style" : "",
					"text" : "Line"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 754.0, 614.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 70.750008, 594.0, 32.0, 20.0 ],
					"style" : "",
					"text" : "Split"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-81",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 701.5, 614.0, 32.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 594.0, 32.0, 20.0 ],
					"style" : "",
					"text" : "Hex"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-87",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 687.0, 747.0, 47.0, 22.0 ],
					"style" : "",
					"text" : "s toOF"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-88",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 687.0, 723.0, 99.0, 22.0 ],
					"style" : "",
					"text" : "prepend /objects"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-101",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 687.0, 699.0, 61.0, 22.0 ],
					"style" : "",
					"text" : "pak i i i i i"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-111",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 886.0, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 219.000015, 616.0, 48.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-117",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 836.25, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 169.250015, 616.0, 48.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-118",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 786.5, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 119.500015, 616.0, 48.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-119",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 736.75, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 69.750008, 616.0, 48.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-120",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 687.0, 648.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 616.0, 48.0, 48.0 ],
					"style" : ""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-116",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 32.799988, 58.900055, 70.0, 22.0 ],
					"style" : "",
					"text" : "r autoColor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-115",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 135.799988, 307.0, 56.0, 22.0 ],
					"style" : "",
					"text" : "r withpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-114",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1131.75, 231.0, 58.0, 22.0 ],
					"style" : "",
					"text" : "s withpat"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-113",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1038.75, 231.0, 72.0, 22.0 ],
					"style" : "",
					"text" : "s autoColor"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-112",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1020.625, 206.799988, 79.0, 22.0 ],
					"style" : "",
					"text" : "s autoMotion"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-108",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1020.625, 147.0, 61.0, 22.0 ],
					"style" : "",
					"text" : "route 127"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-106",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 1020.625, 178.199997, 164.0, 22.0 ],
					"style" : "",
					"text" : "route 9 10 11 12 25 26 27 28"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-103",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1020.625, 120.199982, 36.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "pack"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-100",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 1020.625, 91.399994, 43.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "buddy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-99",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1115.625, 326.0, 57.0, 22.0 ],
					"style" : "",
					"text" : "s master"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-98",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 627.0, 291.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r master"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 1096.625, 299.600006, 57.0, 22.0 ],
					"style" : "",
					"text" : "s fxBase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 472.199982, 117.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "r fxBase"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-95",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 940.625, 308.600006, 49.0, 22.0 ],
					"style" : "",
					"text" : "* 3000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-94",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 253.0, 53.400055, 79.0, 22.0 ],
					"style" : "",
					"text" : "r AutoColMin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-93",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 207.600021, 11.0, 83.0, 22.0 ],
					"style" : "",
					"text" : "r AutoColMax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-92",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 921.625, 393.0, 55.0, 22.0 ],
					"style" : "",
					"text" : "* 10000."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-91",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 934.625, 189.0, 41.0, 22.0 ],
					"style" : "",
					"text" : "/ 127."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-86",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 940.625, 334.600006, 81.0, 22.0 ],
					"style" : "",
					"text" : "s AutoColMin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 921.625, 420.200012, 85.0, 22.0 ],
					"style" : "",
					"text" : "s AutoColMax"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-83",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 902.625, 362.0, 80.0, 22.0 ],
					"style" : "",
					"text" : "s motVolume"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 1096.625, 273.0, 171.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "route 41 42 43 44 45 46 47 48"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "newobj",
					"numinlets" : 9,
					"numoutlets" : 9,
					"outlettype" : [ "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 902.625, 273.0, 171.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "route 21 22 23 24 25 26 27 28"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 902.625, 231.0, 49.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "pack i f"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 902.625, 147.0, 43.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "buddy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 902.625, 109.0, 40.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "ctlin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "int", "int" ],
					"patching_rect" : [ 1020.625, 49.399994, 43.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "notein"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgcolor2" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"bgfillcolor_color1" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-9",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 241.0, 138.800003, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 252.666626, 113.000061, 50.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "294"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgcolor2" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgfillcolor_angle" : 270.0,
					"bgfillcolor_autogradient" : 0.0,
					"bgfillcolor_color" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"bgfillcolor_color1" : [ 0.231311, 0.469254, 0.342072, 1.0 ],
					"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
					"bgfillcolor_proportion" : 0.39,
					"bgfillcolor_type" : "color",
					"gradient" : 1,
					"id" : "obj-11",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 138.800003, 50.0, 22.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 144.333313, 113.000061, 50.0, 22.0 ],
					"style" : "\bkusamura",
					"text" : "2786"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-73",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 615.200012, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.999939, 415.899963, 96.0, 20.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-74",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 600.700012, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.999939, 401.399994, 96.0, 20.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-75",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 584.200012, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.999939, 384.899994, 96.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "大人は信じて"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-76",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 567.700012, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.999939, 368.399994, 96.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "二人セゾン"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-77",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 551.700012, 94.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 259.999939, 352.399994, 96.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "個人PV"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-78",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 538.200012, 89.0, 32.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 259.999939, 338.899994, 90.0, 32.0 ],
					"style" : "\bkusamura",
					"text" : "語るなら未来を"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-79",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 495.200012, 522.200012, 88.0, 33.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 259.999939, 322.899994, 89.0, 33.0 ],
					"style" : "\bkusamura",
					"text" : "裸足でSummer"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-80",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 479.200012, 522.200012, 109.799988, 114.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 243.999954, 322.899994, 111.166672, 114.0 ],
					"size" : 7,
					"style" : "\bkusamura",
					"value" : 1
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-72",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 479.200012, 643.200012, 90.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /video"
				}

			}
, 			{
				"box" : 				{
					"bubblesize" : 15,
					"id" : "obj-71",
					"maxclass" : "preset",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "preset", "int", "preset", "int" ],
					"patching_rect" : [ 184.0, 341.600006, 100.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 344.999939, 184.200012, 156.0, 43.200001 ],
					"preset_data" : [ 						{
							"number" : 1,
							"data" : [ 5, "obj-67", "toggle", "int", 1, 5, "obj-10", "toggle", "int", 1, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 375.0, 5, "obj-36", "dial", "float", 4250.0, 5, "obj-37", "dial", "float", 0.45, 5, "obj-38", "dial", "float", 0.0, 5, "obj-40", "dial", "float", 0.0, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 2, 5, "obj-16", "radiogroup", "int", 3, 5, "obj-50", "gswitch", "int", 0, 5, "obj-51", "toggle", "int", 0, 5, "obj-80", "radiogroup", "int", 0, 5, "obj-120", "toggle", "int", 1, 5, "obj-119", "toggle", "int", 1, 5, "obj-118", "toggle", "int", 1, 5, "obj-117", "toggle", "int", 1, 5, "obj-111", "toggle", "int", 1, 5, "<invalid>", "toggle", "int", 1, 5, "obj-163", "dial", "float", 0.0 ]
						}
, 						{
							"number" : 2,
							"data" : [ 5, "obj-67", "toggle", "int", 1, 5, "obj-10", "toggle", "int", 1, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 150.0, 5, "obj-36", "dial", "float", 3500.0, 5, "obj-37", "dial", "float", 0.275, 5, "obj-38", "dial", "float", 0.1, 5, "obj-40", "dial", "float", 0.1, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 1, 5, "obj-16", "radiogroup", "int", 4, 5, "obj-50", "gswitch", "int", 1, 5, "obj-51", "toggle", "int", 1, 5, "obj-80", "radiogroup", "int", 0, 5, "obj-120", "toggle", "int", 1, 5, "obj-119", "toggle", "int", 1, 5, "obj-118", "toggle", "int", 1, 5, "obj-117", "toggle", "int", 1, 5, "obj-111", "toggle", "int", 1, 5, "<invalid>", "toggle", "int", 1, 5, "obj-163", "dial", "float", 0.0 ]
						}
, 						{
							"number" : 8,
							"data" : [ 5, "obj-67", "toggle", "int", 1, 5, "obj-10", "toggle", "int", 1, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 294.0, 5, "obj-36", "dial", "float", 2786.0, 5, "obj-37", "dial", "float", 0.465476, 5, "obj-38", "dial", "float", 0.040476, 5, "obj-40", "dial", "float", 0.040476, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 6, 5, "obj-16", "radiogroup", "int", 6, 5, "obj-50", "gswitch", "int", 1, 5, "obj-51", "toggle", "int", 1, 5, "obj-80", "radiogroup", "int", 1, 5, "obj-120", "toggle", "int", 1, 5, "obj-119", "toggle", "int", 1, 5, "obj-118", "toggle", "int", 1, 5, "obj-117", "toggle", "int", 1, 5, "obj-111", "toggle", "int", 1, 5, "obj-163", "dial", "float", 0.0 ]
						}
, 						{
							"number" : 9,
							"data" : [ 5, "obj-67", "toggle", "int", 1, 5, "obj-10", "toggle", "int", 1, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 1054.0, 5, "obj-36", "dial", "float", 9964.0, 5, "obj-37", "dial", "float", 0.45, 5, "obj-38", "dial", "float", 0.011905, 5, "obj-40", "dial", "float", 0.011905, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 1, 5, "obj-16", "radiogroup", "int", 1, 5, "obj-50", "gswitch", "int", 0, 5, "obj-51", "toggle", "int", 0, 5, "obj-80", "radiogroup", "int", 2, 5, "obj-120", "toggle", "int", 1, 5, "obj-119", "toggle", "int", 0, 5, "obj-118", "toggle", "int", 1, 5, "obj-117", "toggle", "int", 1, 5, "obj-111", "toggle", "int", 1, 5, "obj-163", "dial", "float", 0.333333 ]
						}
, 						{
							"number" : 16,
							"data" : [ 5, "obj-67", "toggle", "int", 0, 5, "obj-10", "toggle", "int", 0, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 1054.0, 5, "obj-36", "dial", "float", 9370.0, 5, "obj-37", "dial", "float", 1.0, 5, "obj-38", "dial", "float", 0.0, 5, "obj-40", "dial", "float", 0.0, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 0, 5, "obj-16", "radiogroup", "int", 1, 5, "obj-50", "gswitch", "int", 0, 5, "obj-51", "toggle", "int", 0, 5, "obj-80", "radiogroup", "int", 2, 5, "obj-120", "toggle", "int", 1, 5, "obj-119", "toggle", "int", 0, 5, "obj-118", "toggle", "int", 1, 5, "obj-117", "toggle", "int", 1, 5, "obj-111", "toggle", "int", 1, 5, "obj-163", "dial", "float", 0.0 ]
						}
, 						{
							"number" : 24,
							"data" : [ 5, "obj-67", "toggle", "int", 1, 5, "obj-10", "toggle", "int", 1, 5, "obj-55", "toggle", "int", 0, 5, "obj-35", "dial", "float", 150.0, 5, "obj-36", "dial", "float", 3500.0, 5, "obj-37", "dial", "float", 0.275, 5, "obj-38", "dial", "float", 0.1, 5, "obj-40", "dial", "float", 0.1, 5, "obj-44", "dial", "float", 1.0, 5, "obj-1", "radiogroup", "int", 1, 5, "obj-16", "radiogroup", "int", 4, 5, "obj-50", "gswitch", "int", 1, 5, "obj-51", "toggle", "int", 1, 5, "obj-80", "radiogroup", "int", 1 ]
						}
 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-70",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 823.399963, 83.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 293.899994, 87.166672, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Pattern"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-69",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 236.800003, 496.799988, 32.0, 22.0 ],
					"style" : "kusamura",
					"text" : "% 7"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-60",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 349.600006, 496.799988, 32.0, 22.0 ],
					"style" : "kusamura",
					"text" : "% 7"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-59",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 437.800018, 49.70005, 37.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.600037, 470.900085, 57.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "WithPat"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-56",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 394.400024, 53.400055, 37.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.299988, 470.900085, 79.366638, 20.0 ],
					"style" : "\bkusamura",
					"text" : "ColorAuto"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 349.600006, 471.200012, 75.0, 22.0 ],
					"style" : "kusamura",
					"text" : "random 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 236.800003, 471.200012, 75.0, 22.0 ],
					"style" : "kusamura",
					"text" : "random 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-51",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.799988, 348.800018, 26.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 196.600037, 495.000061, 83.0, 83.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"color" : [ 0.6, 0.780392, 0.721569, 1.0 ],
					"id" : "obj-50",
					"int" : 1,
					"maxclass" : "gswitch",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 135.799988, 380.600006, 41.0, 32.0 ],
					"style" : "kusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-28",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.183334, 567.700012, 78.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.383339, 368.399994, 62.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "None"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-34",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.183334, 551.700012, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.383339, 352.399994, 63.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "TriGrid"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-41",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.183334, 538.200012, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.383339, 338.899994, 64.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Cross"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-45",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 255.183334, 522.200012, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 38.383339, 322.899994, 62.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Grid"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-16",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 236.800003, 522.200012, 87.166672, 114.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 322.899994, 87.166672, 114.0 ],
					"size" : 7,
					"style" : "\bkusamura",
					"value" : 2
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 615.200012, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 415.899994, 79.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Rectnoise"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-8",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 600.700012, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 401.399994, 80.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "English"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-7",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 584.200012, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 384.899994, 80.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Kanji"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-6",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 567.700012, 78.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 368.399994, 78.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Number"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-5",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 551.700012, 80.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 352.399994, 80.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "LinePlot"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 538.200012, 79.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 338.899994, 79.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Delaunay"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-63",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 365.600006, 522.200012, 78.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 137.333313, 322.899994, 78.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "None"
				}

			}
, 			{
				"box" : 				{
					"disabled" : [ 0, 0, 0, 0, 0, 0, 0 ],
					"id" : "obj-1",
					"itemtype" : 0,
					"maxclass" : "radiogroup",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 349.600006, 522.200012, 87.166672, 114.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 121.333321, 322.899994, 100.166672, 114.0 ],
					"size" : 7,
					"style" : "\bkusamura",
					"value" : 5
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-48",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 349.600006, 643.200012, 99.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /optflow"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 236.800003, 643.200012, 100.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /overlay"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"blinkcolor" : [ 0.6, 0.780392, 0.721569, 1.0 ],
					"id" : "obj-46",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 185.0, 342.800018, 24.0, 24.0 ],
					"style" : "kusamura"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-44",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 626.299988, 334.800018, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.333321, 184.200012, 84.0, 84.0 ],
					"size" : 1.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-43",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 53.400055, 37.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 260.666626, 137.000061, 42.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Min"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-42",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 304.0, 26.500069, 57.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 151.666626, 137.000061, 35.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Max"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-40",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 472.199982, 153.399994, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 184.200012, 84.0, 84.0 ],
					"size" : 1.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 472.199982, 198.0, 69.0, 22.0 ],
					"style" : "kusamura",
					"text" : "s fxVolume"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-38",
					"maxclass" : "dial",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 518.0, 331.0, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 63.900002, 201.800018, 22.400002, 22.400002 ],
					"size" : 1.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"floatoutput" : 1,
					"id" : "obj-37",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 377.0, 334.800018, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 51.000061, 84.0, 84.0 ],
					"size" : 1.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 207.600021, 82.399994, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.333321, 51.000061, 84.0, 84.0 ],
					"size" : 10000.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "dial",
					"mode" : 2,
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 253.0, 82.399994, 40.0, 40.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 235.666626, 51.000061, 84.0, 84.0 ],
					"size" : 3000.0,
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-33",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 599.400024, 98.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.333321, 26.900084, 84.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Auto-Color"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-32",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 785.599976, 81.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 470.900085, 81.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Auto-geo"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-31",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 736.0, 84.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 127.333321, 162.200012, 84.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Master"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-30",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 682.400024, 83.0, 20.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 162.200012, 84.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Fx Volume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 0.0 ],
					"id" : "obj-29",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 46.600006, 634.400024, 84.0, 33.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 26.900084, 88.0, 20.0 ],
					"style" : "\bkusamura",
					"text" : "Geom Volume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-214",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 570.0, 257.799988, 35.0, 22.0 ],
					"style" : "kusamura",
					"text" : "* 0.7"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-209",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 626.299988, 380.600006, 98.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /master"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-90",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 292.0, 67.0, 22.0 ],
					"style" : "kusamura",
					"text" : "r fxVolume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-89",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.0, 303.0, 78.0, 22.0 ],
					"style" : "kusamura",
					"text" : "r motVolume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-66",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.0, 303.0, 77.0, 22.0 ],
					"style" : "kusamura",
					"text" : "r autoMotion"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-14",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 544.0, 81.399994, 86.0, 22.0 ],
					"style" : "kusamura",
					"text" : "r colorChange"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 570.0, 198.0, 57.0, 22.0 ],
					"style" : "kusamura",
					"text" : "pipe 140"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 544.0, 108.399994, 76.0, 76.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 325.999939, 51.000061, 23.0, 23.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"checkedcolor" : [ 0.6, 0.780392, 0.721569, 1.0 ],
					"id" : "obj-55",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 570.0, 229.199997, 24.0, 24.0 ],
					"style" : "kusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 185.0, 677.799988, 47.0, 22.0 ],
					"style" : "kusamura",
					"text" : "s toOF"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 518.0, 380.600006, 71.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /fx"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 377.0, 380.600006, 130.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /auto_volume"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 284.0, 380.600006, 85.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /auto"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 185.0, 380.600006, 87.0, 22.0 ],
					"style" : "kusamura",
					"text" : "prepend /color"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 284.0, 331.0, 26.0, 26.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 20.00001, 495.000061, 83.0, 83.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-26",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.799988, 27.399994, 150.0, 20.0 ],
					"style" : "kusamura",
					"text" : "自動カラー"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-22",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 32.799988, 150.399994, 88.0, 22.0 ],
					"style" : "kusamura",
					"text" : "s colorChange"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-67",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 32.799988, 91.399994, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 107.299988, 495.000061, 83.0, 83.0 ],
					"style" : "\bkusamura"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-65",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 115.799988, 119.399994, 41.0, 22.0 ],
					"style" : "kusamura",
					"text" : "+ 100"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-64",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 115.799988, 91.399994, 81.0, 22.0 ],
					"style" : "kusamura",
					"text" : "random 3000"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-62",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 32.799988, 119.399994, 65.0, 22.0 ],
					"style" : "kusamura",
					"text" : "metro 500"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-25",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 49.799999, 533.200012, 45.0, 22.0 ],
					"style" : "kusamura",
					"text" : "r toOF"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.115992, 0.420413, 0.423071, 1.0 ],
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 49.799999, 559.200012, 144.0, 22.0 ],
					"style" : "kusamura",
					"text" : "udpsend localhost 12400"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-48", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-100", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-88", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-101", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-108", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-113", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-114", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-106", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-106", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 4 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 895.5, 680.5, 738.5, 680.5 ],
					"source" : [ "obj-111", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-51", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-115", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-67", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-116", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 3 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 845.75, 680.5, 728.0, 680.5 ],
					"source" : [ "obj-117", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 796.0, 680.5, 717.5, 680.5 ],
					"source" : [ "obj-118", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 746.25, 680.5, 707.0, 680.5 ],
					"source" : [ "obj-119", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-101", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-120", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-57", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-91", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-158", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-164", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-163", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 751.299988, 407.700012, 194.5, 407.700012 ],
					"source" : [ "obj-164", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-163", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-166", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 912.125, 262.5, 1106.125, 262.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 293.5, 408.600006, 194.5, 408.600006 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 386.5, 408.600006, 194.5, 408.600006 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 635.799988, 407.600006, 194.5, 407.600006 ],
					"source" : [ "obj-209", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 527.5, 408.600006, 194.5, 408.600006 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-214", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-83", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-92", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-95", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-23", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-2", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-165", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-99", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-27", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-209", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 194.5, 373.200012, 167.299988, 373.200012 ],
					"source" : [ "obj-46", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 246.300003, 674.0, 194.5, 674.0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 359.100006, 676.0, 194.5, 676.0 ],
					"source" : [ "obj-48", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 145.299988, 425.300018, 246.300003, 425.300018 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 145.299988, 425.300018, 359.100006, 425.300018 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-51", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-69", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-60", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-214", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-55", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-46", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 553.5, 281.5, 194.5, 281.5 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 553.5, 224.399994, 579.5, 224.399994 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 553.5, 192.199997, 579.5, 192.199997 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-55", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-60", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-64", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 42.299988, 144.399994, 103.299988, 144.399994, 103.299988, 84.399994, 125.299988, 84.399994 ],
					"source" : [ "obj-62", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-65", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-64", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 125.299988, 145.399994, 109.299988, 145.399994, 109.299988, 114.399994, 88.299988, 114.399994 ],
					"source" : [ "obj-65", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-66", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-62", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-67", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-69", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 488.700012, 675.0, 194.5, 675.0 ],
					"source" : [ "obj-72", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-72", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-80", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-82", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-100", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-82", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-87", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-88", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-89", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-158", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-38", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-90", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-91", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-85", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-92", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-93", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-35", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-94", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-86", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-95", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-96", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-98", 0 ]
				}

			}
 ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"styles" : [ 			{
				"name" : "\bkusamura",
				"default" : 				{
					"bgcolor" : [ 0.133832, 0.460978, 0.460978, 1.0 ],
					"elementcolor" : [ 0.168147, 0.306837, 0.399633, 1.0 ]
				}
,
				"parentstyle" : "kusamura",
				"multi" : 0
			}
, 			{
				"name" : "kusamura",
				"preset" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.523257, 0.952596, 0.520069, 1.0 ],
					"elementcolor" : [ 0.126011, 0.307426, 0.322843, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.546595, 1.0, 0.544792, 1.0 ],
					"elementcolor" : [ 0.171937, 0.307413, 0.369728, 1.0 ],
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.126011, 0.307426, 0.322843, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.126011, 0.307426, 0.322843, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.126011, 0.307426, 0.322843, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.203958, 0.406343, 0.298524, 1.0 ]
				}
,
				"comment" : 				{
					"clearcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
						"color1" : [ 0.147869, 0.572659, 0.290524, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 0.293513, 0.703044, 0.561118, 1.0 ],
					"accentcolor" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "kusamura-1",
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "kusamura-2",
				"preset" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.523257, 0.952596, 0.520069, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.546595, 1.0, 0.544792, 1.0 ],
					"elementcolor" : [ 0.203958, 0.406343, 0.298524, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.203958, 0.406343, 0.298524, 1.0 ]
				}
,
				"comment" : 				{
					"clearcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
						"color1" : [ 0.147869, 0.572659, 0.290524, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 0.293513, 0.703044, 0.561118, 1.0 ],
					"accentcolor" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
, 			{
				"name" : "kusamura-3",
				"preset" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.523257, 0.952596, 0.520069, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"default" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"accentcolor" : [ 0.546595, 1.0, 0.544792, 1.0 ],
					"elementcolor" : [ 0.203958, 0.406343, 0.298524, 1.0 ]
				}
,
				"radiogroup" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"button" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"dial" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.120095, 0.562381, 0.442739, 1.0 ]
				}
,
				"toggle" : 				{
					"color" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"bgcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
					"elementcolor" : [ 0.203958, 0.406343, 0.298524, 1.0 ]
				}
,
				"comment" : 				{
					"clearcolor" : [ 0.094118, 0.435294, 0.431373, 1.0 ]
				}
,
				"message" : 				{
					"bgfillcolor" : 					{
						"type" : "color",
						"color" : [ 0.094118, 0.435294, 0.431373, 1.0 ],
						"color1" : [ 0.147869, 0.572659, 0.290524, 1.0 ],
						"color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"angle" : 270.0,
						"proportion" : 0.39,
						"autogradient" : 0
					}
,
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"newobj" : 				{
					"bgcolor" : [ 0.293513, 0.703044, 0.561118, 1.0 ],
					"accentcolor" : [ 0.526135, 0.922329, 0.72195, 1.0 ],
					"textcolor_inverse" : [ 0.169039, 0.954827, 0.523196, 1.0 ]
				}
,
				"parentstyle" : "",
				"multi" : 0
			}
 ]
	}

}
