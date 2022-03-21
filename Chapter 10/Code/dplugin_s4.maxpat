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
					"id" : "obj-346",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 125.0, 1000.0, 35.0 ],
					"text" : "asd.alpverb_unit_d 54.119743 0.909339 456.636314 0.448486 68.109621 0.887272 231.726301 0.665695 429.232005 0.470596 251.895254 0.64253 305.649606 0.584653 166.312306 0.746729 313.282188 0.576869 98.237188 0.84155"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-347",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 180.0, 1001.0, 35.0 ],
					"text" : "asd.alpverb_unit_d 412.321769 0.529848 184.322877 0.75281 498.404314 0.464046 334.838435 0.597019 439.296608 0.508282 419.575009 0.523961 87.246751 0.87424 412.564457 0.52965 166.860613 0.773336 66.836852 0.902163"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-348",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 235.0, 924.0, 35.0 ],
					"text" : "asd.chorus_unit_d 5.722475 6.981202 5.111465 1.083667 2.438313 1.676784 3.3 2.793728 0.772917 0.800079 0.795781 0.701394 0.876974 0.745434 0.703071 0.752847"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 1 ],
					"source" : [ "obj-346", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-347", 0 ],
					"source" : [ "obj-346", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 1 ],
					"source" : [ "obj-347", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-348", 0 ],
					"source" : [ "obj-347", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-40", 0 ],
					"source" : [ "obj-348", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-42", 0 ],
					"source" : [ "obj-348", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-346", 1 ],
					"source" : [ "obj-37", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "asd.chorus_unit_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package/patchers",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.alpverb_unit_d.maxpat",
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
 ],
		"autosave" : 0
	}

}
