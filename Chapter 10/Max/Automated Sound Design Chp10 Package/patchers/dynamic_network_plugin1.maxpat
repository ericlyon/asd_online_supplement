{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 7,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 998.0, 364.0, 665.0, 683.0 ],
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
		"subpatcher_template" : "Grid Big",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-35",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 20.0, 20.0, 30.0, 30.0 ],
					"varname" : "inlet1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-37",
					"index" : 0,
					"maxclass" : "inlet",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 70.0, 20.0, 30.0, 30.0 ],
					"varname" : "inlet2"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-40",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 620.0, 30.0, 30.0 ],
					"varname" : "outlet1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-42",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 620.0, 30.0, 30.0 ],
					"varname" : "outlet2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 16,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 170.0, 20.0, 188.0, 22.0 ],
					"text" : "asd.nanoKONTROL2_udpreceive",
					"varname" : "midi_interface"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 125.0, 972.0, 35.0 ],
					"text" : "asd.alpverb_unit_d 133.035427 0.875218 151.272502 0.859372 413.939486 0.660533 122.444878 0.884554 381.590235 0.682291 474.18 0.621847 111.283757 0.8945 206.95939 0.81274 114.129659 0.891953 99.958684 0.904707"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 180.0, 177.0, 22.0 ],
					"text" : "asd.transpose_unit_d 0.668865"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 235.0, 231.0, 22.0 ],
					"text" : "asd.ring_unit_d 1279.385636 846.250416"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 290.0, 265.0, 22.0 ],
					"text" : "asd.sweep_unit_d 2.530713 0.756729 0.714374"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 345.0, 449.0, 22.0 ],
					"text" : "asd.combchord_unit_d 8.412827 7.478069 4.985379 4.154483 3.115862 0.296635"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 400.0, 231.0, 22.0 ],
					"text" : "asd.ring_unit_d 220.471783 1268.416235"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 1 ],
					"source" : [ "obj-14", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 0 ],
					"source" : [ "obj-14", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 1 ],
					"source" : [ "obj-15", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-15", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 1 ],
					"source" : [ "obj-16", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 0 ],
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 1 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 1 ],
					"source" : [ "obj-18", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-19", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-14", 2 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-15", 2 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 3 ],
					"source" : [ "obj-8", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 2 ],
					"source" : [ "obj-8", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-17", 2 ],
					"source" : [ "obj-8", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 3 ],
					"source" : [ "obj-8", 6 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 2 ],
					"source" : [ "obj-8", 5 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 3 ],
					"source" : [ "obj-8", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 2 ],
					"source" : [ "obj-8", 7 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-8::obj-10" : [ "live.slider[5]", "silder 7", 0 ],
			"obj-8::obj-11" : [ "live.slider[6]", "slider 6", 0 ],
			"obj-8::obj-12" : [ "live.slider[7]", "slider 5", 0 ],
			"obj-8::obj-13" : [ "live.dial", "dial 1", 0 ],
			"obj-8::obj-14" : [ "live.dial[1]", "dial 2", 0 ],
			"obj-8::obj-15" : [ "live.dial[2]", "dial 4", 0 ],
			"obj-8::obj-19" : [ "live.dial[3]", "dial 3", 0 ],
			"obj-8::obj-2" : [ "live.slider", "slider 1", 0 ],
			"obj-8::obj-20" : [ "live.dial[4]", "dial 8", 0 ],
			"obj-8::obj-21" : [ "live.dial[5]", "dial 7", 0 ],
			"obj-8::obj-22" : [ "live.dial[6]", "dial 6", 0 ],
			"obj-8::obj-23" : [ "live.dial[7]", "dial 5", 0 ],
			"obj-8::obj-6" : [ "live.slider[1]", "slider 2", 0 ],
			"obj-8::obj-7" : [ "live.slider[2]", "slider 4", 0 ],
			"obj-8::obj-8" : [ "live.slider[3]", "slider 3", 0 ],
			"obj-8::obj-9" : [ "live.slider[4]", "slider 8", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "asd.ring_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.combchord_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.sweep_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.transpose_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.alpverb_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.nanoKONTROL2_udpreceive.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code/Automated Sound Design Package",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
