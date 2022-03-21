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
		"rect" : [ 335.0, 214.0, 973.0, 761.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 18.0,
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
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 540.405405163764954, 315.0, 222.0, 27.0 ],
					"text" : "Acquire Dexed preset data"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 423.0, 227.0, 195.0, 27.0 ],
					"text" : "Load parameter names"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 181.0, 642.0, 121.0, 29.0 ],
					"text" : "s dexed-msgs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 396.027026832103729, 121.0, 29.0 ],
					"text" : "s dexed-msgs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 329.405405163764954, 567.0, 121.0, 29.0 ],
					"text" : "s dexed-msgs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 209.0, 123.0, 121.0, 29.0 ],
					"text" : "s dexed-msgs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.0, 162.0, 118.0, 29.0 ],
					"text" : "r dexed-msgs"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 335.0, 345.027026832103729, 205.0, 29.0 ],
					"text" : "load_external_key $1 $2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-79",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 546.905405163764954, 345.027026832103729, 209.0, 29.0 ],
					"text" : "get_external_parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-77",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 177.0, 345.027026832103729, 150.0, 29.0 ],
					"text" : "populate_keys $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-73",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 346.5, 226.0, 69.0, 29.0 ],
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-60",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 206.0, 438.0, 92.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 483.0, 284.864865005016327, 150.0, 27.0 ],
					"text" : "AutoBlend"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "float" ],
					"patching_rect" : [ 181.0, 574.0, 54.0, 29.0 ],
					"text" : "/ 100."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-53",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 206.0, 504.0, 29.5, 29.0 ],
					"text" : "2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-50",
					"maxclass" : "newobj",
					"numinlets" : 5,
					"numoutlets" : 4,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 181.0, 539.0, 119.0, 29.0 ],
					"text" : "counter 0 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 181.0, 438.0, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 457.0, 287.864865005016327, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-47",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 181.0, 470.0, 90.0, 29.0 ],
					"text" : "metro 100"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-44",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 181.0, 608.0, 123.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 364.0, 101.632414102554321, 123.0, 29.0 ],
					"text" : "blend 1 8 0 $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-42",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 692.600006103515625, 69.199981689453125, 79.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 233.41081702709198, 66.0, 79.0, 29.0 ],
					"text" : "mate 6 7"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-40",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 580.518017649650574, 69.199981689453125, 99.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 233.41081702709198, 30.992774486541748, 89.0, 49.0 ],
					"text" : "nudge 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 355.405405163764954, 441.027026832103729, 150.0, 27.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 390.9909907579422, 188.090089976787567, 140.0, 47.0 ],
					"text" : "Read Preset File"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 557.0, 441.027026832103729, 141.0, 27.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 390.9909907579422, 155.657657563686371, 141.0, 27.0 ],
					"text" : "Write Preset File"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 516.018017649650574, 441.027026832103729, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 358.558558344841003, 155.855855762958527, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.018017649650574, 518.0, 165.0, 29.0 ],
					"text" : "save_preset_file $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "bang" ],
					"patching_rect" : [ 516.018017649650574, 478.513513267040253, 95.0, 29.0 ],
					"text" : "savedialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 329.405405163764954, 441.027026832103729, 24.0, 24.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 358.558558344841003, 186.657657563686371, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 329.405405163764954, 518.0, 163.0, 29.0 ],
					"text" : "read_preset_file $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"patching_rect" : [ 329.405405163764954, 478.513513267040253, 97.0, 29.0 ],
					"text" : "opendialog"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-33",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 294.800003051757812, 23.199981689453125, 50.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.610813975334167, 15.992774486541748, 50.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 209.0, 23.199981689453125, 50.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.810810923576355, 15.992774486541748, 50.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 294.800003051757812, 69.199981689453125, 77.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 105.610813975334167, 61.992774486541748, 77.0, 29.0 ],
					"text" : "recall $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-23",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.0, 69.199981689453125, 74.0, 29.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 19.810810923576355, 61.992774486541748, 74.0, 29.0 ],
					"text" : "store $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-57",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 383.600006103515625, 69.199981689453125, 185.0, 29.0 ],
					"presentation" : 1,
					"presentation_linecount" : 2,
					"presentation_rect" : [ 358.558558344841003, 221.452233850955963, 145.0, 49.0 ],
					"text" : "generate2 6 0.05 0.05"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 209.0, 193.0, 192.0, 29.0 ],
					"saved_object_attributes" : 					{
						"filename" : "dexed-automated-v2",
						"parameter_enable" : 0
					}
,
					"text" : "js dexed-automated-v2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 84.0, 525.027026832103729, 45.0, 45.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.810810923576355, 275.864865005016327, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 84.0, 360.027026832103729, 48.0, 136.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 21.810810923576355, 110.864865005016327, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_type" : 0,
							"parameter_unitstyle" : 4,
							"parameter_mmin" : -70.0,
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_initial" : [ 0.0 ],
							"parameter_shortname" : "Gain"
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 8,
					"outlettype" : [ "", "", "", "int", "int", "", "int", "" ],
					"patching_rect" : [ 47.0, 99.0, 92.5, 29.0 ],
					"text" : "midiparse"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 47.0, 64.0, 56.0, 29.0 ],
					"text" : "midiin"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 274.405405163764954, 226.0, 43.0, 29.0 ],
					"text" : "plug"
				}

			}
