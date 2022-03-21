{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 998.0, 364.0, 640.0, 480.0 ],
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
					"id" : "obj-106",
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
					"id" : "obj-108",
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
					"id" : "obj-110",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 20.0, 420.0, 30.0, 30.0 ],
					"varname" : "outlet1"
				}

			}
, 			{
				"box" : 				{
					"comment" : "",
					"id" : "obj-112",
					"index" : 0,
					"maxclass" : "outlet",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 420.0, 30.0, 30.0 ],
					"varname" : "outlet2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-180",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 125.0, 400.0, 22.0 ],
					"text" : "asd.transpose_unit 0.597559"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-181",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 180.0, 1000.0, 22.0 ],
					"text" : "asd.harmonizer_unit 0.5 1.5 2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-182",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 235.0, 1000.0, 22.0 ],
					"text" : "asd.combchord_unit 3.95 0.957754 3.51099 0.962358 2.34066 0.974745 1.56044 0.983092 1.040293 0.988696"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-183",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 290.0, 400.0, 22.0 ],
					"text" : "asd.transpose_unit 0.193713"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 0 ],
					"source" : [ "obj-106", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-180", 1 ],
					"source" : [ "obj-108", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 1 ],
					"source" : [ "obj-180", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-181", 0 ],
					"source" : [ "obj-180", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 1 ],
					"source" : [ "obj-181", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-182", 0 ],
					"source" : [ "obj-181", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 1 ],
					"source" : [ "obj-182", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-183", 0 ],
					"source" : [ "obj-182", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-110", 0 ],
					"source" : [ "obj-183", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-112", 0 ],
					"source" : [ "obj-183", 1 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "asd.transpose_unit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.gizmo.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.combchord_unit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.harmonizer_unit.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.harmonizer.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
