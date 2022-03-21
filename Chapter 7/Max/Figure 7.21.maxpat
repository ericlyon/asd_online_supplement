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
		"rect" : [ 389.0, 79.0, 1192.0, 903.0 ],
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
					"id" : "obj-87",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 322.0, 93.0, 344.0, 47.0 ],
					"text" : "2. Copy the current state of the Dexed vst~ interface to the current js preset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-85",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 168.0, 231.0, 226.0, 27.0 ],
					"text" : "1. Send full list of keys to js"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-82",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 516.600006103515625, 438.0, 205.0, 29.0 ],
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
					"patching_rect" : [ 105.5, 93.0, 209.0, 29.0 ],
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
					"patching_rect" : [ 103.0, 454.0, 150.0, 29.0 ],
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
					"patching_rect" : [ 97.0, 231.0, 69.0, 29.0 ],
					"text" : "params"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 474.0, 238.0, 192.0, 29.0 ],
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
					"patching_rect" : [ 329.0, 367.0, 92.5, 29.0 ],
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
							"blob" : "6098.CMlaKA....fQPMDZ....APTY3QF.A.......fLEauM0crAxKujE..........................bgkVMjLgz3E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HhMh.Rau41aM8FYk0iHvHBHk41Yo4VYTkGbk0iHwHBHsE1bzUlbTUmak0iHvHBHuA2T2kFcigVOhDSLwDSLwHBH2gVYkwVSuQVOh.CHv.BLf.iHfX1auQWSuQVOh.CHv.BLf.iHfHlbkEFcn0zaj0iHv.BLf.CHvHBHgYFckIGcuU2Xn0zaj0iHv.BLf.CHvHhO7PVY3UFYBw1ahAhXgMWY1PiNyk2bkgWOhPSLvPiK18DQtjjKB4BYMI0RwfDLUMlKlIjKt3RPy.ETUUjKPUUS1IESWM1ZH4hat3hKP4hSDgDaA4hZqcTMToGUQgSPt3hKt3BQlMTPIslKtfEMQwjcLU0UZ4hKt3hKt3BRUYVTD4hcUQlaBsjYIUDSt3hKt3hKtnTQXUzPtH1ZIUGRDYkYAMjKt3hKt3hYSEjYu4hKnkTLRcCRowDdHMkQCwDdXojYtvDSloWXvzzUYYFRUk0YQYjTL8lKHkVUEQkKDMjKt3hKNgDTEUjK1QkTJY2cXI1aE4Bdt3hKtXVPAoUTt3xctolPlgDaXgVPPoDNtnlPHclcQQjK10zStY2RocWQW4hY4YkKL4hXDwjQA4hXCgjY5E0Uj8VQtPTP1gkPt3RPXEETtHiYoITcLwFVtDjcIkVP1MDVmYFVDQjYXgVRrgELDkFS3MicCcFSBQjKtDzPLUDUUI0ZTEkYtHDRlwDaKECUvfkYMYjKz3hKt3haCETZUYmToQCZHEVSwbUZA4hKt3hKtjWPlM0QDMjUIU0TWkFLD4hKt3hKt3hYhIlbEQzPlUjS2nGLX0TPt3hKt3hKtvTQE8TRtbDVmMzSi0jUS4hKt3hKt3hKoY1cTIDRrMkY1IzSoUUQt3hKt3hKtXlRtvjQtbDVUcUZMYjK54BTWE0M1gjKt3hK24hYPsVQFM1bUYjV3EEahkVVRYzaLYjTHEjcI4BQ1MjcQYFUD4hcX0lZQgTZiQDTtHlPt3xMtHlKPMTPtvjQSkFN3gEVAYjKs4hKt7jKG4hXI4hKoMlTFcFSwDkKAYWRtPjcCMCT1gEQtXGVroVPIk1YDIkKhIjKtbiKN4xLDIjKLYzTogCdXgUPF4Rat3hKOY1Pt3BRt3BU3.yU2fTZLgGR4cjSTIjKt3hKPgkKEIUPIAyTHEjPHYlK3gkcD4hQjgCQt3hco0jKDYWTLwDaG4xMvfDR1cGVFEjKtnmK1gzP1UDQOkkKtTVPRYzYLwVTt3hKt3hKt3RXhcGVB4BTUgGRlITZYQjKt31PtrlK1IjK2nFQtHmZKAkc1gkQA4hK5YlKtLjbBMzSQ4hKJQycFUFSrEkKt3xSt3hKtj1X2gkPtX1UCgSQOgGRowDdHY1PnQjPt3hZAMzPmwlX0AiUXYFUCgjXUs1SXoGdXkVPt3hYt3hKCA0ctvzaPQEUukFQpwjUW4hKtfjKHEjK1XWTVQjK1U0bxE0Ro0jQt3hK3gkKLYlKPwDat3BUq8DVyfGVoEjKtXlKt3xP14hKG8FTtX0aoQjZLY0Ut3hKH4BRA4xPPEkUDQjKVMmbQsTZMYjKt3BdX4BSl4BTLwlKA4hKt3hKlwDdHkFSCYFTF4hat3BR14xTmk0UZoWQrIlYtHzUt3hKDUFSwfUZA4hKt.kKt.UStPkPtXVTt3RTEEVSwfkKt3hKt3hKT4xLp4hKyHjKOgkPWkVSF4hKt3hKt3RQtjVRt3hKt3hKlwTLXkVPt3hKt3hKtgjKT4BSrwjKpYFQl0TLX4hYA4RQt3hStfTQtjFMB4hXXI0Uo0jQt3hKt3hKt3hKoUDTAkVSwfUZIkFS3gTdtrjXA4xSt.EQLwTQgUWSvLlbAg2R0Y2ZSUVV5ITZAEiTtH1PtDlKPIlK2LTPtXFZGkET3gkVuUjK44hKt3BQ24RZI4hK4byZQwDSFg0SA4BStLSPtjkKtDEQt3hRjoVPIk1aqYkKLMjKt3BTXcESr4RPpk2UFMmcXY1bE4BZtXFRtnlQtfTRt3hayDkQpwDaVoUP1wjKt3hKIwzcXIjKP4zTAUTUwwTZLgGUPEjXtjFRoclPF8TRDgzQUwVXwrFaiIVSwTzRyXGVYcWQt7jKt3BQXUjKv.0TtHDM1IjXyTkUZEjcC4hKtDjUQ4hTF4hKV4DSpkTZqASTtbiKt3BTlsjKls1RtX1ZCczX3gUVmUjKO4hKtPzLC4xYI4hKnETLFAGSFcjTAY2PtLiKAYWPtfEQ2HCVJIlKKkVPVYkK23hKNAkKh4BSF4hKLECVo0TLIgGUosjS2.UPtvjQtnWP1QUPiUDREACQHUUPEgTdtgGRQwTLXkVPlcjKX4hKl0jKKIjK1wTTHgVQo0TLX4xLA4RTt3BVBwDat3hankDUybGVo0jQtXlKt3hKtXjPokjKt.iaRkTVLECVo0DaG4BSt3hKMY1StvjUMEER3UTZMECVtLSPtzjKt.kPHYjKo8FZIQ0M2gUZMYjKl4hKt3hKDITZAYGVo0TLTkFN30DdHkmKMQjKt3BUEIDS1oVTOkTUYUSP3oTb1ACVXwjQJ4hK1gkKt3hKt3BTN4hKl4hKLYDRoclPt3BSF4hKt3hKtn1PtjVP1wTZMgGVt4hKtfVPt3hKt3hKz3hcX4hK1gUaLYjRt3hcX4hKt3hKt.kStvDat3BSVsTZmIjKtvjQt3hKt3hKpMjKokjYFkVS3gkaLESTt3hKt3hKt3BMtXGVBomcXkVSFoDdHkFS3cSPBQ0MpcjPhEjQEQidP8TUqMEUUoFUSMmcCckYoM0RMYjKt3hKt3hKG4RZUAURo0TLXICSwfUZA4hKt3hKtXWPlckKtXmPOIVTN4zb5gkKt3hKt3hKF4BSVEDaLECVocVdXkVSF4hKt3hKt3hKtPVPt3xR2XWQwLidRkVPt3hKt3hK1EjcXUDV3gUZMYUSo0TLX4hKt3hKt3hStLSQt3BSFcTZMwFS3gTZLQzMlsjKy.0RvXVPU4VUsElZUwlXl4BdL4BUUMTbHkGVt3hYC4hKt3hSAYGUH4hKCcUU3oDLLYjKtLiKt3hKtPjKLYTPtn1cUglbn4TZA4hKN4hKt3hKF4RZQ4hKtHFLJE2M3gkKtX1Pt3hKtLiK1cEQt3hKYcWdJETSF4hKy3hKt3hKX4BREMjK2PUQ2HGdXAUPt3hSt3hKtX1PtjVTt3hKt3hKtfTZLgGRSUzStETQo4BTDwDU5gka3XUTocVLgYFSS0zQHIzRoE0ZG4BQo4hKL4BUDQ0PD4BR2IzaXgGV1XWPtfmKtjzPtPjPhkjKtXkYPkTbLESUy4BTMEkK14RRm4RTJ4hKHEkb2oTZuQDTt3lPt3hKtnTQtvlKtfzYDokc2g0QQMjKzAkcHMDRmEjTI4hK2fETEsFSrcELtXFVt3hcCg0Z1gkPtXGVo0TLXgGRowDdlYWPv4hKt3BQCMzbDo1TAcmdScTPRwzbPIkQ2cycXQTPt3hKt3hKtX1PBkiK3I0ZXcVQ3wDaE8jKt3hKt3hKtgicXojKtjjZXEzRo8lTI4hKt3hKt3hUAYmPN4haBQzYpgGVl4hKt3hKPEjKtjmKo8lKtjkYmUTXLwFTt3hKt3hKt3BVA4RRj4hcHIEV2gTZAAiRt3hKt3hKt3xPLwlPtvTLXkVSrwDdHkFSDYmcI4BVt3BVLEDUzoldPUTPnwDLyHESoc2PJcGSwbkKt3hKt3hKtLiKlM0QyfGV2vjTLkFNE4hKt3hKt3hKJ4hXvDDcLYzSlQTdXUVPt3hKt3hKtX1PtL0XtPjViYmKGwDaW4hKt3hKt3hK13hKNYDQ4g0cXIzQoQSQt3hKt3hKtXmSt3xZtrRSwXDLxgGVgEjKt3hKt3hKlMjKokjKtj1aSsDVHMDShkTZtfDSB4hKt.ESXgEQSUzYUIkYtHDRlAUdXUUSrsTS2sFVtHlTMQkK18jKy3RPtvDaVYkXCQ0XUUjK1wjQDIzMC4hRI4hKo8FZEYTSVg0MtXWRhMGUBshKlIkPtXGVSk0cPk1cEQkKHIkPt3hcO4hZq4hKLYTTswTLXkVSVgkKt.ETtbyPtHURt3xTigFR33RLXMVPt3hKt3hKq3hcXIjKlc0P3TzS3gTZLgGQ2ETdhIjKtn1PFETREQkYHkVS14xPHYFSrsjK1cGViMVQtDiKt3hKDMjKGEkKtjFMB4hXLY0UWEjYM4hKt3BMt.0TB4hcXQmKtbTZv.SUtf0Pt3hKPoDQPslKtLiTHQES3gkXQUjKt3hKt3BRtLTZE4hKo0TLXkESwfUZA4hRTIlKtXWPPckKtXFSo0DaGkVSwfkKt3hKt3hKh4BSFEjKLECVo0DaLgGRowTPXYVRm4hKtPiYQAEdAIiRBUUajUSRvHlS3rVTiwjQXsTP10jKxQjKzfjcXQjKPYTV1A0So0TLX4BSC4hKt.kStP0Zt3BQ3ckQvbGVo0jQtXmKlcjKDcjKZEkKtfmZAMjQMwlUmEjcL4hKt3BMPcGVBQjKGUVVTcTZAEyTt3xPtLTPP4BQtUTPtfjTFwDQ3gUZqMjK44hKt3hZCITZI4hKJQkYAYDRowDdHkVQyQEZJwFTBYDVPsFUWEjPHYlKBgjYtfGUM41TDk1aqYkKtHkKt3BTH4BQqgjKHUzPk4xcXg0YE4xZD4hKtPjPtXyLt3RVMYjSpwTLXkVPt3hKH4hKu4hcT4hKPQTYXEERo0TLX4hKt3xQt.kRtvDat3xLpMzRpcGVRMFLKwjKt3hKDUjKAkjPtDkKngDYLECVoEjKt3hKt3RTAYGVB4hcXkVSrAUdHkFS3IFTCkVSlcjKHEjQMslZTkTT5MkTAIESlMSQK81L3g0JXMjKogDUA4jZo4xSAEjKkUjTLkFSwvTLt.kRt.kKCYCRmQkQtX1UW4BUMkVSo0jKhQDSGAkYNIkXDEjKHoVQvIFdXkGUC4RahgWPLQkYCkVRP4RZUcGVhwjQt3hK1sDYt4hPFkTPSIDQ1gUULYzQoEjKt3halcjRlYVXVwDatDjd5Y0L1kGS3gTZLcjdt.kKtXGV4YVPQUTVUIESAITUA0jdRsjaQEjXLEyUt3hKt3hKt3hMtXmTEwDZBkkKloTZzTjKt3hKt3hKt3jKXQTPosFTF4ha3gEYA4hKt3hKt3hYC4xSMY1TL4RTDcDSrckKt3hKt3hKtXyMsUkKtPEQtXlKGkVQrUkKt3hKt3hcN4hKv3BLtcmPZI1cX4hKt3hKt3hKtX1PtjVPPEkTA4hKNgzPMYGRCQjQLIjKt3hcN4BRUUUSIQzTEEjPHYFQ4gETy3BQ3gDdX4hXB4hKt3BRt.EQH4hX1MTTPgGVU81PtzlKt3hKtHjKoETPtXjd1IDVXMUUoEjcI4hKt3xLtXmUD4hKF8DQ2kTZUUDRtHlPt3hKt3jKLYTPtXlKC8DUA0TUMYjKs4hKt3hYD4hU24hKmA0YF0FSVUELtXWRt3hKtfTP1gkQtXGVo0TLXgGRowDdT4xPLYGTA4hYBMzPEoGUCUDQQUTPnwzcLECVo0TLXkVSF4xPMYjKt3hLtj1XtPTZMECVo0TLXkVP1AUZMYjKtvDTW4hK3gUZMYTTo0TLX4hb3gUZA4hPCwTLAwDSwfUZMECVo0jQtDGSwfkKlcmKoEkKHkVSwfUZMECVoEjKE4BSF4BTLYGVGYlcTkVSwfUZMECVt.UPtjVPt3xPtUzPM0TLXkVSrwDdHkFSkolKt3hKt3RdlcGTxAEQKUTRFsjQAIDRXY1ZKslc4gkKt3hKt3hKtLCS1gkTh4xQXEzTIcCSF4hKt3hKt3hKNMDSrMTRtHjUzQkPOkVPt3hKt3hKtXVdtj1a1MjZps1RqYWdX4hKt3hKt3hKyvjcXojKPsDVzHUR2vjQt3hKt3hKt3hSCwjQAsDSFYUcXgGVoEjKt3hKt3hKlkmKoEkKtjVSwfUZIkFS3gTdGgDSF4hKtXWSLAUUiQWTwPkdEYzXoQyZHQFRQkTZiQjQtfkPtDzc1QDTpklQHI1YGo0L3gUTUMjK3gEQt7DRVIjbP4hKjgEdLMGSFIkXtXmR3.0ctnEQQ4jPt.0RWAEdJk1bT0jKt3hKt3hcLYDSr4hKLEiQ23VTRkVPt3hK2DkPCYVTCkVRt3RZUEURvwTLXEVPt3hKt3hKpslcXIjK1gUZMECV3gTZLgGV1MDVpMkPYQzPCMmXvLkPIQzTEEjTLMmZCgTSzbGVo81PtnjKt3BQlMjPoEjKtrzLQYjXLECVt3hYB4hKtDzLl4xUJ4hYFcTT2kTZMYjKt3hKt3BTt3DR5UTPt3lcXQkZ3gUZA4hKt3hKt3hYCEzXAAkKRwjQEkVSwfkKt3hKt3hKtLiYlYEQt3xQoE0cHkVSVQjKt3hKt3hKNQDSF4hKLwFVKcWZLgGRowDTLYGRYEjKtfjYmEUR2QTUEkTUKM0XEQEUt4xQXMCLT4RPloTLt.kKyXmKPYjK1cDRhEzQoM1ZP4hcREjSL4hSHY2Zt3haDwDSPIEUoEEQtTmYPMjKlMTQokjKtfkaRMjRLYzUBEDTKkjct3xLt.0SD4hYGQmYtLTZMECTtnmPBwDQt3jKPslKtXmZDQjcBUUZYQjKx4FTC4hKGUTZI4hKj0jdWcCRowDdHklKNY1PQ4xM4UDVLUETHUjZTETPBgjYtfGVoEUTNkVSrIjKt3hKt3hKN4hbogTZiYGVos1cXkVSF4hKt3hKtX1PtLGVQ0TZLECViwTLXkVPt3hKt3hKy3hcXoja3UTZMYkQo0TLX4hKt3hKt3hStvDaCczbmUTZuIUUo0jQt3hKt3hKlMjKRkjPt3FSwfkZLECVoEjKt3hKt3BTAYGVTgETPkVSwfEdHkFS3MiYAklKt3hKDMjKEcGUQMTTqQ0SzPDR2wjQt3hK1gUZMYjKO4hKtPjXt3BSI4hKK8FdQgFSwfUZAY2Pt3hKAkWP1gkPtXGVHgSTD4BVD4hK23hKt.kcO4BSFQjKLECVpwDdXkVPt3xSt3hKDI2PtjVRt3RZA4hKtvTLXkVP1MjKt3RPsEDTU4hKtzDbhoFRo0TLX4xMt3hKPYGVtvDat3BSwfUZMwFS3gTZLc0M1YjatDjKlY1YPEDM5I0T2IDRTQiPHgESwfUV5cmQkwjQt3hKt3hcA4hUt3hcXkVSrYjQUMTSoEjKt3hKtHjKXQkKtnmcXk1XQMUS3PjKt3hKt3hYC4RS24hK0vTLXsFSwfUZA4hKt3hKtLiK1gkPtXGVo0TLE0DL5MUZA4hKt3hKN4BUDMDVpcGVoUEdXkVSF4hKt3hKtXVPtXUTtXTZMECVokTZLgGRCIjSpYmKG4hKDwDSEEVciICSDEjPTcVTV4jY5o1Qo0DaN4hat3hKP4BSDwjUtjkblcTV1cGVoEjKtnjKt3BQlMTPhclKtnkXDUTaLECVt3hKt3hKtDDRQA0U4QkKBoDTQoTZMYjKt3hKt3hKt3TQ5s1PtfzcXQET3gUZA4hKt3hKt3hKTEjVQ4hKhwjQEkFSwfUTt3hKt3hKtLCU1gEStXFVnMGQOgGRowDdtbmKowDaBgjKCMDSYo2TlwDLUUTUDQkY1ACNh.hXgMWY1PiNvI2amIWXs0iHwXSLtjVVRYzaLYjTHEjKt3BTt3hKtXmKtfTQtHjKlMTZiIkQmwTLQ4RPt3hKt3hKt3hKt3BTC4hPtX1PocmdXUGSFYkYA4hKt3hKt3hKt3hK1UjKA4hYCk1XRYzYLESTtDjKt3hKt3hKtXlKtvjQtHjK1ETZYIkQpwjQRgTPtXjKT4hKt3hKt3xLD4BQtXWPocmdXUGSFYkYA4hKt3hKt3hKt3hKt.kKA4hcAkVSwfUZIkFS3gTdGYDQ1UjK23hKA4BTtvDSEEVcMAyXxEDdKUmcE4hKt3hKt3hKh7hO7zVZjk1PC8hO77BYkgWYjMEcgQWY9.."
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
										"blob" : "6098.CMlaKA....fQPMDZ....APTY3QF.A.......fLEauM0crAxKujE..........................bgkVMjLgz3E...OjUFdkQ1TzEFckAxX0Q2alYVOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfHWYy8VOh.iKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfbVXo4VOhDiKv.CLv.CLv.CLv.CLv.CLv.CLv.iHfLVcxIWYtQGTx81YxEVa8HhMh.Rau41aM8FYk0iHvHBHk41Yo4VYTkGbk0iHwHBHsE1bzUlbTUmak0iHvHBHuA2T2kFcigVOhDSLwDSLwHBH2gVYkwVSuQVOh.CHv.BLf.iHfX1auQWSuQVOh.CHv.BLf.iHfHlbkEFcn0zaj0iHv.BLf.CHvHBHgYFckIGcuU2Xn0zaj0iHv.BLf.CHvHhO7PVY3UFYBw1ahAhXgMWY1PiNyk2bkgWOhPSLvPiK18DQtjjKB4BYMI0RwfDLUMlKlIjKt3RPy.ETUUjKPUUS1IESWM1ZH4hat3hKP4hSDgDaA4hZqcTMToGUQgSPt3hKt3BQlMTPIslKtfEMQwjcLU0UZ4hKt3hKt3BRUYVTD4hcUQlaBsjYIUDSt3hKt3hKtnTQXUzPtH1ZIUGRDYkYAMjKt3hKt3hYSEjYu4hKnkTLRcCRowDdHMkQCwDdXojYtvDSloWXvzzUYYFRUk0YQYjTL8lKHkVUEQkKDMjKt3hKNgDTEUjK1QkTJY2cXI1aE4Bdt3hKtXVPAoUTt3xctolPlgDaXgVPPoDNtnlPHclcQQjK10zStY2RocWQW4hY4YkKL4hXDwjQA4hXCgjY5E0Uj8VQtPTP1gkPt3RPXEETtHiYoITcLwFVtDjcIkVP1MDVmYFVDQjYXgVRrgELDkFS3MicCcFSBQjKtDzPLUDUUI0ZTEkYtHDRlwDaKECUvfkYMYjKz3hKt3haCETZUYmToQCZHEVSwbUZA4hKt3hKtjWPlM0QDMjUIU0TWkFLD4hKt3hKt3hYhIlbEQzPlUjS2nGLX0TPt3hKt3hKtvTQE8TRtbDVmMzSi0jUS4hKt3hKt3hKoY1cTIDRrMkY1IzSoUUQt3hKt3hKtXlRtvjQtbDVUcUZMYjK54BTWE0M1gjKt3hK24hYPsVQFM1bUYjV3EEahkVVRYzaLYjTHEjcI4BQ1MjcQYFUD4hcX0lZQgTZiQDTtHlPt3xMtHlKPMTPtvjQSkFN3gEVAYjKs4hKt7jKG4hXI4hKoMlTFcFSwDkKAYWRtPjcCMCT1gEQtXGVroVPIk1YDIkKhIjKtbiKN4xLDIjKLYzTogCdXgUPF4Rat3hKOY1Pt3BRt3BU3.yU2fTZLgGR4cjSTIjKt3hKPgkKEIUPIAyTHEjPHYlK3gkcD4hQjgCQt3hco0jKDYWTLwDaG4xMvfDR1cGVFEjKtnmK1gzP1UDQOkkKtTVPRYzYLwVTt3hKt3hKt3RXhcGVB4BTUgGRlITZYQjKt31PtrlK1IjK2nFQtHmZKAkc1gkQA4hK5YlKtLjbBMzSQ4hKJQycFUFSrEkKt3xSt3hKtj1X2gkPtX1UCgSQOgGRowDdHY1PnQjPt3hZAMzPmwlX0AiUXYFUCgjXUs1SXoGdXkVPt3hYt3hKCA0ctvzaPQEUukFQpwjUW4hKtfjKHEjK1XWTVQjK1U0bxE0Ro0jQt3hK3gkKLYlKPwDat3BUq8DVyfGVoEjKtXlKt3xP14hKG8FTtX0aoQjZLY0Ut3hKH4BRA4xPPEkUDQjKVMmbQsTZMYjKt3BdX4BSl4BTLwlKA4hKt3hKlwDdHkFSCYFTF4hat3BR14xTmk0UZoWQrIlYtHzUt3hKDUFSwfUZA4hKt.kKt.UStPkPtXVTt3RTEEVSwfkKt3hKt3hKT4xLp4hKyHjKOgkPWkVSF4hKt3hKt3RQtjVRt3hKt3hKlwTLXkVPt3hKt3hKtgjKT4BSrwjKpYFQl0TLX4hYA4RQt3hStfTQtjFMB4hXXI0Uo0jQt3hKt3hKt3hKoUDTAkVSwfUZIkFS3gTdtrjXA4xSt.EQLwTQgUWSvLlbAg2R0Y2ZSUVV5ITZAEiTtH1PtDlKPIlK2LTPtXFZGkET3gkVuUjK44hKt3BQ24RZI4hK4byZQwDSFg0SA4BStLSPtjkKtDEQt3hRjoVPIk1aqYkKLMjKt3BTXcESr4RPpk2UFMmcXY1bE4BZtXFRtnlQtfTRt3hayDkQpwDaVoUP1wjKt3hKIwzcXIjKP4zTAUTUwwTZLgGUPEjXtjFRoclPF8TRDgzQUwVXwrFaiIVSwTzRyXGVYcWQt7jKt3BQXUjKv.0TtHDM1IjXyTkUZEjcC4hKtDjUQ4hTF4hKV4DSpkTZqASTtbiKt3BTlsjKls1RtX1ZCczX3gUVmUjKO4hKtPzLC4xYI4hKnETLFAGSFcjTAY2PtLiKAYWPtfEQ2HCVJIlKKkVPVYkK23hKNAkKh4BSF4hKLECVo0TLIgGUosjS2.UPtvjQtnWP1QUPiUDREACQHUUPEgTdtgGRQwTLXkVPlcjKX4hKl0jKKIjK1wTTHgVQo0TLX4xLA4RTt3BVBwDat3hankDUybGVo0jQtXlKt3hKtXjPokjKt.iaRkTVLECVo0DaG4BSt3hKMY1StvjUMEER3UTZMECVtLSPtzjKt.kPHYjKo8FZIQ0M2gUZMYjKl4hKt3hKDITZAYGVo0TLTkFN30DdHkmKMQjKt3BUEIDS1oVTOkTUYUSP3oTb1ACVXwjQJ4hK1gkKt3hKt3BTN4hKl4hKLYDRoclPt3BSF4hKt3hKtn1PtjVP1wTZMgGVt4hKtfVPt3hKt3hKz3hcX4hK1gUaLYjRt3hcX4hKt3hKt.kStvDat3BSVsTZmIjKtvjQt3hKt3hKpMjKokjYFkVS3gkaLESTt3hKt3hKt3BMtXGVBomcXkVSFoDdHkFS3cSPBQ0MpcjPhEjQEQidP8TUqMEUUoFUSMmcCckYoM0RMYjKt3hKt3hKG4RZUAURo0TLXICSwfUZA4hKt3hKtXWPlckKtXmPOIVTN4zb5gkKt3hKt3hKF4BSVEDaLECVocVdXkVSF4hKt3hKt3hKtPVPt3xR2XWQwLidRkVPt3hKt3hK1EjcXUDV3gUZMYUSo0TLX4hKt3hKt3hStLSQt3BSFcTZMwFS3gTZLQzMlsjKy.0RvXVPU4VUsElZUwlXl4BdL4BUUMTbHkGVt3hYC4hKt3hSAYGUH4hKCcUU3oDLLYjKtLiKt3hKtPjKLYTPtn1cUglbn4TZA4hKN4hKt3hKF4RZQ4hKtHFLJE2M3gkKtX1Pt3hKtLiK1cEQt3hKYcWdJETSF4hKy3hKt3hKX4BREMjK2PUQ2HGdXAUPt3hSt3hKtX1PtjVTt3hKt3hKtfTZLgGRSUzStETQo4BTDwDU5gka3XUTocVLgYFSS0zQHIzRoE0ZG4BQo4hKL4BUDQ0PD4BR2IzaXgGV1XWPtfmKtjzPtPjPhkjKtXkYPkTbLESUy4BTMEkK14RRm4RTJ4hKHEkb2oTZuQDTt3lPt3hKtnTQtvlKtfzYDokc2g0QQMjKzAkcHMDRmEjTI4hK2fETEsFSrcELtXFVt3hcCg0Z1gkPtXGVo0TLXgGRowDdlYWPv4hKt3BQCMzbDo1TAcmdScTPRwzbPIkQ2cycXQTPt3hKt3hKtX1PBkiK3I0ZXcVQ3wDaE8jKt3hKt3hKtgicXojKtjjZXEzRo8lTI4hKt3hKt3hUAYmPN4haBQzYpgGVl4hKt3hKPEjKtjmKo8lKtjkYmUTXLwFTt3hKt3hKt3BVA4RRj4hcHIEV2gTZAAiRt3hKt3hKt3xPLwlPtvTLXkVSrwDdHkFSDYmcI4BVt3BVLEDUzoldPUTPnwDLyHESoc2PJcGSwbkKt3hKt3hKtLiKlM0QyfGV2vjTLkFNE4hKt3hKt3hKJ4hXvDDcLYzSlQTdXUVPt3hKt3hKtX1PtL0XtPjViYmKGwDaW4hKt3hKt3hK13hKNYDQ4g0cXIzQoQSQt3hKt3hKtXmSt3xZtrRSwXDLxgGVgEjKt3hKt3hKlMjKokjKtj1aSsDVHMDShkTZtfDSB4hKt.ESXgEQSUzYUIkYtHDRlAUdXUUSrsTS2sFVtHlTMQkK18jKy3RPtvDaVYkXCQ0XUUjK1wjQDIzMC4hRI4hKo8FZEYTSVg0MtXWRhMGUBshKlIkPtXGVSk0cPk1cEQkKHIkPt3hcO4hZq4hKLYTTswTLXkVSVgkKt.ETtbyPtHURt3xTigFR33RLXMVPt3hKt3hKq3hcXIjKlc0P3TzS3gTZLgGQ2ETdhIjKtn1PFETREQkYHkVS14xPHYFSrsjK1cGViMVQtDiKt3hKDMjKGEkKtjFMB4hXLY0UWEjYM4hKt3BMt.0TB4hcXQmKtbTZv.SUtf0Pt3hKPoDQPslKtLiTHQES3gkXQUjKt3hKt3BRtLTZE4hKo0TLXkESwfUZA4hRTIlKtXWPPckKtXFSo0DaGkVSwfkKt3hKt3hKh4BSFEjKLECVo0DaLgGRowTPXYVRm4hKtPiYQAEdAIiRBUUajUSRvHlS3rVTiwjQXsTP10jKxQjKzfjcXQjKPYTV1A0So0TLX4BSC4hKt.kStP0Zt3BQ3ckQvbGVo0jQtXmKlcjKDcjKZEkKtfmZAMjQMwlUmEjcL4hKt3BMPcGVBQjKGUVVTcTZAEyTt3xPtLTPP4BQtUTPtfjTFwDQ3gUZqMjK44hKt3hZCITZI4hKJQkYAYDRowDdHkVQyQEZJwFTBYDVPsFUWEjPHYlKBgjYtfGUM41TDk1aqYkKtHkKt3BTH4BQqgjKHUzPk4xcXg0YE4xZD4hKtPjPtXyLt3RVMYjSpwTLXkVPt3hKH4hKu4hcT4hKPQTYXEERo0TLX4hKt3xQt.kRtvDat3xLpMzRpcGVRMFLKwjKt3hKDUjKAkjPtDkKngDYLECVoEjKt3hKt3RTAYGVB4hcXkVSrAUdHkFS3IFTCkVSlcjKHEjQMslZTkTT5MkTAIESlMSQK81L3g0JXMjKogDUA4jZo4xSAEjKkUjTLkFSwvTLt.kRt.kKCYCRmQkQtX1UW4BUMkVSo0jKhQDSGAkYNIkXDEjKHoVQvIFdXkGUC4RahgWPLQkYCkVRP4RZUcGVhwjQt3hK1sDYt4hPFkTPSIDQ1gUULYzQoEjKt3halcjRlYVXVwDatDjd5Y0L1kGS3gTZLcjdt.kKtXGV4YVPQUTVUIESAITUA0jdRsjaQEjXLEyUt3hKt3hKt3hMtXmTEwDZBkkKloTZzTjKt3hKt3hKt3jKXQTPosFTF4ha3gEYA4hKt3hKt3hYC4xSMY1TL4RTDcDSrckKt3hKt3hKtXyMsUkKtPEQtXlKGkVQrUkKt3hKt3hcN4hKv3BLtcmPZI1cX4hKt3hKt3hKtX1PtjVPPEkTA4hKNgzPMYGRCQjQLIjKt3hcN4BRUUUSIQzTEEjPHYFQ4gETy3BQ3gDdX4hXB4hKt3BRt.EQH4hX1MTTPgGVU81PtzlKt3hKtHjKoETPtXjd1IDVXMUUoEjcI4hKt3xLtXmUD4hKF8DQ2kTZUUDRtHlPt3hKt3jKLYTPtXlKC8DUA0TUMYjKs4hKt3hYD4hU24hKmA0YF0FSVUELtXWRt3hKtfTP1gkQtXGVo0TLXgGRowDdT4xPLYGTA4hYBMzPEoGUCUDQQUTPnwzcLECVo0TLXkVSF4xPMYjKt3hLtj1XtPTZMECVo0TLXkVP1AUZMYjKtvDTW4hK3gUZMYTTo0TLX4hb3gUZA4hPCwTLAwDSwfUZMECVo0jQtDGSwfkKlcmKoEkKHkVSwfUZMECVoEjKE4BSF4BTLYGVGYlcTkVSwfUZMECVt.UPtjVPt3xPtUzPM0TLXkVSrwDdHkFSkolKt3hKt3RdlcGTxAEQKUTRFsjQAIDRXY1ZKslc4gkKt3hKt3hKtLCS1gkTh4xQXEzTIcCSF4hKt3hKt3hKNMDSrMTRtHjUzQkPOkVPt3hKt3hKtXVdtj1a1MjZps1RqYWdX4hKt3hKt3hKyvjcXojKPsDVzHUR2vjQt3hKt3hKt3hSCwjQAsDSFYUcXgGVoEjKt3hKt3hKlkmKoEkKtjVSwfUZIkFS3gTdGgDSF4hKtXWSLAUUiQWTwPkdEYzXoQyZHQFRQkTZiQjQtfkPtDzc1QDTpklQHI1YGo0L3gUTUMjK3gEQt7DRVIjbP4hKjgEdLMGSFIkXtXmR3.0ctnEQQ4jPt.0RWAEdJk1bT0jKt3hKt3hcLYDSr4hKLEiQ23VTRkVPt3hK2DkPCYVTCkVRt3RZUEURvwTLXEVPt3hKt3hKpslcXIjK1gUZMECV3gTZLgGV1MDVpMkPYQzPCMmXvLkPIQzTEEjTLMmZCgTSzbGVo81PtnjKt3BQlMjPoEjKtrzLQYjXLECVt3hYB4hKtDzLl4xUJ4hYFcTT2kTZMYjKt3hKt3BTt3DR5UTPt3lcXQkZ3gUZA4hKt3hKt3hYCEzXAAkKRwjQEkVSwfkKt3hKt3hKtLiYlYEQt3xQoE0cHkVSVQjKt3hKt3hKNQDSF4hKLwFVKcWZLgGRowDTLYGRYEjKtfjYmEUR2QTUEkTUKM0XEQEUt4xQXMCLT4RPloTLt.kKyXmKPYjK1cDRhEzQoM1ZP4hcREjSL4hSHY2Zt3haDwDSPIEUoEEQtTmYPMjKlMTQokjKtfkaRMjRLYzUBEDTKkjct3xLt.0SD4hYGQmYtLTZMECTtnmPBwDQt3jKPslKtXmZDQjcBUUZYQjKx4FTC4hKGUTZI4hKj0jdWcCRowDdHklKNY1PQ4xM4UDVLUETHUjZTETPBgjYtfGVoEUTNkVSrIjKt3hKt3hKN4hbogTZiYGVos1cXkVSF4hKt3hKtX1PtLGVQ0TZLECViwTLXkVPt3hKt3hKy3hcXoja3UTZMYkQo0TLX4hKt3hKt3hStvDaCczbmUTZuIUUo0jQt3hKt3hKlMjKRkjPt3FSwfkZLECVoEjKt3hKt3BTAYGVTgETPkVSwfEdHkFS3MiYAklKt3hKDMjKEcGUQMTTqQ0SzPDR2wjQt3hK1gUZMYjKO4hKtPjXt3BSI4hKK8FdQgFSwfUZAY2Pt3hKAkWP1gkPtXGVHgSTD4BVD4hK23hKt.kcO4BSFQjKLECVpwDdXkVPt3xSt3hKDI2PtjVRt3RZA4hKtvTLXkVP1MjKt3RPsEDTU4hKtzDbhoFRo0TLX4xMt3hKPYGVtvDat3BSwfUZMwFS3gTZLc0M1YjatDjKlY1YPEDM5I0T2IDRTQiPHgESwfUV5cmQkwjQt3hKt3hcA4hUt3hcXkVSrYjQUMTSoEjKt3hKtHjKXQkKtnmcXk1XQMUS3PjKt3hKt3hYC4RS24hK0vTLXsFSwfUZA4hKt3hKtLiK1gkPtXGVo0TLE0DL5MUZA4hKt3hKN4BUDMDVpcGVoUEdXkVSF4hKt3hKtXVPtXUTtXTZMECVokTZLgGRCIjSpYmKG4hKDwDSEEVciICSDEjPTcVTV4jY5o1Qo0DaN4hat3hKP4BSDwjUtjkblcTV1cGVoEjKtnjKt3BQlMTPhclKtnkXDUTaLECVt3hKt3hKtDDRQA0U4QkKBoDTQoTZMYjKt3hKt3hKt3TQ5s1PtfzcXQET3gUZA4hKt3hKt3hKTEjVQ4hKhwjQEkFSwfUTt3hKt3hKtLCU1gEStXFVnMGQOgGRowDdtbmKowDaBgjKCMDSYo2TlwDLUUTUDQkY1ACNh.hXgMWY1PiNvI2amIWXs0iHwXSLtjVVRYzaLYjTHEjKt3BTt3hKtXmKtfTQtHjKlMTZiIkQmwTLQ4RPt3hKt3hKt3hKt3BTC4hPtX1PocmdXUGSFYkYA4hKt3hKt3hKt3hK1UjKA4hYCk1XRYzYLESTtDjKt3hKt3hKtXlKtvjQtHjK1ETZYIkQpwjQRgTPtXjKT4hKt3hKt3xLD4BQtXWPocmdXUGSFYkYA4hKt3hKt3hKt3hKt.kKA4hcAkVSwfUZIkFS3gTdGYDQ1UjK23hKA4BTtvDSEEVcMAyXxEDdKUmcE4hKt3hKt3hKh7hO7zVZjk1PC8hO77BYkgWYjMEcgQWY9.."
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
, 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "Dexed",
									"origin" : "Dexed.vst",
									"type" : "VST",
									"subtype" : "Instrument",
									"embed" : 0,
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
					"destination" : [ "obj-77", 0 ],
					"midpoints" : [ 359.5, 424.5, 112.5, 424.5 ],
					"source" : [ "obj-1", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-82", 0 ],
					"midpoints" : [ 370.0, 416.5, 526.100006103515625, 416.5 ],
					"source" : [ "obj-1", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 483.5, 314.0, 338.5, 314.0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-1", 0 ],
					"midpoints" : [ 106.5, 281.0, 338.5, 281.0 ],
					"source" : [ "obj-73", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 112.5, 493.0, 77.0, 493.0, 77.0, 220.0, 483.5, 220.0 ],
					"source" : [ "obj-77", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 115.0, 181.5, 483.5, 181.5 ],
					"source" : [ "obj-79", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-39", 0 ],
					"midpoints" : [ 526.100006103515625, 477.0, 730.800003051757812, 477.0, 730.800003051757812, 222.0, 483.5, 222.0 ],
					"source" : [ "obj-82", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-1" : [ "vst~", "vst~", 0 ],
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
, 			{
				"name" : "dexed-automated-v2.js",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/7. Frequency Modulation part 2/Code",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0,
		"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
		"bgfillcolor_type" : "gradient",
		"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
		"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
		"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ]
	}

}