, 			{
				"box" : 				{
					"autosave" : 1,
					"bgmode" : 0,
					"border" : 0,
					"clickthrough" : 0,
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 8,
					"offset" : [ 0.0, 0.0 ],
					"outlettype" : [ "signal", "signal", "", "list", "int", "", "", "" ],
					"patching_rect" : [ 84.0, 283.0, 92.5, 29.0 ],
					"save" : [ "#N", "vst~", "loaduniqueid", 0, ";" ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "vst~",
							"parameter_shortname" : "vst~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"parameter_enable" : 1,
						"parameter_mappable" : 0
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "vst~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"pluginname" : "Dexed.vst",
							"plugindisplayname" : "Dexed",
							"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Dexed.vst",
							"pluginsaveduniqueid" : 0,
							"version" : 1,
							"isbank" : 0,
							"isbase64" : 1,
							"blob" : "6098.CMlaKA....fQPMDZ....APTY3QF.A.......fLDZx8VagARMfjE..........................bgkVMjLgz3E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HBMh.Rau41aM8FYk0iHvHBHk41Yo4VYTkGbk0iHwHBHsE1bzUlbTUmak0iHvHBHuA2T2kFcigVOhDSLwDSLwHBH2gVYkwVSuQVOh.CHv.BLf.iHfX1auQWSuQVOh.CHv.BLf.iHfHlbkEFcn0zaj0iHv.BLf.CHvHBHgYFckIGcuU2Xn0zaj0iHv.BLf.CHvHhO7PVY3UFYBw1ahAhXgMWY1PiNyk2bkgWOhPSLvPiK18DQtjjKB4BYMI0RwfDLUMlKlIjKt3RPy.ETUUjKPUUS1IESWM1ZH4hat3hKP4hSDgDaA4hZqcTMToGUQgSPt3hKt3BQlMTPIslKtfEMQwjcLU0UZ4hKt3hKt3BRUYVTD4hcUQlaBsjYIUDSt3hKt3hKtnTQXUzPtH1ZIUGRDYkYAMjKt3hKt3hYSEjYu4hKnkTLRcCRowDdHMkQCwDdXojYtvDSloWXvzzUYYFRUk0YQYjTL8lKHkVUEQkKDMjKt3hKNgDTEUjK1QkTJY2cXI1aE4Bdt3hKtXVPAoUTt3xctolPlgDaXgVPPoDNtnlPHclcQQjK10zStY2RocWQW4hY4YkKL4hXDwjQA4hXCgjY5E0Uj8VQtPTP1gkPt3RPXEETtHiYoITcLwFVtDjcIkVP1MDVmYFVDQjYXgVRrgELDkFS3MicCcFSBQjKtDzPLUDUUI0ZTEkYtHDRlwDaKECUvfkYMYjKz3hKt3haCETZUYmToQCZHEVSwbUZA4hKt3hKtjWPlM0QDMjUIU0TWkFLD4hKt3hKt3hYhIlbEQzPlUjS2nGLX0TPt3hKt3hKtvTQE8TRtbDVmMzSi0jUS4hKt3hKt3hKoY1cTIDRrMkY1IzSoUUQt3hKt3hKtXlRtvjQtbDVUcUZMYjK54BTWE0M1gjKt3hK24hYPsVQFM1bUYjV3EEahkVVRYzaLYjTHEjcI4BQ1MjcQYFUD4hcX0lZQgTZiQDTtHlPt3xMtHlKPMTPtvjQSkFN3gEVAYjKs4hKt7jKG4hXI4hKoMlTFcFSwDkKAYWRtPjcCMCT1gEQtXGVroVPIk1YDIkKhIjKtbiKN4xLDIjKLYzTogCdXgUPF4Rat3hKOY1Pt3BRt3BU3.yU2fTZLgGR4cjSTIjKt3hKPgkKEIUPIAyTHEjPHYlK3gkcD4hQjgCQt3hco0jKDYWTLwDaG4xMvfDR1cGVFEjKtnmK1gzP1UDQOkkKtTVPRYzYLwVTt3hKt3hKt3RXhcGVB4BTUgGRlITZYQjKt31PtrlK1IjK2nFQtHmZKAkc1gkQA4hK5YlKtLjbBMzSQ4hKJQycFUFSrEkKt3xSt3hKtj1X2gkPtX1UCgSQOgGRowDdHY1PnQjPt3hZAMzPmwlX0AiUXYFUCgjXUs1SXoGdXkVPt3hYt3hKCA0ctvzaPQEUukFQpwjUW4hKtfjKHEjK1XWTVQjK1U0bxE0Ro0jQt3hK3gkKLYlKPwDat3BUq8DVyfGVoEjKtXlKt3xP14hKG8FTtX0aoQjZLY0Ut3hKH4BRA4xPPEkUDQjKVMmbQsTZMYjKt3BdX4BSl4BTLwlKA4hKt3hKlwDdHkFSCYFTF4hat3BR14xTmk0UZoWQrIlYtHzUt3hKDUFSwfUZA4hKt.kKt.UStPkPtXVTt3RTEEVSwfkKt3hKt3hKT4xLp4hKyHjKOgkPWkVSF4hKt3hKt3RQtjVRt3hKt3hKlwTLXkVPt3hKt3hKtgjKT4BSrwjKpYFQl0TLX4hYA4RQt3hStfTQtjFMB4hXXI0Uo0jQt3hKt3hKt3hKoUDTAkVSwfUZIkFS3gTdtrjXA4xSt.EQLwTQgUWSvLlbAg2R0Y2ZSUVV5ITZAEiTtH1PtDlKPIlK2LTPtXFZGkET3gkVuUjK44hKt3BQ24RZI4hK4byZQwDSFg0SA4BStLSPtjkKtDEQt3hRjoVPIk1aqYkKLMjKt3BTXcESr4RPpk2UFMmcXY1bE4BZtXFRtnlQtfTRt3hayDkQpwDaVoUP1wjKt3hKIwzcXIjKP4zTAUTUwwTZLgGUPEjXtjFRoclPF8TRDgzQUwVXwrFaiIVSwTzRyXGVYcWQt7jKt3BQXUjKv.0TtHDM1IjXyTkUZEjcC4hKtDjUQ4hTF4hKV4DSpkTZqASTtbiKt3BTlsjKls1RtX1ZCczX3gUVmUjKO4hKtPzLC4xYI4hKnETLFAGSFcjTAY2PtLiKAYWPtfEQ2HCVJIlKKkVPVYkK23hKNAkKh4BSF4hKLECVo0TLIgGUosjS2.UPtvjQtnWP1QUPiUDREACQHUUPEgTdtgGRQwTLXkVPlcjKX4hKl0jKKIjK1wTTHgVQo0TLX4xLA4RTt3BVBwDat3hankDUybGVo0jQtXlKt3hKtXjPokjKt.iaRkTVLECVo0DaG4BSt3hKMY1StvjUMEER3UTZMECVtLSPtzjKt.kPHYjKo8FZIQ0M2gUZMYjKl4hKt3hKDITZAYGVo0TLTkFN30DdHkmKMQjKt3BUEIDS1oVTOkTUYUSP3oTb1ACVXwjQJ4hK1gkKt3hKt3BTN4hKl4hKLYDRoclPt3BSF4hKt3hKtn1PtjVP1wTZMgGVt4hKtfVPt3hKt3hKz3hcX4hK1gUaLYjRt3hcX4hKt3hKt.kStvDat3BSVsTZmIjKtvjQt3hKt3hKpMjKokjYFkVS3gkaLESTt3hKt3hKt3BMtXGVBomcXkVSFoDdHkFS3cSPBQ0MpcjPhEjQEQidP8TUqMEUUoFUSMmcCckYoM0RMYjKt3hKt3hKG4RZUAURo0TLXICSwfUZA4hKt3hKtXWPlckKtXmPOIVTN4zb5gkKt3hKt3hKF4BSVEDaLECVocVdXkVSF4hKt3hKt3hKtPVPt3xR2XWQwLidRkVPt3hKt3hK1EjcXUDV3gUZMYUSo0TLX4hKt3hKt3hStLSQt3BSFcTZMwFS3gTZLQzMlsjKy.0RvXVPU4VUsElZUwlXl4BdL4BUUMTbHkGVt3hYC4hKt3hSAYGUH4hKCcUU3oDLLYjKtLiKt3hKtPjKLYTPtn1cUglbn4TZA4hKN4hKt3hKF4RZQ4hKtHFLJE2M3gkKtX1Pt3hKtLiK1cEQt3hKYcWdJETSF4hKy3hKt3hKX4BREMjK2PUQ2HGdXAUPt3hSt3hKtX1PtjVTt3hKt3hKtfTZLgGRSUzStETQo4BTDwDU5gka3XUTocVLgYFSS0zQHIzRoE0ZG4BQo4hKL4BUDQ0PD4BR2IzaXgGV1XWPtfmKtjzPtPjPhkjKtXkYPkTbLESUy4BTMEkK14RRm4RTJ4hKHEkb2oTZuQDTt3lPt3hKtnTQtvlKtfzYDokc2g0QQMjKzAkcHMDRmEjTI4hK2fETEsFSrcELtXFVt3hcCg0Z1gkPtXGVo0TLXgGRowDdlYWPv4hKt3BQCMzbDo1TAcmdScTPRwzbPIkQ2cycXQTPt3hKt3hKtX1PBkiK3I0ZXcVQ3wDaE8jKt3hKt3hKtgicXojKtjjZXEzRo8lTI4hKt3hKt3hUAYmPN4haBQzYpgGVl4hKt3hKPEjKtjmKo8lKtjkYmUTXLwFTt3hKt3hKt3BVA4RRj4hcHIEV2gTZAAiRt3hKt3hKt3xPLwlPtvTLXkVSrwDdHkFSDYmcI4BVt3BVLEDUzoldPUTPnwDLyHESoc2PJcGSwbkKt3hKt3hKtLiKlM0QyfGV2vjTLkFNE4hKt3hKt3hKJ4hXvDDcLYzSlQTdXUVPt3hKt3hKtX1PtL0XtPjViYmKGwDaW4hKt3hKt3hK13hKNYDQ4g0cXIzQoQSQt3hKt3hKtXmSt3xZtrRSwXDLxgGVgEjKt3hKt3hKlMjKokjKtj1aSsDVHMDShkTZtfDSB4hKt.ESXgEQSUzYUIkYtHDRlAUdXUUSrsTS2sFVtHlTMQkK18jKy3RPtvDaVYkXCQ0XUUjK1wjQDIzMC4hRI4hKo8FZEYTSVg0MtXWRhMGUBshKlIkPtXGVSk0cPk1cEQkKHIkPt3hcO4hZq4hKLYTTswTLXkVSVgkKt.ETtbyPtHURt3xTigFR33RLXMVPt3hKt3hKq3hcXIjKlc0P3TzS3gTZLgGQ2ETdhIjKtn1PFETREQkYHkVS14xPHYFSrsjK1cGViMVQtDiKt3hKDMjKGEkKtjFMB4hXLY0UWEjYM4hKt3BMt.0TB4hcXQmKtbTZv.SUtf0Pt3hKPoDQPslKtLiTHQES3gkXQUjKt3hKt3BRtLTZE4hKo0TLXkESwfUZA4hRTIlKtXWPPckKtXFSo0DaGkVSwfkKt3hKt3hKh4BSFEjKLECVo0DaLgGRowTPXYVRm4hKtPiYQAEdAIiRBUUajUSRvHlS3rVTiwjQXsTP10jKxQjKzfjcXQjKPYTV1A0So0TLX4BSC4hKt.kStP0Zt3BQ3ckQvbGVo0jQtXmKlcjKDcjKZEkKtfmZAMjQMwlUmEjcL4hKt3BMPcGVBQjKGUVVTcTZAEyTt3xPtLTPP4BQtUTPtfjTFwDQ3gUZqMjK44hKt3hZCITZI4hKJQkYAYDRowDdHkVQyQEZJwFTBYDVPsFUWEjPHYlKBgjYtfGUM41TDk1aqYkKtHkKt3BTH4BQqgjKHUzPk4xcXg0YE4xZD4hKtPjPtXyLt3RVMYjSpwTLXkVPt3hKH4hKu4hcT4hKPQTYXEERo0TLX4hKt3xQt.kRtvDat3xLpMzRpcGVRMFLKwjKt3hKDUjKAkjPtDkKngDYLECVoEjKt3hKt3RTAYGVB4hcXkVSrAUdHkFS3IFTCkVSlcjKHEjQMslZTkTT5MkTAIESlMSQK81L3g0JXMjKogDUA4jZo4xSAEjKkUjTLkFSwvTLt.kRt.kKCYCRmQkQtX1UW4BUMkVSo0jKhQDSGAkYNIkXDEjKHoVQvIFdXkGUC4RahgWPLQkYCkVRP4RZUcGVhwjQt3hK1sDYt4hPFkTPSIDQ1gUULYzQoEjKt3halcjRlYVXVwDatDjd5Y0L1kGS3gTZLcjdt.kKtXGV4YVPQUTVUIESAITUA0jdRsjaQEjXLEyUt3hKt3hKt3hMtXmTEwDZBkkKloTZzTjKt3hKt3hKt3jKXQTPosFTF4ha3gEYA4hKt3hKt3hYC4xSMY1TL4RTDcDSrckKt3hKt3hKtXyMsUkKtPEQtXlKGkVQrUkKt3hKt3hcN4hKv3BLtcmPZI1cX4hKt3hKt3hKtX1PtjVPPEkTA4hKNgzPMYGRCQjQLIjKt3hcN4BRUUUSIQzTEEjPHYFQ4gETy3BQ3gDdX4hXB4hKt3BRt.EQH4hX1MTTPgGVU81PtzlKt3hKtHjKoETPtXjd1IDVXMUUoEjcI4hKt3xLtXmUD4hKF8DQ2kTZUUDRtHlPt3hKt3jKLYTPtXlKC8DUA0TUMYjKs4hKt3hYD4hU24hKmA0YF0FSVUELtXWRt3hKtfTP1gkQtXGVo0TLXgGRowDdT4xPLYGTA4hYBMzPEoGUCUDQQUTPnwzcLECVo0TLXkVSF4xPMYjKt3hLtj1XtPTZMECVo0TLXkVP1AUZMYjKtvDTW4hK3gUZMYTTo0TLX4hb3gUZA4hPCwTLAwDSwfUZMECVo0jQtDGSwfkKlcmKoEkKHkVSwfUZMECVoEjKE4BSF4BTLYGVGYlcTkVSwfUZMECVt.UPtjVPt3xPtUzPM0TLXkVSrwDdHkFSkolKt3hKt3RdlcGTxAEQKUTRFsjQAIDRXY1ZKslc4gkKt3hKt3hKtLCS1gkTh4xQXEzTIcCSF4hKt3hKt3hKNMDSrMTRtHjUzQkPOkVPt3hKt3hKtXVdtj1a1MjZps1RqYWdX4hKt3hKt3hKyvjcXojKPsDVzHUR2vjQt3hKt3hKt3hSCwjQAsDSFYUcXgGVoEjKt3hKt3hKlkmKoEkKtjVSwfUZIkFS3gTdGgDSF4hKtXWSLAUUiQWTwPkdEYzXoQyZHQFRQkTZiQjQtfkPtDzc1QDTpklQHI1YGo0L3gUTUMjK3gEQt7DRVIjbP4hKjgEdLMGSFIkXtXmR3.0ctnEQQ4jPt.0RWAEdJk1bT0jKt3hKt3hcLYDSr4hKLEiQ23VTRkVPt3hK2DkPCYVTCkVRt3RZUEURvwTLXEVPt3hKt3hKpslcXIjK1gUZMECV3gTZLgGV1MDVpMkPYQzPCMmXvLkPIQzTEEjTLMmZCgTSzbGVo81PtnjKt3BQlMjPoEjKtrzLQYjXLECVt3hYB4hKtDzLl4xUJ4hYFcTT2kTZMYjKt3hKt3BTt3DR5UTPt3lcXQkZ3gUZA4hKt3hKt3hYCEzXAAkKRwjQEkVSwfkKt3hKt3hKtLiYlYEQt3xQoE0cHkVSVQjKt3hKt3hKNQDSF4hKLwFVKcWZLgGRowDTLYGRYEjKtfjYmEUR2QTUEkTUKM0XEQEUt4xQXMCLT4RPloTLt.kKyXmKPYjK1cDRhEzQoM1ZP4hcREjSL4hSHY2Zt3haDwDSPIEUoEEQtTmYPMjKlMTQokjKtfkaRMjRLYzUBEDTKkjct3xLt.0SD4hYGQmYtLTZMECTtnmPBwDQt3jKPslKtXmZDQjcBUUZYQjKx4FTC4hKGUTZI4hKj0jdWcCRowDdHklKNY1PQ4xM4UDVLUETHUjZTETPBgjYtfGVoEUTNkVSrIjKt3hKt3hKN4hbogTZiYGVos1cXkVSF4hKt3hKtX1PtLGVQ0TZLECViwTLXkVPt3hKt3hKy3hcXoja3UTZMYkQo0TLX4hKt3hKt3hStvDaCczbmUTZuIUUo0jQt3hKt3hKlMjKRkjPt3FSwfkZLECVoEjKt3hKt3BTAYGVTgETPkVSwfEdHkFS3MiYAklKt3hKDMjKEcGUQMTTqQ0SzPDR2wjQt3hK1gUZMYjKO4hKtPjXt3BSI4hKK8FdQgFSwfUZAY2Pt3hKAkWP1gkPtXGVHgSTD4BVD4hK23hKt.kcO4BSFQjKLECVpwDdXkVPt3xSt3hKDI2PtjVRt3RZA4hKtvTLXkVP1MjKt3RPsEDTU4hKtzDbhoFRo0TLX4xMt3hKPYGVtvDat3BSwfUZMwFS3gTZLc0M1YjatDjKlY1YPEDM5I0T2IDRTQiPHgESwfUV5cmQkwjQt3hKt3hcA4hUt3hcXkVSrYjQUMTSoEjKt3hKtHjKXQkKtnmcXk1XQMUS3PjKt3hKt3hYC4RS24hK0vTLXsFSwfUZA4hKt3hKtLiK1gkPtXGVo0TLE0DL5MUZA4hKt3hKN4BUDMDVpcGVoUEdXkVSF4hKt3hKtXVPtXUTtXTZMECVokTZLgGRCIjSpYmKG4hKDwDSEEVciICSDEjPTcVTV4jY5o1Qo0DaN4hat3hKP4BSDwjUtjkblcTV1cGVoEjKtnjKt3BQlMTPhclKtnkXDUTaLECVt3hKt3hKtDDRQA0U4QkKBoDTQoTZMYjKt3hKt3hKt3TQ5s1PtfzcXQET3gUZA4hKt3hKt3hKTEjVQ4hKhwjQEkFSwfUTt3hKt3hKtLCU1gEStXFVnMGQOgGRowDdtbmKowDaBgjKCMDSYo2TlwDLUUTUDQkY1ACNh.hXgMWY1PiNvI2amIWXs0iHwXSLtnTSUszPiIkT43hKOEiKP4hKh4hKCcSQtLDR1EjVzPUSGMVdQQiKtzjKLgmKt.kKtPjKF4BQHYWPZkDUMozaBIkPA4hKt3hKt3BS14RQDYjKFgjYAoTQvrTS2MTTMEjYN4BUB4hKL4hKtnWQtTDTlEzRQsFSA8VQQUmKtzDRtXmKtvjKtLzLE4BQDYWPBETULYid48zTA4xSt3hKt3BS14RQ2TjKBwjcAQVS5c0MHkFS3gzPCUDQlgzYt3hKAAETtvDSDoEd3XUXmEjTMYlcE4hKt3hKt3hKh7hO7zVZjk1PC8hO77BYkgWYjMEcgQWY9.."
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Dexed",
									"origin" : "Dexed.vst",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 1,
									"snapshot" : 									{
										"pluginname" : "Dexed.vst",
										"plugindisplayname" : "Dexed",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Dexed.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "6098.CMlaKA....fQPMDZ....APTY3QF.A.......fLDZx8VagARMfjE..........................bgkVMjLgz3E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HBMh.Rau41aM8FYk0iHvHBHk41Yo4VYTkGbk0iHwHBHsE1bzUlbTUmak0iHvHBHuA2T2kFcigVOhDSLwDSLwHBH2gVYkwVSuQVOh.CHv.BLf.iHfX1auQWSuQVOh.CHv.BLf.iHfHlbkEFcn0zaj0iHv.BLf.CHvHBHgYFckIGcuU2Xn0zaj0iHv.BLf.CHvHhO7PVY3UFYBw1ahAhXgMWY1PiNyk2bkgWOhPSLvPiK18DQtjjKB4BYMI0RwfDLUMlKlIjKt3RPy.ETUUjKPUUS1IESWM1ZH4hat3hKP4hSDgDaA4hZqcTMToGUQgSPt3hKt3BQlMTPIslKtfEMQwjcLU0UZ4hKt3hKt3BRUYVTD4hcUQlaBsjYIUDSt3hKt3hKtnTQXUzPtH1ZIUGRDYkYAMjKt3hKt3hYSEjYu4hKnkTLRcCRowDdHMkQCwDdXojYtvDSloWXvzzUYYFRUk0YQYjTL8lKHkVUEQkKDMjKt3hKNgDTEUjK1QkTJY2cXI1aE4Bdt3hKtXVPAoUTt3xctolPlgDaXgVPPoDNtnlPHclcQQjK10zStY2RocWQW4hY4YkKL4hXDwjQA4hXCgjY5E0Uj8VQtPTP1gkPt3RPXEETtHiYoITcLwFVtDjcIkVP1MDVmYFVDQjYXgVRrgELDkFS3MicCcFSBQjKtDzPLUDUUI0ZTEkYtHDRlwDaKECUvfkYMYjKz3hKt3haCETZUYmToQCZHEVSwbUZA4hKt3hKtjWPlM0QDMjUIU0TWkFLD4hKt3hKt3hYhIlbEQzPlUjS2nGLX0TPt3hKt3hKtvTQE8TRtbDVmMzSi0jUS4hKt3hKt3hKoY1cTIDRrMkY1IzSoUUQt3hKt3hKtXlRtvjQtbDVUcUZMYjK54BTWE0M1gjKt3hK24hYPsVQFM1bUYjV3EEahkVVRYzaLYjTHEjcI4BQ1MjcQYFUD4hcX0lZQgTZiQDTtHlPt3xMtHlKPMTPtvjQSkFN3gEVAYjKs4hKt7jKG4hXI4hKoMlTFcFSwDkKAYWRtPjcCMCT1gEQtXGVroVPIk1YDIkKhIjKtbiKN4xLDIjKLYzTogCdXgUPF4Rat3hKOY1Pt3BRt3BU3.yU2fTZLgGR4cjSTIjKt3hKPgkKEIUPIAyTHEjPHYlK3gkcD4hQjgCQt3hco0jKDYWTLwDaG4xMvfDR1cGVFEjKtnmK1gzP1UDQOkkKtTVPRYzYLwVTt3hKt3hKt3RXhcGVB4BTUgGRlITZYQjKt31PtrlK1IjK2nFQtHmZKAkc1gkQA4hK5YlKtLjbBMzSQ4hKJQycFUFSrEkKt3xSt3hKtj1X2gkPtX1UCgSQOgGRowDdHY1PnQjPt3hZAMzPmwlX0AiUXYFUCgjXUs1SXoGdXkVPt3hYt3hKCA0ctvzaPQEUukFQpwjUW4hKtfjKHEjK1XWTVQjK1U0bxE0Ro0jQt3hK3gkKLYlKPwDat3BUq8DVyfGVoEjKtXlKt3xP14hKG8FTtX0aoQjZLY0Ut3hKH4BRA4xPPEkUDQjKVMmbQsTZMYjKt3BdX4BSl4BTLwlKA4hKt3hKlwDdHkFSCYFTF4hat3BR14xTmk0UZoWQrIlYtHzUt3hKDUFSwfUZA4hKt.kKt.UStPkPtXVTt3RTEEVSwfkKt3hKt3hKT4xLp4hKyHjKOgkPWkVSF4hKt3hKt3RQtjVRt3hKt3hKlwTLXkVPt3hKt3hKtgjKT4BSrwjKpYFQl0TLX4hYA4RQt3hStfTQtjFMB4hXXI0Uo0jQt3hKt3hKt3hKoUDTAkVSwfUZIkFS3gTdtrjXA4xSt.EQLwTQgUWSvLlbAg2R0Y2ZSUVV5ITZAEiTtH1PtDlKPIlK2LTPtXFZGkET3gkVuUjK44hKt3BQ24RZI4hK4byZQwDSFg0SA4BStLSPtjkKtDEQt3hRjoVPIk1aqYkKLMjKt3BTXcESr4RPpk2UFMmcXY1bE4BZtXFRtnlQtfTRt3hayDkQpwDaVoUP1wjKt3hKIwzcXIjKP4zTAUTUwwTZLgGUPEjXtjFRoclPF8TRDgzQUwVXwrFaiIVSwTzRyXGVYcWQt7jKt3BQXUjKv.0TtHDM1IjXyTkUZEjcC4hKtDjUQ4hTF4hKV4DSpkTZqASTtbiKt3BTlsjKls1RtX1ZCczX3gUVmUjKO4hKtPzLC4xYI4hKnETLFAGSFcjTAY2PtLiKAYWPtfEQ2HCVJIlKKkVPVYkK23hKNAkKh4BSF4hKLECVo0TLIgGUosjS2.UPtvjQtnWP1QUPiUDREACQHUUPEgTdtgGRQwTLXkVPlcjKX4hKl0jKKIjK1wTTHgVQo0TLX4xLA4RTt3BVBwDat3hankDUybGVo0jQtXlKt3hKtXjPokjKt.iaRkTVLECVo0DaG4BSt3hKMY1StvjUMEER3UTZMECVtLSPtzjKt.kPHYjKo8FZIQ0M2gUZMYjKl4hKt3hKDITZAYGVo0TLTkFN30DdHkmKMQjKt3BUEIDS1oVTOkTUYUSP3oTb1ACVXwjQJ4hK1gkKt3hKt3BTN4hKl4hKLYDRoclPt3BSF4hKt3hKtn1PtjVP1wTZMgGVt4hKtfVPt3hKt3hKz3hcX4hK1gUaLYjRt3hcX4hKt3hKt.kStvDat3BSVsTZmIjKtvjQt3hKt3hKpMjKokjYFkVS3gkaLESTt3hKt3hKt3BMtXGVBomcXkVSFoDdHkFS3cSPBQ0MpcjPhEjQEQidP8TUqMEUUoFUSMmcCckYoM0RMYjKt3hKt3hKG4RZUAURo0TLXICSwfUZA4hKt3hKtXWPlckKtXmPOIVTN4zb5gkKt3hKt3hKF4BSVEDaLECVocVdXkVSF4hKt3hKt3hKtPVPt3xR2XWQwLidRkVPt3hKt3hK1EjcXUDV3gUZMYUSo0TLX4hKt3hKt3hStLSQt3BSFcTZMwFS3gTZLQzMlsjKy.0RvXVPU4VUsElZUwlXl4BdL4BUUMTbHkGVt3hYC4hKt3hSAYGUH4hKCcUU3oDLLYjKtLiKt3hKtPjKLYTPtn1cUglbn4TZA4hKN4hKt3hKF4RZQ4hKtHFLJE2M3gkKtX1Pt3hKtLiK1cEQt3hKYcWdJETSF4hKy3hKt3hKX4BREMjK2PUQ2HGdXAUPt3hSt3hKtX1PtjVTt3hKt3hKtfTZLgGRSUzStETQo4BTDwDU5gka3XUTocVLgYFSS0zQHIzRoE0ZG4BQo4hKL4BUDQ0PD4BR2IzaXgGV1XWPtfmKtjzPtPjPhkjKtXkYPkTbLESUy4BTMEkK14RRm4RTJ4hKHEkb2oTZuQDTt3lPt3hKtnTQtvlKtfzYDokc2g0QQMjKzAkcHMDRmEjTI4hK2fETEsFSrcELtXFVt3hcCg0Z1gkPtXGVo0TLXgGRowDdlYWPv4hKt3BQCMzbDo1TAcmdScTPRwzbPIkQ2cycXQTPt3hKt3hKtX1PBkiK3I0ZXcVQ3wDaE8jKt3hKt3hKtgicXojKtjjZXEzRo8lTI4hKt3hKt3hUAYmPN4haBQzYpgGVl4hKt3hKPEjKtjmKo8lKtjkYmUTXLwFTt3hKt3hKt3BVA4RRj4hcHIEV2gTZAAiRt3hKt3hKt3xPLwlPtvTLXkVSrwDdHkFSDYmcI4BVt3BVLEDUzoldPUTPnwDLyHESoc2PJcGSwbkKt3hKt3hKtLiKlM0QyfGV2vjTLkFNE4hKt3hKt3hKJ4hXvDDcLYzSlQTdXUVPt3hKt3hKtX1PtL0XtPjViYmKGwDaW4hKt3hKt3hK13hKNYDQ4g0cXIzQoQSQt3hKt3hKtXmSt3xZtrRSwXDLxgGVgEjKt3hKt3hKlMjKokjKtj1aSsDVHMDShkTZtfDSB4hKt.ESXgEQSUzYUIkYtHDRlAUdXUUSrsTS2sFVtHlTMQkK18jKy3RPtvDaVYkXCQ0XUUjK1wjQDIzMC4hRI4hKo8FZEYTSVg0MtXWRhMGUBshKlIkPtXGVSk0cPk1cEQkKHIkPt3hcO4hZq4hKLYTTswTLXkVSVgkKt.ETtbyPtHURt3xTigFR33RLXMVPt3hKt3hKq3hcXIjKlc0P3TzS3gTZLgGQ2ETdhIjKtn1PFETREQkYHkVS14xPHYFSrsjK1cGViMVQtDiKt3hKDMjKGEkKtjFMB4hXLY0UWEjYM4hKt3BMt.0TB4hcXQmKtbTZv.SUtf0Pt3hKPoDQPslKtLiTHQES3gkXQUjKt3hKt3BRtLTZE4hKo0TLXkESwfUZA4hRTIlKtXWPPckKtXFSo0DaGkVSwfkKt3hKt3hKh4BSFEjKLECVo0DaLgGRowTPXYVRm4hKtPiYQAEdAIiRBUUajUSRvHlS3rVTiwjQXsTP10jKxQjKzfjcXQjKPYTV1A0So0TLX4BSC4hKt.kStP0Zt3BQ3ckQvbGVo0jQtXmKlcjKDcjKZEkKtfmZAMjQMwlUmEjcL4hKt3BMPcGVBQjKGUVVTcTZAEyTt3xPtLTPP4BQtUTPtfjTFwDQ3gUZqMjK44hKt3hZCITZI4hKJQkYAYDRowDdHkVQyQEZJwFTBYDVPsFUWEjPHYlKBgjYtfGUM41TDk1aqYkKtHkKt3BTH4BQqgjKHUzPk4xcXg0YE4xZD4hKtPjPtXyLt3RVMYjSpwTLXkVPt3hKH4hKu4hcT4hKPQTYXEERo0TLX4hKt3xQt.kRtvDat3xLpMzRpcGVRMFLKwjKt3hKDUjKAkjPtDkKngDYLECVoEjKt3hKt3RTAYGVB4hcXkVSrAUdHkFS3IFTCkVSlcjKHEjQMslZTkTT5MkTAIESlMSQK81L3g0JXMjKogDUA4jZo4xSAEjKkUjTLkFSwvTLt.kRt.kKCYCRmQkQtX1UW4BUMkVSo0jKhQDSGAkYNIkXDEjKHoVQvIFdXkGUC4RahgWPLQkYCkVRP4RZUcGVhwjQt3hK1sDYt4hPFkTPSIDQ1gUULYzQoEjKt3halcjRlYVXVwDatDjd5Y0L1kGS3gTZLcjdt.kKtXGV4YVPQUTVUIESAITUA0jdRsjaQEjXLEyUt3hKt3hKt3hMtXmTEwDZBkkKloTZzTjKt3hKt3hKt3jKXQTPosFTF4ha3gEYA4hKt3hKt3hYC4xSMY1TL4RTDcDSrckKt3hKt3hKtXyMsUkKtPEQtXlKGkVQrUkKt3hKt3hcN4hKv3BLtcmPZI1cX4hKt3hKt3hKtX1PtjVPPEkTA4hKNgzPMYGRCQjQLIjKt3hcN4BRUUUSIQzTEEjPHYFQ4gETy3BQ3gDdX4hXB4hKt3BRt.EQH4hX1MTTPgGVU81PtzlKt3hKtHjKoETPtXjd1IDVXMUUoEjcI4hKt3xLtXmUD4hKF8DQ2kTZUUDRtHlPt3hKt3jKLYTPtXlKC8DUA0TUMYjKs4hKt3hYD4hU24hKmA0YF0FSVUELtXWRt3hKtfTP1gkQtXGVo0TLXgGRowDdT4xPLYGTA4hYBMzPEoGUCUDQQUTPnwzcLECVo0TLXkVSF4xPMYjKt3hLtj1XtPTZMECVo0TLXkVP1AUZMYjKtvDTW4hK3gUZMYTTo0TLX4hb3gUZA4hPCwTLAwDSwfUZMECVo0jQtDGSwfkKlcmKoEkKHkVSwfUZMECVoEjKE4BSF4BTLYGVGYlcTkVSwfUZMECVt.UPtjVPt3xPtUzPM0TLXkVSrwDdHkFSkolKt3hKt3RdlcGTxAEQKUTRFsjQAIDRXY1ZKslc4gkKt3hKt3hKtLCS1gkTh4xQXEzTIcCSF4hKt3hKt3hKNMDSrMTRtHjUzQkPOkVPt3hKt3hKtXVdtj1a1MjZps1RqYWdX4hKt3hKt3hKyvjcXojKPsDVzHUR2vjQt3hKt3hKt3hSCwjQAsDSFYUcXgGVoEjKt3hKt3hKlkmKoEkKtjVSwfUZIkFS3gTdGgDSF4hKtXWSLAUUiQWTwPkdEYzXoQyZHQFRQkTZiQjQtfkPtDzc1QDTpklQHI1YGo0L3gUTUMjK3gEQt7DRVIjbP4hKjgEdLMGSFIkXtXmR3.0ctnEQQ4jPt.0RWAEdJk1bT0jKt3hKt3hcLYDSr4hKLEiQ23VTRkVPt3hK2DkPCYVTCkVRt3RZUEURvwTLXEVPt3hKt3hKpslcXIjK1gUZMECV3gTZLgGV1MDVpMkPYQzPCMmXvLkPIQzTEEjTLMmZCgTSzbGVo81PtnjKt3BQlMjPoEjKtrzLQYjXLECVt3hYB4hKtDzLl4xUJ4hYFcTT2kTZMYjKt3hKt3BTt3DR5UTPt3lcXQkZ3gUZA4hKt3hKt3hYCEzXAAkKRwjQEkVSwfkKt3hKt3hKtLiYlYEQt3xQoE0cHkVSVQjKt3hKt3hKNQDSF4hKLwFVKcWZLgGRowDTLYGRYEjKtfjYmEUR2QTUEkTUKM0XEQEUt4xQXMCLT4RPloTLt.kKyXmKPYjK1cDRhEzQoM1ZP4hcREjSL4hSHY2Zt3haDwDSPIEUoEEQtTmYPMjKlMTQokjKtfkaRMjRLYzUBEDTKkjct3xLt.0SD4hYGQmYtLTZMECTtnmPBwDQt3jKPslKtXmZDQjcBUUZYQjKx4FTC4hKGUTZI4hKj0jdWcCRowDdHklKNY1PQ4xM4UDVLUETHUjZTETPBgjYtfGVoEUTNkVSrIjKt3hKt3hKN4hbogTZiYGVos1cXkVSF4hKt3hKtX1PtLGVQ0TZLECViwTLXkVPt3hKt3hKy3hcXoja3UTZMYkQo0TLX4hKt3hKt3hStvDaCczbmUTZuIUUo0jQt3hKt3hKlMjKRkjPt3FSwfkZLECVoEjKt3hKt3BTAYGVTgETPkVSwfEdHkFS3MiYAklKt3hKDMjKEcGUQMTTqQ0SzPDR2wjQt3hK1gUZMYjKO4hKtPjXt3BSI4hKK8FdQgFSwfUZAY2Pt3hKAkWP1gkPtXGVHgSTD4BVD4hK23hKt.kcO4BSFQjKLECVpwDdXkVPt3xSt3hKDI2PtjVRt3RZA4hKtvTLXkVP1MjKt3RPsEDTU4hKtzDbhoFRo0TLX4xMt3hKPYGVtvDat3BSwfUZMwFS3gTZLc0M1YjatDjKlY1YPEDM5I0T2IDRTQiPHgESwfUV5cmQkwjQt3hKt3hcA4hUt3hcXkVSrYjQUMTSoEjKt3hKtHjKXQkKtnmcXk1XQMUS3PjKt3hKt3hYC4RS24hK0vTLXsFSwfUZA4hKt3hKtLiK1gkPtXGVo0TLE0DL5MUZA4hKt3hKN4BUDMDVpcGVoUEdXkVSF4hKt3hKtXVPtXUTtXTZMECVokTZLgGRCIjSpYmKG4hKDwDSEEVciICSDEjPTcVTV4jY5o1Qo0DaN4hat3hKP4BSDwjUtjkblcTV1cGVoEjKtnjKt3BQlMTPhclKtnkXDUTaLECVt3hKt3hKtDDRQA0U4QkKBoDTQoTZMYjKt3hKt3hKt3TQ5s1PtfzcXQET3gUZA4hKt3hKt3hKTEjVQ4hKhwjQEkFSwfUTt3hKt3hKtLCU1gEStXFVnMGQOgGRowDdtbmKowDaBgjKCMDSYo2TlwDLUUTUDQkY1ACNh.hXgMWY1PiNvI2amIWXs0iHwXSLtnTSUszPiIkT43hKOEiKP4hKh4hKCcSQtLDR1EjVzPUSGMVdQQiKtzjKLgmKt.kKtPjKF4BQHYWPZkDUMozaBIkPA4hKt3hKt3BS14RQDYjKFgjYAoTQvrTS2MTTMEjYN4BUB4hKL4hKtnWQtTDTlEzRQsFSA8VQQUmKtzDRtXmKtvjKtLzLE4BQDYWPBETULYid48zTA4xSt3hKt3BS14RQ2TjKBwjcAQVS5c0MHkFS3gzPCUDQlgzYt3hKAAETtvDSDoEd3XUXmEjTMYlcE4hKt3hKt3hKh7hO7zVZjk1PC8hO77BYkgWYjMEcgQWY9.."
									}
,
									"fileref" : 									{
										"name" : "Dexed",
										"filename" : "Dexed.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "09a6cc789ef3b6d1d65adf6cb8a720e6"
									}

								}
 ]
						}

					}
