{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 6,
			"architecture" : "x64",
			"modernui" : 1,
			"dynamiccolor" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 1417.0, 663.0, 1042.0, 572.0 ],
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
					"id" : "obj-140",
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
					"id" : "obj-142",
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
					"id" : "obj-144",
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
					"id" : "obj-146",
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
					"id" : "obj-8",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 70.0, 294.0, 22.0 ],
					"text" : "asd.sweep_unit 5.548329 2.032649"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 120.0, 322.0, 22.0 ],
					"text" : "asd.ring_unit 237.306486 1236.919097"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 170.0, 995.0, 35.0 ],
					"text" : "asd.alpverb_unit 329.677685 0.737578 469.814869 0.648062 170.456859 0.85438 325.09 0.740708 492.204218 0.634803 281.613321 0.771046 359.697892 0.717415 259.133757 0.787216 330.14201 0.737261 219.382038 0.816645"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 220.0, 330.0, 22.0 ],
					"text" : "asd.ring_unit 1153.198165 1449.271799"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"linecount" : 2,
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 270.0, 964.0, 35.0 ],
					"text" : "asd.alpverb_unit 222.69611 0.233989 425.44562 0.062358 478.743849 0.044047 339.283067 0.109384 200.623475 0.27022 458.287336 0.050334 431.197262 0.060062 228.364649 0.225496 399.844617 0.07369 404.907766 0.071296"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 20.0, 320.0, 241.0, 22.0 ],
					"text" : "asd.transpose_unit 0.729066"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 1 ],
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 1 ],
					"source" : [ "obj-11", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 1 ],
					"source" : [ "obj-12", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-13", 0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-144", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-146", 0 ],
					"source" : [ "obj-13", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-140", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"source" : [ "obj-142", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 1 ],
					"source" : [ "obj-8", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-9", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-9", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "asd.transpose_unit.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.gizmo.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.alpverb_unit.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.ring_unit.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.sweep_unit.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.996078431372549, 0.984313725490196, 0.984313725490196, 1.0 ]
	}

}
