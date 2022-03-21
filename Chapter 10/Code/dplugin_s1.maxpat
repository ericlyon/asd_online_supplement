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
					"id" : "obj-38",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 40,
					"outlettype" : [ "", "", "", "", "", "", "", "", "float", "float", "float", "float", "float", "float", "float", "float", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang", "bang" ],
					"patching_rect" : [ 170.0, 20.0, 1207.0, 22.0 ],
					"text" : "nanoKONTROL2_interface",
					"varname" : "midi_interface"
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
					"id" : "obj-319",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 125.0, 944.0, 35.0 ],
					"text" : "asd.chorus_unit_d 2.030816 6.78239 3.406305 5.572468 3.273111 4.055914 2.718163 6.62647 0.792687 0.757374 0.883321 0.709432 0.740596 0.708422 0.856262 0.838225"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-320",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 180.0, 400.0, 22.0 ],
					"text" : "asd.spectralgate_unit_d 7.733766"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-321",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 235.0, 1000.0, 22.0 ],
					"text" : "asd.combchord_unit_d 2.537042 1.902782 1.522225 1.21778 0.811854 0.276285"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-322",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 290.0, 400.0, 22.0 ],
					"text" : "asd.transpose_unit_d 1.045236"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 1 ],
					"source" : [ "obj-319", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 0 ],
					"source" : [ "obj-319", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 1 ],
					"source" : [ "obj-320", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 0 ],
					"source" : [ "obj-320", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-322", 1 ],
					"source" : [ "obj-321", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-322", 0 ],
					"source" : [ "obj-321", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-322", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-322", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 3 ],
					"source" : [ "obj-38", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-319", 2 ],
					"source" : [ "obj-38", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-320", 2 ],
					"source" : [ "obj-38", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 3 ],
					"source" : [ "obj-38", 4 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-321", 2 ],
					"source" : [ "obj-38", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-322", 2 ],
					"source" : [ "obj-38", 5 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "asd.transpose_unit_d.maxpat",
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
				"name" : "asd.combchord_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "el.calc-feedback.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.spectralgate_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.spectralgate_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.chorus_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "nanoKONTROL2_interface.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
