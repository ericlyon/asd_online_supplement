{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 4,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 593.0, 79.0, 828.0, 515.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 2,
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
		"style" : "",
		"subpatcher_template" : "Eric Grid",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-668",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 685.0, 190.0, 101.0, 22.0 ],
					"text" : "destroy_interface"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "dropfile",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 561.0, 71.4168701171875, 209.0, 73.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 561.0, 151.9168701171875, 103.0, 22.0 ],
					"text" : "build_interface $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 561.0, 238.4168701171875, 86.0, 22.0 ],
					"saved_object_attributes" : 					{
						"filename" : "asd.dmach1.js",
						"parameter_enable" : 0
					}
,
					"text" : "js asd.dmach1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12380",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 800.0, 100.0, 22.0 ],
					"text" : "buffer~ bd1.aif",
					"varname" : "buffer_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12381",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 820.0, 110.0, 22.0 ],
					"text" : "buffer~ c_hat1.wav",
					"varname" : "buffer_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12382",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 840.0, 100.0, 22.0 ],
					"text" : "buffer~ clap.wav",
					"varname" : "buffer_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12383",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 860.0, 110.0, 22.0 ],
					"text" : "buffer~ crash1.wav",
					"varname" : "buffer_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12384",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 880.0, 111.0, 22.0 ],
					"text" : "buffer~ o_hat1.wav",
					"varname" : "buffer_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12385",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 900.0, 100.0, 22.0 ],
					"text" : "buffer~ pad.aif",
					"varname" : "buffer_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12386",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 920.0, 111.0, 22.0 ],
					"text" : "buffer~ snare2.wav",
					"varname" : "buffer_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12387",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 940.0, 117.0, 22.0 ],
					"text" : "buffer~ tom1_hi.wav",
					"varname" : "buffer_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12388",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 960.0, 127.0, 22.0 ],
					"text" : "buffer~ tom2_mid.wav",
					"varname" : "buffer_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12389",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 300.0, 980.0, 117.0, 22.0 ],
					"text" : "buffer~ tom3_lo.wav",
					"varname" : "buffer_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12390",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 800.0, 123.0, 22.0 ],
					"text" : "asd.playmono bd1.aif",
					"varname" : "player_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12391",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 820.0, 147.0, 22.0 ],
					"text" : "asd.playmono c_hat1.wav",
					"varname" : "player_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12392",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 840.0, 133.0, 22.0 ],
					"text" : "asd.playmono clap.wav",
					"varname" : "player_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12393",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 860.0, 147.0, 22.0 ],
					"text" : "asd.playmono crash1.wav",
					"varname" : "player_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12394",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 880.0, 148.0, 22.0 ],
					"text" : "asd.playmono o_hat1.wav",
					"varname" : "player_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12395",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 900.0, 126.0, 22.0 ],
					"text" : "asd.playstereo pad.aif",
					"varname" : "player_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12396",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 920.0, 148.0, 22.0 ],
					"text" : "asd.playmono snare2.wav",
					"varname" : "player_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12397",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 940.0, 154.0, 22.0 ],
					"text" : "asd.playmono tom1_hi.wav",
					"varname" : "player_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12398",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 960.0, 164.0, 22.0 ],
					"text" : "asd.playmono tom2_mid.wav",
					"varname" : "player_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12399",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 500.0, 980.0, 154.0, 22.0 ],
					"text" : "asd.playmono tom3_lo.wav",
					"varname" : "player_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12401",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12403",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12405",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12407",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12409",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12411",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12413",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12415",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12417",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12419",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12421",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12423",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12425",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12427",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12429",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12431",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 20.0, 24.0, 24.0 ],
					"varname" : "toggle0_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12433",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 20.0, 150.0, 20.0 ],
					"text" : "bd1.aif",
					"varname" : "label_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12435",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12437",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12439",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12441",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12443",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12445",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12447",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12449",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12451",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12453",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12455",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12457",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12459",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12461",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12463",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12465",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 40.0, 24.0, 24.0 ],
					"varname" : "toggle1_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12467",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 40.0, 150.0, 20.0 ],
					"text" : "c_hat1.wav",
					"varname" : "label_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12469",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12471",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12473",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12475",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12477",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12479",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12481",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12483",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12485",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12487",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12489",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12491",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12493",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12495",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12497",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12499",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 60.0, 24.0, 24.0 ],
					"varname" : "toggle2_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12501",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 60.0, 150.0, 20.0 ],
					"text" : "clap.wav",
					"varname" : "label_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12503",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12505",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12507",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12509",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12511",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12513",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12515",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12517",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12519",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12521",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12523",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12525",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12527",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12529",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12531",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12533",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 80.0, 24.0, 24.0 ],
					"varname" : "toggle3_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12535",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 80.0, 150.0, 20.0 ],
					"text" : "crash1.wav",
					"varname" : "label_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12537",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12539",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12541",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12543",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12545",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12547",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12549",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12551",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12553",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12555",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12557",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12559",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12561",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12563",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12565",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12567",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 100.0, 24.0, 24.0 ],
					"varname" : "toggle4_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12569",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 100.0, 150.0, 20.0 ],
					"text" : "o_hat1.wav",
					"varname" : "label_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12571",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12573",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12575",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12577",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12579",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12581",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12583",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12585",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12587",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12589",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12591",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12593",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12595",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12597",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12599",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12601",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 120.0, 24.0, 24.0 ],
					"varname" : "toggle5_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12603",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 120.0, 150.0, 20.0 ],
					"text" : "pad.aif",
					"varname" : "label_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12605",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12607",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12609",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12611",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12613",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12615",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12617",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12619",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12621",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12623",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12625",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12627",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12629",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12631",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12633",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12635",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 140.0, 24.0, 24.0 ],
					"varname" : "toggle6_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12637",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 140.0, 150.0, 20.0 ],
					"text" : "snare2.wav",
					"varname" : "label_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12639",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12641",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12643",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12645",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12647",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12649",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12651",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12653",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12655",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12657",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12659",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12661",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12663",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12665",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12667",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12669",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 160.0, 24.0, 24.0 ],
					"varname" : "toggle7_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12671",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 160.0, 150.0, 20.0 ],
					"text" : "tom1_hi.wav",
					"varname" : "label_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12673",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12675",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12677",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12679",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12681",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12683",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12685",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12687",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12689",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12691",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12693",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12695",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12697",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12699",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12701",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12703",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 180.0, 24.0, 24.0 ],
					"varname" : "toggle8_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12705",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 180.0, 150.0, 20.0 ],
					"text" : "tom2_mid.wav",
					"varname" : "label_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12707",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 140.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_0"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12709",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 160.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12711",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 180.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12713",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 200.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12715",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 220.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_4"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12717",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 240.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_5"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12719",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 260.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_6"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12721",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 280.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12723",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 300.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12725",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 320.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_9"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12727",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 340.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12729",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 360.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_11"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12731",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 380.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_12"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12733",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 400.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_13"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12735",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 420.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_14"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12737",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 440.0, 200.0, 24.0, 24.0 ],
					"varname" : "toggle9_15"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12739",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 200.0, 150.0, 20.0 ],
					"text" : "tom3_lo.wav",
					"varname" : "label_9"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"source" : [ "obj-668", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "asd.playmono.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/8. Drum Machines I/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.playstereo.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/8. Drum Machines I/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.dmach1.js",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/8. Drum Machines I/Code",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
	}

}
