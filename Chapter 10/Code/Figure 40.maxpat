{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 2,
			"revision" : 0,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 128.0, 121.0, 2266.0, 1057.0 ],
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
					"patching_rect" : [ 20.0, 387.0, 30.0, 30.0 ],
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
					"patching_rect" : [ 70.0, 387.0, 30.0, 30.0 ],
					"varname" : "outlet2"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 16,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
					"patching_rect" : [ 170.0, 20.0, 400.0, 29.0 ],
					"text" : "asd.nanoKONTROL2_interface",
					"varname" : "midi_interface"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-284",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 70.0, 353.0, 29.0 ],
					"text" : "asd.randreverse_unit_dx"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-285",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 125.0, 594.0, 29.0 ],
					"text" : "asd.ring_unit_dx 404.487469 982.535003"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-286",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 180.0, 591.0, 29.0 ],
					"text" : "asd.transpose_unit_dx 1.449102"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-287",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 235.0, 653.0, 29.0 ],
					"text" : "asd.sweep_unit_dx 2.27102 2.828482 0.709845"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 18.0,
					"id" : "obj-288",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 290.0, 1023.0, 49.0 ],
					"text" : "asd.alpverb_unit_dx 277.824779 0.556349 354.923977 0.472801 420.85272 0.411385 108.585373 0.795191 197.707179 0.658844 452.78693 0.384572 417.254715 0.414521 449.746535 0.387048 344.3 0.483523 253.816667 0.585266"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 2 ],
					"source" : [ "obj-2", 8 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 4 ],
					"source" : [ "obj-2", 9 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 3 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 2 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 3 ],
					"source" : [ "obj-2", 10 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 2 ],
					"source" : [ "obj-2", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 3 ],
					"source" : [ "obj-2", 11 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 2 ],
					"source" : [ "obj-2", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 3 ],
					"source" : [ "obj-2", 12 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 2 ],
					"source" : [ "obj-2", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 1 ],
					"source" : [ "obj-284", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-285", 0 ],
					"source" : [ "obj-284", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 1 ],
					"source" : [ "obj-285", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-286", 0 ],
					"source" : [ "obj-285", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 1 ],
					"source" : [ "obj-286", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-287", 0 ],
					"source" : [ "obj-286", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 1 ],
					"source" : [ "obj-287", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-288", 0 ],
					"source" : [ "obj-287", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-288", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-288", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-284", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-2::obj-10" : [ "live.slider[8]", "silder 7", 0 ],
			"obj-2::obj-11" : [ "live.slider[6]", "slider 6", 0 ],
			"obj-2::obj-12" : [ "live.slider[7]", "slider 5", 0 ],
			"obj-2::obj-13" : [ "live.dial", "dial 1", 0 ],
			"obj-2::obj-14" : [ "live.dial[1]", "dial 2", 0 ],
			"obj-2::obj-15" : [ "live.dial[2]", "dial 4", 0 ],
			"obj-2::obj-19" : [ "live.dial[3]", "dial 3", 0 ],
			"obj-2::obj-2" : [ "live.slider[5]", "slider 1", 0 ],
			"obj-2::obj-20" : [ "live.dial[4]", "dial 8", 0 ],
			"obj-2::obj-21" : [ "live.dial[5]", "dial 7", 0 ],
			"obj-2::obj-22" : [ "live.dial[6]", "dial 6", 0 ],
			"obj-2::obj-23" : [ "live.dial[7]", "dial 5", 0 ],
			"obj-2::obj-6" : [ "live.slider[1]", "slider 2", 0 ],
			"obj-2::obj-7" : [ "live.slider[2]", "slider 4", 0 ],
			"obj-2::obj-8" : [ "live.slider[3]", "slider 3", 0 ],
			"obj-2::obj-9" : [ "live.slider[4]", "slider 8", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "asd.alpverb_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "el.calc-feedback.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Aggregate Processors/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.stereo_xfade.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.sweep_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.transpose_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.gizmo.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Aggregate Processors/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.ring_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.randreverse_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.nanoKONTROL2_interface.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
	}

}