,
					"text" : "vst~",
					"varname" : "vst~",
					"viewvisibility" : 0
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 104.0, 337.0, 122.5, 337.0 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 114.5, 330.0, 186.5, 330.0 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 125.0, 321.0, 344.5, 321.0 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 304.300003051757812, 108.0, 218.5, 108.0 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 283.905405163764954, 270.5, 93.5, 270.5 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-31", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"midpoints" : [ 525.518017649650574, 556.5, 338.905405163764954, 556.5 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-30", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 218.5, 264.0, 93.5, 264.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 590.018017649650574, 108.0, 218.5, 108.0 ],
					"source" : [ "obj-40", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 702.100006103515625, 108.0, 218.5, 108.0 ],
					"source" : [ "obj-42", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-44", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 0 ],
					"source" : [ "obj-47", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-47", 0 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 130.0, 196.0, 93.5, 196.0 ],
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-54", 0 ],
					"source" : [ "obj-50", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-50", 1 ],
					"source" : [ "obj-53", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-44", 0 ],
					"source" : [ "obj-54", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"midpoints" : [ 393.100006103515625, 108.0, 218.5, 108.0 ],
					"source" : [ "obj-57", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 100.75, 513.527026832103729, 119.5, 513.527026832103729 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"source" : [ "obj-7", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 356.0, 277.0, 93.5, 277.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 186.5, 384.527026832103729, 344.5, 384.527026832103729 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"midpoints" : [ 556.405405163764954, 384.513513416051865, 344.5, 384.513513416051865 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-11", 0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-6" : [ "live.gain~", "Gain", 0 ],
			"obj-1" : [ "vst~", "vst~", 0 ],
			"parameterbanks" : 			{

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "Dexed.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
, 			{
				"name" : "dexed-automated-v2.js",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/7. Frequency Modulation part 2/Code",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 0.996078431372549, 0.996078431372549, 0.996078431372549, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
	}

}
