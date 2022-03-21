{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 1,
			"revision" : 11,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 699.0, 79.0, 1318.0, 1211.0 ],
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
		"style" : "",
		"subpatcher_template" : "Default Max 7",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-2",
					"linecount" : 25,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 73.333335518836975, 15.333333790302277, 255.333336472511292, 355.0 ],
					"text" : "{\n\t\"boxes\" : [ \t\t{\n\t\t\t\"box\" : \t\t\t{\n\t\t\t\t\"maxclass\" : \"gain~\",\n\t\t\t\t\"numoutlets\" : 2,\n\t\t\t\t\"outlettype\" : [ \"signal\", \"\" ],\n\t\t\t\t\"id\" : \"obj-10\",\n\t\t\t\t\"parameter_enable\" : 0,\n\t\t\t\t\"multichannelvariant\" : 0,\n\t\t\t\t\"numinlets\" : 1,\n\t\t\t\t\"patching_rect\" : [ 25.0, 127.0, 22.0, 140.0 ]\n\t\t\t}\n\n\t\t}\n ],\n\t\"appversion\" : \t{\n\t\t\"major\" : 8,\n\t\t\"minor\" : 1,\n\t\t\"revision\" : 11,\n\t\t\"architecture\" : \"x64\",\n\t\t\"modernui\" : 1\n\t}\n,\n\t\"classnamespace\" : \"box\"\n}\n"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "gain~",
					"multichannelvariant" : 0,
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 25.0, 127.0, 22.0, 140.0 ]
				}

			}
 ],
		"lines" : [  ],
		"dependency_cache" : [  ],
		"autosave" : 0,
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
	}

}
