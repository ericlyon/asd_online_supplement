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
		"rect" : [ 227.0, 221.0, 1749.0, 1144.0 ],
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
					"id" : "obj-38",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 374.0, 336.0, 312.0, 27.0 ],
					"text" : "4. view VST parameters in this umenu"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-36",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 482.0, 237.0, 209.0, 27.0 ],
					"text" : "3. list all VST parameters"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-34",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 539.0, 50.0, 324.0, 47.0 ],
					"text" : "5. select one of the 32 DX7 algorithms, \nusing the ALGORITHM parameter"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.0, 102.0, 131.0, 29.0 ],
					"text" : "scale 1 32 0. 1."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-31",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 482.0, 65.0, 50.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 482.0, 138.0, 141.0, 29.0 ],
					"text" : "ALGORITHM $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"items" : [ "Cutoff", ",", "Resonance", ",", "Output", ",", "MASTER TUNE ADJ", ",", "ALGORITHM", ",", "FEEDBACK", ",", "OSC KEY SYNC", ",", "LFO SPEED", ",", "LFO DELAY", ",", "LFO PM DEPTH", ",", "LFO AM DEPTH", ",", "LFO KEY SYNC", ",", "LFO WAVE", ",", "MIDDLE C", ",", "P MODE SENS.", ",", "PITCH EG RATE 1", ",", "PITCH EG RATE 2", ",", "PITCH EG RATE 3", ",", "PITCH EG RATE 4", ",", "PITCH EG LEVEL 1", ",", "PITCH EG LEVEL 2", ",", "PITCH EG LEVEL 3", ",", "PITCH EG LEVEL 4", ",", "OP1 EG RATE 1", ",", "OP1 EG RATE 2", ",", "OP1 EG RATE 3", ",", "OP1 EG RATE 4", ",", "OP1 EG LEVEL 1", ",", "OP1 EG LEVEL 2", ",", "OP1 EG LEVEL 3", ",", "OP1 EG LEVEL 4", ",", "OP1 OUTPUT LEVEL", ",", "OP1 MODE", ",", "OP1 F COARSE", ",", "OP1 F FINE", ",", "OP1 OSC DETUNE", ",", "OP1 BREAK POINT", ",", "OP1 L SCALE DEPTH", ",", "OP1 R SCALE DEPTH", ",", "OP1 L KEY SCALE", ",", "OP1 R KEY SCALE", ",", "OP1 RATE SCALING", ",", "OP1 A MOD SENS.", ",", "OP1 KEY VELOCITY", ",", "OP1 SWITCH", ",", "OP2 EG RATE 1", ",", "OP2 EG RATE 2", ",", "OP2 EG RATE 3", ",", "OP2 EG RATE 4", ",", "OP2 EG LEVEL 1", ",", "OP2 EG LEVEL 2", ",", "OP2 EG LEVEL 3", ",", "OP2 EG LEVEL 4", ",", "OP2 OUTPUT LEVEL", ",", "OP2 MODE", ",", "OP2 F COARSE", ",", "OP2 F FINE", ",", "OP2 OSC DETUNE", ",", "OP2 BREAK POINT", ",", "OP2 L SCALE DEPTH", ",", "OP2 R SCALE DEPTH", ",", "OP2 L KEY SCALE", ",", "OP2 R KEY SCALE", ",", "OP2 RATE SCALING", ",", "OP2 A MOD SENS.", ",", "OP2 KEY VELOCITY", ",", "OP2 SWITCH", ",", "OP3 EG RATE 1", ",", "OP3 EG RATE 2", ",", "OP3 EG RATE 3", ",", "OP3 EG RATE 4", ",", "OP3 EG LEVEL 1", ",", "OP3 EG LEVEL 2", ",", "OP3 EG LEVEL 3", ",", "OP3 EG LEVEL 4", ",", "OP3 OUTPUT LEVEL", ",", "OP3 MODE", ",", "OP3 F COARSE", ",", "OP3 F FINE", ",", "OP3 OSC DETUNE", ",", "OP3 BREAK POINT", ",", "OP3 L SCALE DEPTH", ",", "OP3 R SCALE DEPTH", ",", "OP3 L KEY SCALE", ",", "OP3 R KEY SCALE", ",", "OP3 RATE SCALING", ",", "OP3 A MOD SENS.", ",", "OP3 KEY VELOCITY", ",", "OP3 SWITCH", ",", "OP4 EG RATE 1", ",", "OP4 EG RATE 2", ",", "OP4 EG RATE 3", ",", "OP4 EG RATE 4", ",", "OP4 EG LEVEL 1", ",", "OP4 EG LEVEL 2", ",", "OP4 EG LEVEL 3", ",", "OP4 EG LEVEL 4", ",", "OP4 OUTPUT LEVEL", ",", "OP4 MODE", ",", "OP4 F COARSE", ",", "OP4 F FINE", ",", "OP4 OSC DETUNE", ",", "OP4 BREAK POINT", ",", "OP4 L SCALE DEPTH", ",", "OP4 R SCALE DEPTH", ",", "OP4 L KEY SCALE", ",", "OP4 R KEY SCALE", ",", "OP4 RATE SCALING", ",", "OP4 A MOD SENS.", ",", "OP4 KEY VELOCITY", ",", "OP4 SWITCH", ",", "OP5 EG RATE 1", ",", "OP5 EG RATE 2", ",", "OP5 EG RATE 3", ",", "OP5 EG RATE 4", ",", "OP5 EG LEVEL 1", ",", "OP5 EG LEVEL 2", ",", "OP5 EG LEVEL 3", ",", "OP5 EG LEVEL 4", ",", "OP5 OUTPUT LEVEL", ",", "OP5 MODE", ",", "OP5 F COARSE", ",", "OP5 F FINE", ",", "OP5 OSC DETUNE", ",", "OP5 BREAK POINT", ",", "OP5 L SCALE DEPTH", ",", "OP5 R SCALE DEPTH", ",", "OP5 L KEY SCALE", ",", "OP5 R KEY SCALE", ",", "OP5 RATE SCALING", ",", "OP5 A MOD SENS.", ",", "OP5 KEY VELOCITY", ",", "OP5 SWITCH", ",", "OP6 EG RATE 1", ",", "OP6 EG RATE 2", ",", "OP6 EG RATE 3", ",", "OP6 EG RATE 4", ",", "OP6 EG LEVEL 1", ",", "OP6 EG LEVEL 2", ",", "OP6 EG LEVEL 3", ",", "OP6 EG LEVEL 4", ",", "OP6 OUTPUT LEVEL", ",", "OP6 MODE", ",", "OP6 F COARSE", ",", "OP6 F FINE", ",", "OP6 OSC DETUNE", ",", "OP6 BREAK POINT", ",", "OP6 L SCALE DEPTH", ",", "OP6 R SCALE DEPTH", ",", "OP6 L KEY SCALE", ",", "OP6 R KEY SCALE", ",", "OP6 RATE SCALING", ",", "OP6 A MOD SENS.", ",", "OP6 KEY VELOCITY", ",", "OP6 SWITCH" ],
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 269.0, 336.0, 100.0, 29.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-26",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 269.0, 301.0, 94.0, 29.0 ],
					"text" : "append $1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 406.0, 236.0, 69.0, 29.0 ],
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 207.0, 145.0, 229.0, 27.0 ],
					"text" : "2. click to load VST plugin. "
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 112.0, 64.0, 324.0, 27.0 ],
					"text" : "1. double-click to set desired MIDI input"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 156.0, 463.0, 45.0, 45.0 ]
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
					"patching_rect" : [ 156.0, 301.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_initial" : [ 0.0 ],
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
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
					"patching_rect" : [ 156.0, 145.0, 43.0, 29.0 ],
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
					"patching_rect" : [ 156.0, 213.0, 92.5, 29.0 ],
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
							"blob" : "6099.CMlaKA....fQPMDZ....APTY3QF.A.......fTDSEMDUR8jSfDC..........................bwkVMjLg33E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HhL3HBHs8lau0zajUVOh.iHfTlamklakQUdvUVOhDiHfzVXyQWYxQUctUVOh.iHf7FbScWZzMFZ8HRLwDSLwDiHfbGZkUFaM8FY8HBLf.CHv.BLh.hYu8FcM8FY8HBLf.CHv.BLh.hXxUVXzgVSuQVOh.CHv.BLf.iHfDlYzUlbz8VcigVSuQVOh.CHv.BLf.iH9vCYkgWYjIDauIFHhE1bkYCM5LWdyUFd8HBMw.CMtX2SD4RRtHjKG4BUKkFL3gkKt3hKt3hKtLiK1gkKtXlPtTTdXQGSF4hKt3hKt3hKN4BSFEjK54BT2wDaKkVPt3hKt3hKtX1PtjVPt3xStPESocGdX4hKt3hKt3hKy3hcXQjKPYjKEkGV3wjQt3hKt3hKt3hStvjQt3BVDozcLECVhEjKt3hKt3hKlMjKokjKtjVSwfUZIkFS3gTdG8DSB4hKt.ESXwTUXQSPRAUaEYkVzQiPRwzatfTZUUDUtPzPt3hKt3DRPUTQtXGURojc2gkXuUjK34hKt3hYAEjVQ4hK24lZBYFRrgEZAAkR33hZBgzY1EEQtXWSO4lcKk1cEckKlkmUtvjKhQDSFEjKhMDRloWTWQ1aE4BQAYGVB4hKAgUTP4hLlklP0wDaX4RP1kTZAY2PXclYXQDQlgEZIwFVvPTZLg2L1MzYLIDQt3RPCwTQTUkTqQUTl4hPHYFSrsTLTACVl0jQtPiKt3hKtMTPoUkcRkFMngTXMEyUoEjKt3hKt3RdAY1TGQzPVkTUScUZvPjKt3hKt3hKlIlXxUDQCYVQNcidvfUSA4hKt3hKt3BSEUzSI4xQXc1POMVSVMkKt3hKt3hKtjlY2QkPHw1TlYmPOkVUE4hKt3hKt3hYJ4BSF4xQXU0Uo0jQtnmKPcUT2XGRt3hKtbmKlA0ZEYzXyUkQZgWTrIVZYIkQuwjQRgTP1kjKDY2P1EkYTQjK1gUapEERoMFQP4hXB4hK23hXt.0PA4BSFMUZ3fGVXEjQtzlKt3xStbjKhkjKtj1XRYzYLESTtDjcI4BQ1MzLPYGVD4hcXwlZAkTZmQjTtHlPt3xMt3jKyPjPtvjQSkFN3gEVAYjKs4hKt7jYC4hKH4hKTgCLWcCRowDdHk2QNQkPt3hKt.EVtTjTAkDLSgTPBgjYtfGV1QjKFQFND4hK1kVStPjcQwDSrcjK2.CRHY2cXYTPt3hdtXGRCYWQD8TVt3RYAIkQmwDaQ4hKt3hKt3hKgI1cXIjKPUEdHYlPokEQt3haC4xZtXmPtbiZD4hbpsDT1YGVFEjKtnmYt3xPxIzPOEkKtnDM2YTYLwVTt3hKO4hKt3RZicGVB4hYWMDNE8DdHkFS3gjYCgFQB4hKpEzPCcFahUGLVgkYTMDRhU0ZOgkd3gUZA4hKl4hKtLDT24BSuAEUT8VZDoFSVckKt3BRtfTPtXicQYEQtXWUyIWTKkVSF4hKtfGVtvjYt.ESr4hKTs1SXMCdXkVPt3hYt3hKCYmKtbzaP4hUukFQpwjUW4hKtfjKHEjKCAUTVQDQtX0bxE0Ro0jQt3hK3gkKLYlKPwDatDjKt3hKtXFS3gTZLMjYPYjKt4hKHYmKScVVWokdEwlXl4hPW4hKtPTYLECVoEjKt3BTt3BTM4BUB4hYQ4hKQUTXMECVt3hKt3hKtPkKynlKtLiPt7DVBcUZMYjKt3hKt3hKE4RZI4hKt3hKtXFSwfUZA4hKt3hKt3FRtPkKLwFStnlYDYVSwfkKlEjKE4hKN4BRE4RZzHjKhgkTWkVSF4hKt3hKt3hKtjVQPETZMECVokTZLgGR44xRhEjKO4BTDwDSEEVcMAyXxEDdKUmcqMUYYomPoETLR4hXC4RXt.kXtbyPA4hYncTVPgGVZ8VQtjmKt3hKDcmKokjKtjyMqEESLYDVOEjKL4xLA4RVt3RTD4hKJQlZAkTZuslUtvzPt3hKPg0ULwlKAoVdWYzb1gkYyUjKn4hYH4hZF4BRI4hKtMSTFoFSrYkVAYGSt3hKtjDS2gkPt.kSSETQUEGSowDdTAUPh4RZHk1YBYzSIQDRGUEagEyZrMlXMESQKMicXk0cE4xSt3hKDgUQt.CTS4hPzXmPhMSUVoUP1MjKt3RPVEkKRYjKtXkSLoVRosFLQ4xMt3hKPY1RtX1ZK4hYqMzQigGVYcVQt7jKt3BQyLjKmkjKtfVPwXDbLYzQREjcC4xLtDjcA4BVDciLXojXtrTZAYkUtbiKt3DTtHlKLYjKtvTLXkVSwjDdTk1RNcCTA4BSF4hdAYGUAMVQHUDLDgTUAUDR44FdHEESwfUZAY1QtfkKtXVStrjPtXGSQgDZEkVSwfkKyDjKQ4hKXIDSr4hKtgVRTMycXkVSF4hYt3hKt3hQBkVRt3BLtIURYwTLXkVSrcjKL4hKtzjYO4BSV0TTHgWQo0TLX4xLA4RSt3BTBgjQtj1ankDU2bGVo0jQtXlKt3hKtPjPoEjcXkVSwPUZ3fWS3gTdtzDQt3hKTUjPLYmZQ8TRUkUMAgmRwYGLXgESFojKtXGVt3hKt3hKP4jKtXlKtvjQHk1YB4hKLYjKt3hKt3hZC4RZAYGSo0DdX4lKt3BZA4hKt3hKtPiK1gkKtXGVswjQJ4hK1gkKt3hKt3BTN4BSr4hKLY0RoclPt3BSF4hKt3hKtn1PtjVRlYTZMgGVtwTLQ4hKt3hKt3hKz3hcXIjd1gUZMYjR3gTZLg2MAIDU2n1QBIVPFUDM5A0SUs1TTUkZTM0b1MzUlk1TK0jQt3hKt3hKtbjKoUETIkVSwfkLLECVoEjKt3hKt3hcAY1Ut3hcB8jXQ4jSyoGVt3hKt3hKtXjKLYUPrwTLXk1Y4gUZMYjKt3hKt3hKt3BYA4hKKcicEEyL5IUZA4hKt3hKtXWP1gUQXgGVo0jUMkVSwfkKt3hKt3hKN4xLE4hKLYzQo0DaLgGRowDQ2X1RtLCTKAiYAUkaU0VXpUEahYlK3wjKTU0PwgTdX4hKlMjKt3hKNEjcTgjKtLzUUgmRvvjQt3xLt3hKt3BQtvjQA4hZ2UEZxglSoEjKt3jKt3hKtXjKoEkKt3hXvnTb2fGVt3hYC4hKt3xLtX2UD4hKtj0c4oTPMYjKtLiKt3hKtfkKHUzPtbCUEcib3gETA4hKN4hKt3hYC4RZQ4hKt3hKt3BRowDdHMUQO4VPEklKPQDSToGVtgiUQk1YwDlYLMUSGgjPKkVTqcjKDklKtvjKTQDUCQjKHcmPugEdXYicA4Bdt3RRC4BQBIVRt3hUlAURwwTLUMmKP0TTtXmKIclKQojKtfTTxcmRo8FQP4haB4hKt3hRE4Bat3BRmQjV1cGVGE0PtPGT1gzPHcVPRkjKtbCVPUzZLw1Uv3hYX4hK1MDVqYGVB4hcXkVSwfEdHkFS3YlcAAmKt3hKDMzPyQjZSEzc5M0QAIESyAkTFc2M2gEQA4hKt3hKt3hYCITNtfmTqg0YEgGSrUzSt3hKt3hKt3FN1gkRt3RRpgUPKk1aRkjKt3hKt3hKVEjcB4jKtIDQmoFdXYlKt3hKt.UPt3Rdtj1at3RVlcVQgwDaP4hKt3hKt3hKXEjKIQlK1gjTXcGRoEDLJ4hKt3hKt3hKCwDaB4BSwfUZMwFS3gTZLQjc1kjKX4hKXwTPTQmZ5AUQAgFSvLiTLk1cCozcLEyUt3hKt3hKt3xLtX1TGMCdXcCSRwTZ3TjKt3hKt3hKtnjKhASPzwjQOYFQ4gUYA4hKt3hKt3hYC4xTi4BQZMlctbDSrckKt3hKt3hKtXiKt3jQDkGV2gkPGkFME4hKt3hKt3hcN4hKq4xJMEiQvHGdXEVPt3hKt3hKtX1PtjVRt3RZuM0RXgzPLIVRo4BRLIjKt3BTLgEVDMUQmUkTl4hPHYFT4gUUMw1RMc2ZX4hXR0DUtX2StLiKA4BSrYkUhMDUiUUQtXGSFQjP2LjKJkjKtj1anUjQMYEV23hcII1bTIzJtXlTB4hcXMUV2AUZ2UDUtfjTB4hK18jKpslKtvjQQ0FSwfUZMYEVt3BTP4xMC4hTI4hKSMFZHgiKwf0XA4hKt3hKtrhK1gkPtX1UCgSQOgGRowDdDcWP4IlPt3hZCYTPIUDUlgTZMYmKCgjYLw1RtX2cXM1XE4RLt3hKtPzPtbTTt3RZzHjKhwjUWcUPl0jKt3hKz3BTSIjK1gEct3xQoACLU4BVC4hKt.kRDA0Zt3xLRgDULgGVhEUQt3hKt3hKH4xPoUjKtjVSwfUVLECVoEjKJQkXt3hcAA0Ut3hYLkVSrcTZMECVt3hKt3hKtHlKLYTPtvTLXkVSrwDdHkFSAgkYIclKt3BMlEET3EjLJITUsQVMIAiXNgyZQMFSFg0RAYWStHGQtPCR1gEQt.kQYYGTOkVSwfkKLMjKt3BTN4BUq4hKDg2UFAycXkVSF4hctX1QtPzQtnUTt3BdpEzPF0DaVcVP1wjKt3hKz.0cXIDQtbTYYQ0QoETLS4hKC4xPAAkKD4VQA4BRRYDSDgGVos1PtjmKt3hKpMjPokjKtnDUlEjQHkFS3gTZEMGUnoDaPIjQXA0ZTcUPBgjYtHDRl4BdT0jaSQTZuslUt3hTt3hKPgjKDsFRtfTQCUlK2gEVmUjKqQjKt3BQB4hMy3hKY0jQNoFSwfUZA4hKtfjKt7lK1QkKt.EQkgUTHkVSwfkKt3hKG4BTJ4BSr4hKyn1PKo1cXI0XvrDSt3hKtPTQtDTRB4RTtfFRjwTLXkVPt3hKt3hKQEjcXIjK1gUZMwFT4gTZLgmXPMTZMY1QtfTPF0zZpQURQo2TREjTLY1LEszayfGVqf0PtjFRTEjSpklKOETPtTVQRwTZLECSw3BTJ4BTtLjMHcFUF4hYWckKT0TZMkVStHFQLcDTl4jThQTPtfjZEAmX3gUdTMjKsIFdAwDUlMTZIAkKoU0cXIFSF4hKtX2Rj4lKBYTRAMkPDYGVUwjQGkVPt3hKtY1QJYlYgYESr4RP5omUyXWdLgGRowzQ54BTt3hcXkmYAEUQYUkTLEjPUETS5I0RtEUPhwTLW4hKt3hKt3hK13hcRUDSnITVtXlRoQSQt3hKt3hKt3hStfEQAk1ZPYjKtgGVjEjKt3hKt3hKlMjKO0jYSwjKQQzQLw1Ut3hKt3hKt3hM2zVUt3BUD4hYtbTZEwVUt3hKt3hK14jKt.iKv31cBokX2gkKt3hKt3hKt3hYC4RZAAUTREjKt3DRC0jcHMDQFwjPt3hK14jKHUUUMkDQSUTPBgjYDkGVPMiKDgGR3gkKhIjKt3hKH4BTDgjKhY2PQAEdXU0aC4Rat3hKt3hPtjVPA4hQ5YmPXg0TUkVP1kjKt3hKy3hcVQjKtXzSDcWRoUUQH4hXB4hKt3hStvjQA4hYtLzSTETSU0jQtzlKt3hKlQjKVcmKtbFTmYTaLYUUv3hcI4hKt3BRAYGVF4hcXkVSwfEdHkFS3QkKCwjcPEjKlIzPCUjdTMTQDEUQAgFS2wTLXkVSwfUZMYjKC0jQt3hKx3RZi4BQo0TLXkVSwfUZAYGTo0jQt3BSPckKtfGVo0jQQkVSwfkKxgGVoEjKBMDSwDDSLECVo0TLXkVSF4RbLECVtX1ctjVTtfTZMECVo0TLXkVPtTjKLYjKPwjcXcjY1QUZMECVo0TLX4BTA4RZA4hKC4VQC0TSwfUZMwFS3gTZLUlZt3hKt3hK4Y1cPIGTDsTQIYzRFEjPHgkYqszZ1kGVt3hKt3hKt3xLLYGVRIlKGgUPSkzMLYjKt3hKt3hKt3zPLw1PI4hPVQGUB8TZA4hKt3hKt3hY44RZuY2Ppo1ZKslc4gkKt3hKt3hKtLCS1gkRt.0RXQiTIcCSF4hKt3hKt3hKNMDSFEzRLYjU0gEdXkVPt3hKt3hKtXVdtjVTt3RZMECVokTZLgGR4cDRLYjKt3hcMwDTUMFcQECU5UjQikFMqgDYHEURoMFQF4BVB4RP2YGQPoVZFgjXmcjVyfGVQU0PtfGVD4xSHYkPxAkKtPFV3wzbLYjTh4hcJgCT24hVDEkSB4BTKcET3oTZyQUSt3hKt3hK1wjQLwlKtvTLFciaQIUZA4hKtbSTBMjYQMTZI4hKoUUTIAGSwfUXA4hKt3hKtn1Z1gkPtXGVo0TLXgGRowDdXY2PXo1TBkEQCMzbhAyTBkDQSUTPRwzbpMDRMQycXk1aC4hRt3hKDY1PBkVPt3xRyDkQhwTLX4hKlIjKt3RPyXlKWojKlYzQQcWRo0jQt3hKt3hKP4hSHoWQA4ha1gEUpgGVoEjKt3hKt3hKlMTPiEDTtHESFUTZMECVt3hKt3hKt3xLlYlUD4hKGkVT2gTZMYEQt3hKt3hKt3DQLYjKtvDaXszcowDdHkFSPwjcHkUPt3BRlcVTIcGQUUTRUszTiUDUT4lKGg0LvPkKAYlRw3BTtLict.kQtX2QHIVPGk1XqAkK1IUPNwjKNgjcq4hKtQDSLAkTTkVTD4RclA0PtX1PEkVRt3BVtI0PJwjQWITPPsTR14hKy3BTOQjKlcDcl4xPo0TLP4hdBIDSD4hSt.0Zt3hcpQDQ1ITUokEQtHmaPMjKtbTQokjKtPVS5c0MHkFS3gTZt3jYCEkK2jWQXwTUPgTQpQUPAIDRl4BdXkVTQ4TZMwlPt3hKt3hKt3jKxkFRoMlcXk1Z2gUZMYjKt3hKt3hYC4xbXEUSowTLXMFSwfUZA4hKt3hKtLiK1gkRtgWQo0jUFkVSwfkKt3hKt3hKN4BSrMzQycVQo8lTUkVSF4hKt3hKtX1PtHURB4haLECVpwTLXkVPt3hKt3hKPEjcXQEVPAUZMECV3gTZLg2LlETZt3hKtPzPtTzcTE0PQsFUOQCQHcGSF4hKtXGVo0jQt7jKt3BQh4hKLkjKtrza3EEZLECVoEjcC4hKtDTdAYGVB4hcXgDNQQjKXQjKtbiKt3BT18jKLYDQtvTLXoFS3gUZA4hKO4hKtPjbC4RZI4hKoEjKt3BSwfUZAY2Pt3hKA0VPPUkKt3RSvIlZHkVSwfkK23hKt.kcX4BSr4hKLECVo0DaLgGRowzU2XmQt4RPtXlYmAUPznmTScmPHQEMBgDVLECVYo2cFUFSF4hKt3hK1EjKV4hK1gUZMwlQFU0PMkVPt3hKt3hPtfEUt3hd1gUZiE0TMgCQt3hKt3hKlMjKMcmKtTCSwf0ZLECVoEjKt3hKt3xLtXGVB4hcXkVSwTTSvn2ToEjKt3hKt3jKTQzPXo1cXkVU3gUZMYjKt3hKt3hYA4hUQ4hQo0TLXkVRowDdHMjPNolctbjKtPDSLUTX0MlLLQTPBQ0YQYkSlomZGkVSr4jKt4hKt.kKLQDSV4RVxY1QYY2cXkVPt3hRt3hKDY1PAI1Yt3hVhQTQswTLX4hKt3hKt3RPHEETWkGUtHjRPEkRo0jQt3hKt3hKt3hSEo2ZC4BR2gEUPgGVoEjKt3hKt3hKtPUPZEkKtHFSFUTZLECVQ4hKt3hKt3xLTYGVL4hYXg1bD8DdHkFS34xctjFSrIDRtLzPLkkdSYFSvTUQUQDUlYFL3HBHhE1bkYCM5.mbuclbg0VOhDiMw3RZMYTQzvTLXojKt3hKt3hKt3hKt3hbC4RTLESPGwTLXkESwfUZA4hKt3hKt3hKt3hK5IjKKQUdAkFSwf0XLECVoEjKt3hKt3hKt3hKtvjQtTja3EzULECVYwTLXkVPt3hKt3hKt3hKt3BSF4xQhoWPgg0cXAGUvfUZA4hKt3hKt3hKt3hKHUjKQ4hcA4FSwfkZLECVoEjKt3hKt3hKt3hKtvjQtnDVlITPMECVokTZLgGRoQjQtXGRt3hKtDjK14hKTQzTE0DQUIENpMkYDMjKt3hKt3hKtHxK9vSaoQVZCMzK9vyKjUFdkQ1TzEFck4C."
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
									"embed" : 0,
									"snapshot" : 									{
										"pluginname" : "Dexed.vst",
										"plugindisplayname" : "Dexed",
										"pluginsavedname" : "/Library/Audio/Plug-Ins/VST/Dexed.vst",
										"pluginsaveduniqueid" : 0,
										"version" : 1,
										"isbank" : 0,
										"isbase64" : 1,
										"blob" : "6099.CMlaKA....fQPMDZ....APTY3QF.A.......fTDSEMDUR8jSfDC..........................bwkVMjLg33E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HhL3HBHs8lau0zajUVOh.iHfTlamklakQUdvUVOhDiHfzVXyQWYxQUctUVOh.iHf7FbScWZzMFZ8HRLwDSLwDiHfbGZkUFaM8FY8HBLf.CHv.BLh.hYu8FcM8FY8HBLf.CHv.BLh.hXxUVXzgVSuQVOh.CHv.BLf.iHfDlYzUlbz8VcigVSuQVOh.CHv.BLf.iH9vCYkgWYjIDauIFHhE1bkYCM5LWdyUFd8HBMw.CMtX2SD4RRtHjKG4BUKkFL3gkKt3hKt3hKtLiK1gkKtXlPtTTdXQGSF4hKt3hKt3hKN4BSFEjK54BT2wDaKkVPt3hKt3hKtX1PtjVPt3xStPESocGdX4hKt3hKt3hKy3hcXQjKPYjKEkGV3wjQt3hKt3hKt3hStvjQt3BVDozcLECVhEjKt3hKt3hKlMjKokjKtjVSwfUZIkFS3gTdG8DSB4hKt.ESXwTUXQSPRAUaEYkVzQiPRwzatfTZUUDUtPzPt3hKt3DRPUTQtXGURojc2gkXuUjK34hKt3hYAEjVQ4hK24lZBYFRrgEZAAkR33hZBgzY1EEQtXWSO4lcKk1cEckKlkmUtvjKhQDSFEjKhMDRloWTWQ1aE4BQAYGVB4hKAgUTP4hLlklP0wDaX4RP1kTZAY2PXclYXQDQlgEZIwFVvPTZLg2L1MzYLIDQt3RPCwTQTUkTqQUTl4hPHYFSrsTLTACVl0jQtPiKt3hKtMTPoUkcRkFMngTXMEyUoEjKt3hKt3RdAY1TGQzPVkTUScUZvPjKt3hKt3hKlIlXxUDQCYVQNcidvfUSA4hKt3hKt3BSEUzSI4xQXc1POMVSVMkKt3hKt3hKtjlY2QkPHw1TlYmPOkVUE4hKt3hKt3hYJ4BSF4xQXU0Uo0jQtnmKPcUT2XGRt3hKtbmKlA0ZEYzXyUkQZgWTrIVZYIkQuwjQRgTP1kjKDY2P1EkYTQjK1gUapEERoMFQP4hXB4hK23hXt.0PA4BSFMUZ3fGVXEjQtzlKt3xStbjKhkjKtj1XRYzYLESTtDjcI4BQ1MzLPYGVD4hcXwlZAkTZmQjTtHlPt3xMt3jKyPjPtvjQSkFN3gEVAYjKs4hKt7jYC4hKH4hKTgCLWcCRowDdHk2QNQkPt3hKt.EVtTjTAkDLSgTPBgjYtfGV1QjKFQFND4hK1kVStPjcQwDSrcjK2.CRHY2cXYTPt3hdtXGRCYWQD8TVt3RYAIkQmwDaQ4hKt3hKt3hKgI1cXIjKPUEdHYlPokEQt3haC4xZtXmPtbiZD4hbpsDT1YGVFEjKtnmYt3xPxIzPOEkKtnDM2YTYLwVTt3hKO4hKt3RZicGVB4hYWMDNE8DdHkFS3gjYCgFQB4hKpEzPCcFahUGLVgkYTMDRhU0ZOgkd3gUZA4hKl4hKtLDT24BSuAEUT8VZDoFSVckKt3BRtfTPtXicQYEQtXWUyIWTKkVSF4hKtfGVtvjYt.ESr4hKTs1SXMCdXkVPt3hYt3hKCYmKtbzaP4hUukFQpwjUW4hKtfjKHEjKCAUTVQDQtX0bxE0Ro0jQt3hK3gkKLYlKPwDatDjKt3hKtXFS3gTZLMjYPYjKt4hKHYmKScVVWokdEwlXl4hPW4hKtPTYLECVoEjKt3BTt3BTM4BUB4hYQ4hKQUTXMECVt3hKt3hKtPkKynlKtLiPt7DVBcUZMYjKt3hKt3hKE4RZI4hKt3hKtXFSwfUZA4hKt3hKt3FRtPkKLwFStnlYDYVSwfkKlEjKE4hKN4BRE4RZzHjKhgkTWkVSF4hKt3hKt3hKtjVQPETZMECVokTZLgGR44xRhEjKO4BTDwDSEEVcMAyXxEDdKUmcqMUYYomPoETLR4hXC4RXt.kXtbyPA4hYncTVPgGVZ8VQtjmKt3hKDcmKokjKtjyMqEESLYDVOEjKL4xLA4RVt3RTD4hKJQlZAkTZuslUtvzPt3hKPg0ULwlKAoVdWYzb1gkYyUjKn4hYH4hZF4BRI4hKtMSTFoFSrYkVAYGSt3hKtjDS2gkPt.kSSETQUEGSowDdTAUPh4RZHk1YBYzSIQDRGUEagEyZrMlXMESQKMicXk0cE4xSt3hKDgUQt.CTS4hPzXmPhMSUVoUP1MjKt3RPVEkKRYjKtXkSLoVRosFLQ4xMt3hKPY1RtX1ZK4hYqMzQigGVYcVQt7jKt3BQyLjKmkjKtfVPwXDbLYzQREjcC4xLtDjcA4BVDciLXojXtrTZAYkUtbiKt3DTtHlKLYjKtvTLXkVSwjDdTk1RNcCTA4BSF4hdAYGUAMVQHUDLDgTUAUDR44FdHEESwfUZAY1QtfkKtXVStrjPtXGSQgDZEkVSwfkKyDjKQ4hKXIDSr4hKtgVRTMycXkVSF4hYt3hKt3hQBkVRt3BLtIURYwTLXkVSrcjKL4hKtzjYO4BSV0TTHgWQo0TLX4xLA4RSt3BTBgjQtj1ankDU2bGVo0jQtXlKt3hKtPjPoEjcXkVSwPUZ3fWS3gTdtzDQt3hKTUjPLYmZQ8TRUkUMAgmRwYGLXgESFojKtXGVt3hKt3hKP4jKtXlKtvjQHk1YB4hKLYjKt3hKt3hZC4RZAYGSo0DdX4lKt3BZA4hKt3hKtPiK1gkKtXGVswjQJ4hK1gkKt3hKt3BTN4BSr4hKLY0RoclPt3BSF4hKt3hKtn1PtjVRlYTZMgGVtwTLQ4hKt3hKt3hKz3hcXIjd1gUZMYjR3gTZLg2MAIDU2n1QBIVPFUDM5A0SUs1TTUkZTM0b1MzUlk1TK0jQt3hKt3hKtbjKoUETIkVSwfkLLECVoEjKt3hKt3hcAY1Ut3hcB8jXQ4jSyoGVt3hKt3hKtXjKLYUPrwTLXk1Y4gUZMYjKt3hKt3hKt3BYA4hKKcicEEyL5IUZA4hKt3hKtXWP1gUQXgGVo0jUMkVSwfkKt3hKt3hKN4xLE4hKLYzQo0DaLgGRowDQ2X1RtLCTKAiYAUkaU0VXpUEahYlK3wjKTU0PwgTdX4hKlMjKt3hKNEjcTgjKtLzUUgmRvvjQt3xLt3hKt3BQtvjQA4hZ2UEZxglSoEjKt3jKt3hKtXjKoEkKt3hXvnTb2fGVt3hYC4hKt3xLtX2UD4hKtj0c4oTPMYjKtLiKt3hKtfkKHUzPtbCUEcib3gETA4hKN4hKt3hYC4RZQ4hKt3hKt3BRowDdHMUQO4VPEklKPQDSToGVtgiUQk1YwDlYLMUSGgjPKkVTqcjKDklKtvjKTQDUCQjKHcmPugEdXYicA4Bdt3RRC4BQBIVRt3hUlAURwwTLUMmKP0TTtXmKIclKQojKtfTTxcmRo8FQP4haB4hKt3hRE4Bat3BRmQjV1cGVGE0PtPGT1gzPHcVPRkjKtbCVPUzZLw1Uv3hYX4hK1MDVqYGVB4hcXkVSwfEdHkFS3YlcAAmKt3hKDMzPyQjZSEzc5M0QAIESyAkTFc2M2gEQA4hKt3hKt3hYCITNtfmTqg0YEgGSrUzSt3hKt3hKt3FN1gkRt3RRpgUPKk1aRkjKt3hKt3hKVEjcB4jKtIDQmoFdXYlKt3hKt.UPt3Rdtj1at3RVlcVQgwDaP4hKt3hKt3hKXEjKIQlK1gjTXcGRoEDLJ4hKt3hKt3hKCwDaB4BSwfUZMwFS3gTZLQjc1kjKX4hKXwTPTQmZ5AUQAgFSvLiTLk1cCozcLEyUt3hKt3hKt3xLtX1TGMCdXcCSRwTZ3TjKt3hKt3hKtnjKhASPzwjQOYFQ4gUYA4hKt3hKt3hYC4xTi4BQZMlctbDSrckKt3hKt3hKtXiKt3jQDkGV2gkPGkFME4hKt3hKt3hcN4hKq4xJMEiQvHGdXEVPt3hKt3hKtX1PtjVRt3RZuM0RXgzPLIVRo4BRLIjKt3BTLgEVDMUQmUkTl4hPHYFT4gUUMw1RMc2ZX4hXR0DUtX2StLiKA4BSrYkUhMDUiUUQtXGSFQjP2LjKJkjKtj1anUjQMYEV23hcII1bTIzJtXlTB4hcXMUV2AUZ2UDUtfjTB4hK18jKpslKtvjQQ0FSwfUZMYEVt3BTP4xMC4hTI4hKSMFZHgiKwf0XA4hKt3hKtrhK1gkPtX1UCgSQOgGRowDdDcWP4IlPt3hZCYTPIUDUlgTZMYmKCgjYLw1RtX2cXM1XE4RLt3hKtPzPtbTTt3RZzHjKhwjUWcUPl0jKt3hKz3BTSIjK1gEct3xQoACLU4BVC4hKt.kRDA0Zt3xLRgDULgGVhEUQt3hKt3hKH4xPoUjKtjVSwfUVLECVoEjKJQkXt3hcAA0Ut3hYLkVSrcTZMECVt3hKt3hKtHlKLYTPtvTLXkVSrwDdHkFSAgkYIclKt3BMlEET3EjLJITUsQVMIAiXNgyZQMFSFg0RAYWStHGQtPCR1gEQt.kQYYGTOkVSwfkKLMjKt3BTN4BUq4hKDg2UFAycXkVSF4hctX1QtPzQtnUTt3BdpEzPF0DaVcVP1wjKt3hKz.0cXIDQtbTYYQ0QoETLS4hKC4xPAAkKD4VQA4BRRYDSDgGVos1PtjmKt3hKpMjPokjKtnDUlEjQHkFS3gTZEMGUnoDaPIjQXA0ZTcUPBgjYtHDRl4BdT0jaSQTZuslUt3hTt3hKPgjKDsFRtfTQCUlK2gEVmUjKqQjKt3BQB4hMy3hKY0jQNoFSwfUZA4hKtfjKt7lK1QkKt.EQkgUTHkVSwfkKt3hKG4BTJ4BSr4hKyn1PKo1cXI0XvrDSt3hKtPTQtDTRB4RTtfFRjwTLXkVPt3hKt3hKQEjcXIjK1gUZMwFT4gTZLgmXPMTZMY1QtfTPF0zZpQURQo2TREjTLY1LEszayfGVqf0PtjFRTEjSpklKOETPtTVQRwTZLECSw3BTJ4BTtLjMHcFUF4hYWckKT0TZMkVStHFQLcDTl4jThQTPtfjZEAmX3gUdTMjKsIFdAwDUlMTZIAkKoU0cXIFSF4hKtX2Rj4lKBYTRAMkPDYGVUwjQGkVPt3hKtY1QJYlYgYESr4RP5omUyXWdLgGRowzQ54BTt3hcXkmYAEUQYUkTLEjPUETS5I0RtEUPhwTLW4hKt3hKt3hK13hcRUDSnITVtXlRoQSQt3hKt3hKt3hStfEQAk1ZPYjKtgGVjEjKt3hKt3hKlMjKO0jYSwjKQQzQLw1Ut3hKt3hKt3hM2zVUt3BUD4hYtbTZEwVUt3hKt3hK14jKt.iKv31cBokX2gkKt3hKt3hKt3hYC4RZAAUTREjKt3DRC0jcHMDQFwjPt3hK14jKHUUUMkDQSUTPBgjYDkGVPMiKDgGR3gkKhIjKt3hKH4BTDgjKhY2PQAEdXU0aC4Rat3hKt3hPtjVPA4hQ5YmPXg0TUkVP1kjKt3hKy3hcVQjKtXzSDcWRoUUQH4hXB4hKt3hStvjQA4hYtLzSTETSU0jQtzlKt3hKlQjKVcmKtbFTmYTaLYUUv3hcI4hKt3BRAYGVF4hcXkVSwfEdHkFS3QkKCwjcPEjKlIzPCUjdTMTQDEUQAgFS2wTLXkVSwfUZMYjKC0jQt3hKx3RZi4BQo0TLXkVSwfUZAYGTo0jQt3BSPckKtfGVo0jQQkVSwfkKxgGVoEjKBMDSwDDSLECVo0TLXkVSF4RbLECVtX1ctjVTtfTZMECVo0TLXkVPtTjKLYjKPwjcXcjY1QUZMECVo0TLX4BTA4RZA4hKC4VQC0TSwfUZMwFS3gTZLUlZt3hKt3hK4Y1cPIGTDsTQIYzRFEjPHgkYqszZ1kGVt3hKt3hKt3xLLYGVRIlKGgUPSkzMLYjKt3hKt3hKt3zPLw1PI4hPVQGUB8TZA4hKt3hKt3hY44RZuY2Ppo1ZKslc4gkKt3hKt3hKtLCS1gkRt.0RXQiTIcCSF4hKt3hKt3hKNMDSFEzRLYjU0gEdXkVPt3hKt3hKtXVdtjVTt3RZMECVokTZLgGR4cDRLYjKt3hcMwDTUMFcQECU5UjQikFMqgDYHEURoMFQF4BVB4RP2YGQPoVZFgjXmcjVyfGVQU0PtfGVD4xSHYkPxAkKtPFV3wzbLYjTh4hcJgCT24hVDEkSB4BTKcET3oTZyQUSt3hKt3hK1wjQLwlKtvTLFciaQIUZA4hKtbSTBMjYQMTZI4hKoUUTIAGSwfUXA4hKt3hKtn1Z1gkPtXGVo0TLXgGRowDdXY2PXo1TBkEQCMzbhAyTBkDQSUTPRwzbpMDRMQycXk1aC4hRt3hKDY1PBkVPt3xRyDkQhwTLX4hKlIjKt3RPyXlKWojKlYzQQcWRo0jQt3hKt3hKP4hSHoWQA4ha1gEUpgGVoEjKt3hKt3hKlMTPiEDTtHESFUTZMECVt3hKt3hKt3xLlYlUD4hKGkVT2gTZMYEQt3hKt3hKt3DQLYjKtvDaXszcowDdHkFSPwjcHkUPt3BRlcVTIcGQUUTRUszTiUDUT4lKGg0LvPkKAYlRw3BTtLict.kQtX2QHIVPGk1XqAkK1IUPNwjKNgjcq4hKtQDSLAkTTkVTD4RclA0PtX1PEkVRt3BVtI0PJwjQWITPPsTR14hKy3BTOQjKlcDcl4xPo0TLP4hdBIDSD4hSt.0Zt3hcpQDQ1ITUokEQtHmaPMjKtbTQokjKtPVS5c0MHkFS3gTZt3jYCEkK2jWQXwTUPgTQpQUPAIDRl4BdXkVTQ4TZMwlPt3hKt3hKt3jKxkFRoMlcXk1Z2gUZMYjKt3hKt3hYC4xbXEUSowTLXMFSwfUZA4hKt3hKtLiK1gkRtgWQo0jUFkVSwfkKt3hKt3hKN4BSrMzQycVQo8lTUkVSF4hKt3hKtX1PtHURB4haLECVpwTLXkVPt3hKt3hKPEjcXQEVPAUZMECV3gTZLg2LlETZt3hKtPzPtTzcTE0PQsFUOQCQHcGSF4hKtXGVo0jQt7jKt3BQh4hKLkjKtrza3EEZLECVoEjcC4hKtDTdAYGVB4hcXgDNQQjKXQjKtbiKt3BT18jKLYDQtvTLXoFS3gUZA4hKO4hKtPjbC4RZI4hKoEjKt3BSwfUZAY2Pt3hKA0VPPUkKt3RSvIlZHkVSwfkK23hKt.kcX4BSr4hKLECVo0DaLgGRowzU2XmQt4RPtXlYmAUPznmTScmPHQEMBgDVLECVYo2cFUFSF4hKt3hK1EjKV4hK1gUZMwlQFU0PMkVPt3hKt3hPtfEUt3hd1gUZiE0TMgCQt3hKt3hKlMjKMcmKtTCSwf0ZLECVoEjKt3hKt3xLtXGVB4hcXkVSwTTSvn2ToEjKt3hKt3jKTQzPXo1cXkVU3gUZMYjKt3hKt3hYA4hUQ4hQo0TLXkVRowDdHMjPNolctbjKtPDSLUTX0MlLLQTPBQ0YQYkSlomZGkVSr4jKt4hKt.kKLQDSV4RVxY1QYY2cXkVPt3hRt3hKDY1PAI1Yt3hVhQTQswTLX4hKt3hKt3RPHEETWkGUtHjRPEkRo0jQt3hKt3hKt3hSEo2ZC4BR2gEUPgGVoEjKt3hKt3hKtPUPZEkKtHFSFUTZLECVQ4hKt3hKt3xLTYGVL4hYXg1bD8DdHkFS34xctjFSrIDRtLzPLkkdSYFSvTUQUQDUlYFL3HBHhE1bkYCM5.mbuclbg0VOhDiMw3RZMYTQzvTLXojKt3hKt3hKt3hKt3hbC4RTLESPGwTLXkESwfUZA4hKt3hKt3hKt3hK5IjKKQUdAkFSwf0XLECVoEjKt3hKt3hKt3hKtvjQtTja3EzULECVYwTLXkVPt3hKt3hKt3hKt3BSF4xQhoWPgg0cXAGUvfUZA4hKt3hKt3hKt3hKHUjKQ4hcA4FSwfkZLECVoEjKt3hKt3hKt3hKtvjQtnDVlITPMECVokTZLgGRoQjQtXGRt3hKtDjK14hKTQzTE0DQUIENpMkYDMjKt3hKt3hKtHxK9vSaoQVZCMzK9vyKjUFdkQ1TzEFck4C."
									}
,
									"fileref" : 									{
										"name" : "Dexed",
										"filename" : "Dexed.maxsnap",
										"filepath" : "~/Documents/Max 8/Snapshots",
										"filepos" : -1,
										"snapshotfileid" : "185f5d157981f714547ca8e7508ffdd1"
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
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 186.5, 263.5, 278.5, 263.5 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 1 ],
					"midpoints" : [ 176.0, 271.0, 194.5, 271.0 ],
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 415.5, 275.0, 290.5, 275.0, 290.5, 202.0, 165.5, 202.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 491.5, 189.5, 165.5, 189.5 ],
					"source" : [ "obj-29", 0 ]
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
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-32", 0 ]
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
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 130.0, 196.0, 165.5, 196.0 ],
					"source" : [ "obj-5", 7 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"midpoints" : [ 172.75, 449.5, 191.5, 449.5 ],
					"source" : [ "obj-6", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "vst~", "vst~", 0 ],
			"obj-6" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "Dexed.maxsnap",
				"bootpath" : "~/Documents/Max 8/Snapshots",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Snapshots",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ]
	}

}
