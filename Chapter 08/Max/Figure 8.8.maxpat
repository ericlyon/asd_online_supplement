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
		"rect" : [ 59.0, 104.0, 725.0, 499.0 ],
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
					"id" : "obj-12380",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 37.0, 44.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 64.0, 110.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 84.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 104.0, 110.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 124.0, 111.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 144.0, 100.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 164.0, 111.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 184.0, 117.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 204.0, 127.0, 22.0 ],
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
					"patching_rect" : [ 37.0, 224.0, 117.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 44.0, 123.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 64.0, 147.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 84.0, 133.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 104.0, 147.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 124.0, 148.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 144.0, 126.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 164.0, 148.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 184.0, 154.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 204.0, 164.0, 22.0 ],
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
					"patching_rect" : [ 237.0, 224.0, 154.0, 22.0 ],
					"text" : "asd.playmono tom3_lo.wav",
					"varname" : "player_9"
				}

			}
 ],
		"lines" : [  ],
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
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ]
	}

}
