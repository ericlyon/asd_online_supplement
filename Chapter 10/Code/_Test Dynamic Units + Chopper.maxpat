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
		"rect" : [ 78.0, 714.0, 1380.0, 610.0 ],
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
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 52.0, 111.0, 951.0, 638.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 8,
											"minor" : 2,
											"revision" : 0,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 83.0, 203.0, 421.0, 444.0 ],
										"bglocked" : 0,
										"openinpresentation" : 0,
										"default_fontsize" : 10.0,
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
										"subpatcher_template" : "",
										"assistshowspatchername" : 0,
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-14",
													"maxclass" : "flonum",
													"maximum" : 1.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 263.0, 291.0, 39.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-30",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 263.0, 312.0, 124.0, 21.0 ],
													"text" : "amplitude_deviation $1"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-2",
													"maxclass" : "flonum",
													"maximum" : 1.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 282.0, 344.0, 39.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-4",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 282.0, 365.0, 93.0, 21.0 ],
													"text" : "dropout_odds $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 12.0, 234.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-33",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 162.0, 325.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-31",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 251.0, 81.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"appversion" : 														{
															"major" : 8,
															"minor" : 2,
															"revision" : 0,
															"architecture" : "x64",
															"modernui" : 1
														}
,
														"classnamespace" : "box",
														"rect" : [ 787.0, 345.0, 324.0, 243.0 ],
														"bglocked" : 0,
														"openinpresentation" : 0,
														"default_fontsize" : 10.0,
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
														"subpatcher_template" : "",
														"assistshowspatchername" : 0,
														"boxes" : [ 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-1",
																	"maxclass" : "newobj",
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"appversion" : 																		{
																			"major" : 8,
																			"minor" : 2,
																			"revision" : 0,
																			"architecture" : "x64",
																			"modernui" : 1
																		}
,
																		"classnamespace" : "box",
																		"rect" : [ 10.0, 59.0, 335.0, 224.0 ],
																		"bglocked" : 0,
																		"openinpresentation" : 0,
																		"default_fontsize" : 10.0,
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
																		"subpatcher_template" : "",
																		"assistshowspatchername" : 0,
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
																					"id" : "obj-1",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 189.0, 119.0, 37.0, 19.0 ],
																					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
																					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
																					"triscale" : 0.9
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-2",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 189.0, 142.0, 88.0, 17.0 ],
																					"text" : "recall_loop $1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-3",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 102.0, 141.0, 86.0, 17.0 ],
																					"text" : "store_loop $1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-4",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 43.0, 72.0, 18.0, 17.0 ],
																					"text" : "0"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"id" : "obj-5",
																					"maxclass" : "button",
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"outlettype" : [ "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 98.0, 21.0, 15.0, 15.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
																					"id" : "obj-6",
																					"maxclass" : "number",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "", "bang" ],
																					"parameter_enable" : 0,
																					"patching_rect" : [ 102.0, 119.0, 37.0, 19.0 ],
																					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
																					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
																					"triscale" : 0.9
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-7",
																					"maxclass" : "newobj",
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"outlettype" : [ "bang", "bang" ],
																					"patching_rect" : [ 98.0, 45.0, 34.0, 19.0 ],
																					"text" : "t b b"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-8",
																					"maxclass" : "message",
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"outlettype" : [ "" ],
																					"patching_rect" : [ 117.0, 72.0, 18.0, 17.0 ],
																					"text" : "1"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-9",
																					"maxclass" : "newobj",
																					"numinlets" : 3,
																					"numoutlets" : 1,
																					"outlettype" : [ "int" ],
																					"patching_rect" : [ 102.0, 94.0, 47.0, 19.0 ],
																					"text" : "accum"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"comment" : "",
																					"id" : "obj-10",
																					"index" : 1,
																					"maxclass" : "outlet",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 102.0, 172.0, 15.0, 15.0 ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-11",
																					"maxclass" : "comment",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 120.0, 24.0, 138.0, 19.0 ],
																					"text" : "store loops sequentially"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"fontname" : "Arial",
																					"fontsize" : 11.0,
																					"id" : "obj-12",
																					"maxclass" : "comment",
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"patching_rect" : [ 28.0, 44.0, 65.0, 19.0 ],
																					"text" : "reset count"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-2", 0 ],
																					"source" : [ "obj-1", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"midpoints" : [ 198.5, 164.0, 111.0, 164.0 ],
																					"source" : [ "obj-2", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-10", 0 ],
																					"source" : [ "obj-3", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"midpoints" : [ 52.5, 90.0, 111.5, 90.0 ],
																					"source" : [ "obj-4", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-7", 0 ],
																					"source" : [ "obj-5", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-3", 0 ],
																					"source" : [ "obj-6", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-8", 0 ],
																					"source" : [ "obj-7", 1 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 0 ],
																					"midpoints" : [ 107.5, 78.0, 111.5, 78.0 ],
																					"source" : [ "obj-7", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-9", 1 ],
																					"source" : [ "obj-8", 0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"destination" : [ "obj-6", 0 ],
																					"source" : [ "obj-9", 0 ]
																				}

																			}
 ]
																	}
,
																	"patching_rect" : [ 121.0, 162.0, 76.0, 19.0 ],
																	"saved_object_attributes" : 																	{
																		"description" : "",
																		"digest" : "",
																		"fontsize" : 10.0,
																		"globalpatchername" : "",
																		"tags" : ""
																	}
,
																	"text" : "p morestore"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-2",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 106.0, 143.0, 172.0, 17.0 ],
																	"text" : "set_loop 302451 9041 -2.39"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-3",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 165.0, 109.0, 65.0, 17.0 ],
																	"text" : "show_loop"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-4",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 178.0, 29.0, 18.0, 17.0 ],
																	"text" : "3"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-5",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 71.0, 28.0, 18.0, 17.0 ],
																	"text" : "3"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-6",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 159.0, 29.0, 18.0, 17.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-7",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 136.0, 29.0, 18.0, 17.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-8",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 51.0, 28.0, 18.0, 17.0 ],
																	"text" : "2"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-9",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 32.0, 28.0, 18.0, 17.0 ],
																	"text" : "1"
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
																	"id" : "obj-10",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 150.0, 56.0, 37.0, 19.0 ],
																	"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
																	"triscale" : 0.9
																}

															}
, 															{
																"box" : 																{
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
																	"id" : "obj-11",
																	"maxclass" : "number",
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"outlettype" : [ "", "bang" ],
																	"parameter_enable" : 0,
																	"patching_rect" : [ 55.0, 56.0, 37.0, 19.0 ],
																	"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
																	"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
																	"triscale" : 0.9
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-12",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 150.0, 87.0, 88.0, 17.0 ],
																	"text" : "recall_loop $1"
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-13",
																	"maxclass" : "message",
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"patching_rect" : [ 55.0, 87.0, 86.0, 17.0 ],
																	"text" : "store_loop $1"
																}

															}
, 															{
																"box" : 																{
																	"comment" : "",
																	"id" : "obj-14",
																	"index" : 1,
																	"maxclass" : "outlet",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 55.0, 185.0, 24.0, 24.0 ]
																}

															}
, 															{
																"box" : 																{
																	"fontname" : "Arial",
																	"fontsize" : 11.0,
																	"id" : "obj-15",
																	"maxclass" : "comment",
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"patching_rect" : [ 56.0, 211.0, 183.0, 19.0 ],
																	"text" : "up to 1024 loops may be stored"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"midpoints" : [ 130.5, 182.0, 64.5, 182.0 ],
																	"source" : [ "obj-1", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-12", 0 ],
																	"source" : [ "obj-10", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-13", 0 ],
																	"source" : [ "obj-11", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"midpoints" : [ 159.5, 123.0, 64.5, 123.0 ],
																	"source" : [ "obj-12", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"source" : [ "obj-13", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"midpoints" : [ 115.5, 163.0, 64.5, 163.0 ],
																	"source" : [ "obj-2", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-14", 0 ],
																	"midpoints" : [ 174.5, 135.0, 64.5, 135.0 ],
																	"source" : [ "obj-3", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"midpoints" : [ 187.5, 50.0, 159.5, 50.0 ],
																	"source" : [ "obj-4", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"midpoints" : [ 80.5, 49.0, 64.5, 49.0 ],
																	"source" : [ "obj-5", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"midpoints" : [ 168.5, 50.0, 159.5, 50.0 ],
																	"source" : [ "obj-6", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-10", 0 ],
																	"midpoints" : [ 145.5, 50.0, 159.5, 50.0 ],
																	"source" : [ "obj-7", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"midpoints" : [ 60.5, 49.0, 64.5, 49.0 ],
																	"source" : [ "obj-8", 0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"destination" : [ "obj-11", 0 ],
																	"midpoints" : [ 41.5, 49.0, 64.5, 49.0 ],
																	"source" : [ "obj-9", 0 ]
																}

															}
 ]
													}
,
													"patching_rect" : [ 146.0, 306.0, 56.0, 21.0 ],
													"saved_object_attributes" : 													{
														"description" : "",
														"digest" : "",
														"fontsize" : 10.0,
														"globalpatchername" : "",
														"tags" : ""
													}
,
													"text" : "p storage"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-3",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 162.0, 364.0, 97.0, 21.0 ],
													"text" : "adjust_inverse $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 12.0, 259.0, 110.0, 21.0 ],
													"text" : "increment_adjust $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"hidden" : 1,
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"patching_rect" : [ 152.0, 66.0, 56.0, 21.0 ],
													"text" : "loadbang"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"hidden" : 1,
													"id" : "obj-7",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 152.0, 86.0, 32.5, 21.0 ],
													"text" : "0.5"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-8",
													"maxclass" : "flonum",
													"maximum" : 10.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 171.0, 249.0, 38.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-9",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 171.0, 272.0, 44.0, 21.0 ],
													"text" : "rinc $1"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-10",
													"maxclass" : "flonum",
													"maximum" : 1.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 224.0, 192.0, 46.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 224.0, 216.0, 45.0, 21.0 ],
													"text" : "rdur $1"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-12",
													"maxclass" : "flonum",
													"maximum" : 1.0,
													"minimum" : 0.0,
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 149.0, 192.0, 46.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-13",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 149.0, 216.0, 47.0, 21.0 ],
													"text" : "jitter $1"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-15",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 94.0, 88.0, 38.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-16",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 65.0, 88.0, 32.5, 21.0 ],
													"text" : "100"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-17",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 88.0, 32.5, 21.0 ],
													"text" : "5"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-18",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 49.0, 111.0, 51.0, 21.0 ],
													"text" : "taper $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-19",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 48.0, 60.0, 92.0, 19.0 ],
													"text" : "change fadetime"
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-20",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 251.0, 112.0, 38.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-21",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 211.0, 113.0, 32.5, 21.0 ],
													"text" : "0."
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-22",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 211.0, 141.0, 103.0, 21.0 ],
													"text" : "fixed_increment $1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-23",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 118.0, 401.0, 25.0, 25.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-24",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 118.0, 121.0, 39.0, 21.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-25",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 118.0, 142.0, 78.0, 21.0 ],
													"text" : "retro_odds $1"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-26",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 213.0, 250.0, 80.0, 19.0 ],
													"text" : "increment drift"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-27",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 273.0, 193.0, 72.0, 19.0 ],
													"text" : "duration drift"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-28",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 148.0, 175.0, 70.0, 19.0 ],
													"text" : "position drift"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 11.0,
													"id" : "obj-29",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 12.0, 197.0, 163.0, 19.0 ],
													"text" : "change duration with increment"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 155.5, 362.0, 127.5, 362.0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-10", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 233.5, 237.0, 127.5, 237.0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-13", 0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 158.5, 237.0, 127.5, 237.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 103.5, 107.0, 58.5, 107.0 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"midpoints" : [ 74.5, 107.0, 58.5, 107.0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-17", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 58.5, 174.0, 127.5, 174.0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"midpoints" : [ 260.5, 134.0, 220.5, 134.0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 220.5, 168.0, 127.5, 168.0 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 171.5, 386.0, 127.5, 386.0 ],
													"source" : [ "obj-3", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 272.5, 391.0, 127.5, 391.0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"source" : [ "obj-31", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-33", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-35", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 291.5, 396.0, 127.5, 396.0 ],
													"source" : [ "obj-4", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 21.5, 288.0, 127.5, 288.0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"hidden" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"hidden" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"midpoints" : [ 180.5, 292.0, 127.5, 292.0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 172.0, 279.0, 105.0, 22.0 ],
									"saved_object_attributes" : 									{
										"description" : "",
										"digest" : "",
										"fontsize" : 10.0,
										"globalpatchername" : "",
										"tags" : ""
									}
,
									"text" : "p more mesages"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 371.5, 520.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-3",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 321.0, 520.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 6,
									"numoutlets" : 3,
									"outlettype" : [ "signal", "signal", "" ],
									"patching_rect" : [ 266.0, 358.0, 241.0, 29.0 ],
									"saved_object_attributes" : 									{
										"maximum_increment" : 2.0,
										"maximum_segdur" : 800.0,
										"minimum_increment" : 0.5,
										"minimum_segdur" : 100.0
									}
,
									"text" : "el.chopper~ dn.chopsource 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 262.0, 149.0, 218.0, 29.0 ],
									"text" : "buffer~ dn.chopsource 2 2"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
 ],
						"bgfillcolor_type" : "gradient",
						"bgfillcolor_color1" : [ 0.376471, 0.384314, 0.4, 1.0 ],
						"bgfillcolor_color2" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
						"bgfillcolor_angle" : 270.0,
						"bgfillcolor_proportion" : 0.39
					}
,
					"patching_rect" : [ 848.0, 70.0, 57.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 18.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p choppy"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-35",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 50.0, 365.0, 35.0, 22.0 ],
					"text" : "open"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-39",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 577.0, 277.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Lyonizer4:/SND/Diet of Electric Worms/Max/Dynamic Patches 12.11.20/kyle dry sax.aif",
								"filename" : "kyle dry sax.aif",
								"filekind" : "audiofile",
								"id" : "u251007213",
								"loop" : 1,
								"content_state" : 								{
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-33",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 26.0, 18.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Lyonizer4:/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code/Sounds/sonatina-l1.aif",
								"filename" : "sonatina-l1.aif",
								"filekind" : "audiofile",
								"id" : "u025001666",
								"loop" : 1,
								"content_state" : 								{
									"timestretch" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"formant" : [ 1.0 ],
									"originallengthms" : [ 0.0 ],
									"quality" : [ "basic" ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"originaltempo" : [ 120.0 ],
									"basictuning" : [ 440 ],
									"mode" : [ "basic" ],
									"speed" : [ 1.0 ],
									"pitchcorrection" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-34",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 312.0, 234.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-32",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 319.0, 316.0, 28.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "signal", "signal", "list", "list" ],
					"patching_rect" : [ 77.0, 241.0, 71.0, 22.0 ],
					"text" : "omx.comp~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-7",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 175.0, 196.0, 55.0, 22.0 ],
					"text" : "el.killdc~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 79.0, 199.0, 55.0, 22.0 ],
					"text" : "el.killdc~"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Lyonizer4:/SND/Diet of Electric Worms/Tranche2/worm2.6.aif",
								"filename" : "worm2.6.aif",
								"filekind" : "audiofile",
								"id" : "u698001687",
								"loop" : 1,
								"content_state" : 								{
									"timestretch" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"formant" : [ 1.0 ],
									"originallengthms" : [ 0.0 ],
									"quality" : [ "basic" ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"originaltempo" : [ 120.0 ],
									"basictuning" : [ 440 ],
									"mode" : [ "basic" ],
									"speed" : [ 1.0 ],
									"pitchcorrection" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-3",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 285.0, 92.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"color" : [ 0.803921568627451, 0.172549019607843, 0.831372549019608, 1.0 ],
					"id" : "obj-37",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 2,
							"revision" : 0,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 881.0, 367.0, 1645.0, 855.0 ],
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
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 169.0, 677.0, 48.0, 29.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 677.0, 136.0, 29.0 ],
									"text" : "build_processor"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 730.0, 223.0, 29.0 ],
									"saved_object_attributes" : 									{
										"filename" : "asd.dynamic-processor2",
										"parameter_enable" : 0
									}
,
									"text" : "js asd.dynamic-processor2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-35",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 20.0, 20.0, 30.0, 30.0 ],
									"varname" : "inlet1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-37",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 70.0, 20.0, 30.0, 30.0 ],
									"varname" : "inlet2"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-40",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 20.0, 620.0, 30.0, 30.0 ],
									"varname" : "outlet1"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-42",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 620.0, 30.0, 30.0 ],
									"varname" : "outlet2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 16,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 170.0, 20.0, 259.0, 29.0 ],
									"text" : "asd.nanoKONTROL2_interface",
									"varname" : "midi_interface"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 125.0, 1000.0, 49.0 ],
									"text" : "asd.alpverb_unit_dx 457.859096 0.636651 427.402325 0.656064 487.35878 0.618397 99.128057 0.906868 253.982082 0.778432 106.018823 0.900726 383.466821 0.685115 184.452886 0.833681 100.344697 0.90578 266.452346 0.768918"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 180.0, 1000.0, 29.0 ],
									"text" : "asd.harmonizer_unit_dx 1.25 1.5 1.8888"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-9",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 235.0, 1005.0, 49.0 ],
									"text" : "asd.alpverb_unit_dx 124.2 0.702392 76.244503 0.805039 268.425253 0.466037 277.49459 0.454169 492.914173 0.246102 156.005054 0.641639 164.082442 0.627066 84.715001 0.785875 191.526824 0.579978 178.156457 0.602459"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 290.0, 400.0, 29.0 ],
									"text" : "asd.ring_unit_dx 324.550927 1165.977538"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-11",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "signal" ],
									"patching_rect" : [ 20.0, 345.0, 400.0, 29.0 ],
									"text" : "asd.spectralgate_unit_dx 3.123159"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 1 ],
									"source" : [ "obj-10", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 0 ],
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-40", 0 ],
									"source" : [ "obj-11", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-42", 0 ],
									"source" : [ "obj-11", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 4 ],
									"source" : [ "obj-2", 11 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 3 ],
									"source" : [ "obj-2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 2 ],
									"source" : [ "obj-2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 4 ],
									"source" : [ "obj-2", 12 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-11", 2 ],
									"source" : [ "obj-2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 3 ],
									"source" : [ "obj-2", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 2 ],
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 3 ],
									"source" : [ "obj-2", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 2 ],
									"source" : [ "obj-2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 3 ],
									"source" : [ "obj-2", 10 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 2 ],
									"source" : [ "obj-2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"source" : [ "obj-35", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 1 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-1", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 1 ],
									"source" : [ "obj-7", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 1 ],
									"source" : [ "obj-8", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 1 ],
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 80.0, 155.0, 125.0, 22.0 ],
					"saved_object_attributes" : 					{
						"description" : "",
						"digest" : "",
						"fontsize" : 18.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p dynamic-processing"
				}

			}
, 			{
				"box" : 				{
					"format" : 6,
					"id" : "obj-31",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 808.0, 293.0, 50.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"patching_rect" : [ 808.0, 333.0, 50.0, 22.0 ],
					"text" : "* 60000"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-28",
					"maxclass" : "slider",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 658.0, 375.0, 20.0, 140.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 1094.0, 495.0, 43.0, 22.0 ],
					"text" : "sig~ 1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-13",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1034.0, 495.0, 57.0, 22.0 ],
					"text" : "startloop"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 3,
					"outlettype" : [ "signal", "signal", "signal" ],
					"patching_rect" : [ 1034.0, 525.0, 149.0, 22.0 ],
					"saved_object_attributes" : 					{
						"basictuning" : 440,
						"followglobaltempo" : 0,
						"formantcorrection" : 0,
						"loopend" : [ 0.0, "ms" ],
						"loopstart" : [ 0.0, "ms" ],
						"mode" : "basic",
						"originallength" : [ 1.919999979436398, "ticks" ],
						"originaltempo" : 120.27272819158155,
						"phase" : [ 0.0, "ticks" ],
						"pitchcorrection" : 0,
						"quality" : "basic",
						"timestretch" : [ 0 ]
					}
,
					"text" : "groove~ catchThisThing 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-19",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 974.0, 330.0, 34.0, 22.0 ],
					"text" : "crop"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 376.0, 327.0, 28.0, 28.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 4,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 253.0, 493.0, 146.0, 22.0 ],
					"text" : "record~ catchThisThing 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-21",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 959.0, 434.0, 37.0, 22.0 ],
					"text" : "clear"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-22",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 868.0, 434.0, 89.0, 22.0 ],
					"text" : "normalize 0.99"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"format" : 6,
					"id" : "obj-23",
					"maxclass" : "flonum",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 809.0, 405.0, 65.0, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-24",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 809.0, 434.0, 49.0, 22.0 ],
					"text" : "size $1"
				}

			}
, 			{
				"box" : 				{
					"allowdrag" : 0,
					"buffername" : "catchThisThing",
					"id" : "obj-25",
					"maxclass" : "waveform~",
					"numinlets" : 5,
					"numoutlets" : 6,
					"outlettype" : [ "float", "float", "float", "float", "list", "" ],
					"patching_rect" : [ 974.0, 360.0, 165.0, 61.0 ],
					"setmode" : 1
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "float", "bang" ],
					"patching_rect" : [ 809.0, 525.0, 153.0, 22.0 ],
					"text" : "buffer~ catchThisThing 2 2"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 12.0,
					"id" : "obj-27",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1010.0, 434.0, 52.0, 22.0 ],
					"text" : "writeaiff"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 77.0, 498.0, 73.0, 22.0 ],
					"saved_object_attributes" : 					{
						"client_rect" : [ 100, 100, 500, 600 ],
						"parameter_enable" : 0,
						"parameter_mappable" : 0,
						"storage_rect" : [ 200, 200, 800, 500 ]
					}
,
					"text" : "pattrstorage",
					"varname" : "u223001095"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Lyonizer4:/SND/Joan Grossman/Processed Voices/eric/eric.aif",
								"filename" : "eric.aif",
								"filekind" : "audiofile",
								"id" : "u988001993",
								"loop" : 1,
								"content_state" : 								{
									"timestretch" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"formant" : [ 1.0 ],
									"originallengthms" : [ 0.0 ],
									"quality" : [ "basic" ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"originaltempo" : [ 120.0 ],
									"basictuning" : [ 440 ],
									"mode" : [ "basic" ],
									"speed" : [ 1.0 ],
									"pitchcorrection" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-11",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 291.0, 27.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "ezdac~",
					"numinlets" : 2,
					"numoutlets" : 0,
					"patching_rect" : [ 77.0, 447.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 77.0, 276.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
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
					"id" : "obj-6",
					"maxclass" : "live.slider",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "", "float" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 431.0, 76.5, 138.0, 94.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.slider",
							"parameter_shortname" : "live.slider",
							"parameter_type" : 0,
							"parameter_unitstyle" : 0
						}

					}
,
					"varname" : "live.slider"
				}

			}
, 			{
				"box" : 				{
					"basictuning" : 440,
					"data" : 					{
						"clips" : [ 							{
								"absolutepath" : "Rawness2.aif",
								"filename" : "Rawness2.aif",
								"filekind" : "audiofile",
								"id" : "u096002005",
								"loop" : 1,
								"content_state" : 								{
									"timestretch" : [ 0 ],
									"formantcorrection" : [ 0 ],
									"formant" : [ 1.0 ],
									"originallengthms" : [ 0.0 ],
									"quality" : [ "basic" ],
									"pitchshift" : [ 1.0 ],
									"originallength" : [ 0.0, "ticks" ],
									"slurtime" : [ 0.0 ],
									"originaltempo" : [ 120.0 ],
									"basictuning" : [ 440 ],
									"mode" : [ "basic" ],
									"speed" : [ 1.0 ],
									"pitchcorrection" : [ 0 ],
									"followglobaltempo" : [ 0 ],
									"loop" : 1
								}

							}
 ]
					}
,
					"followglobaltempo" : 0,
					"formantcorrection" : 0,
					"id" : "obj-2",
					"maxclass" : "playlist~",
					"mode" : "basic",
					"numinlets" : 1,
					"numoutlets" : 5,
					"originallength" : [ 0.0, "ticks" ],
					"originaltempo" : 120.0,
					"outlettype" : [ "signal", "signal", "signal", "", "dictionary" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 80.0, 52.0, 150.0, 30.0 ],
					"pitchcorrection" : 0,
					"quality" : "basic",
					"timestretch" : [ 0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-1", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-1", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"order" : 0,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"order" : 0,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 1 ],
					"order" : 1,
					"source" : [ "obj-10", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-10", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"midpoints" : [ 385.5, 482.0, 262.5, 482.0 ],
					"order" : 1,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-34", 0 ],
					"order" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-18", 0 ],
					"midpoints" : [ 1103.5, 519.5, 1043.5, 519.5 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-25", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-2", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 968.5, 510.5, 818.5, 510.5 ],
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 877.5, 510.5, 818.5, 510.5 ],
					"source" : [ "obj-22", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 818.5, 510.5, 818.5, 510.5 ],
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"midpoints" : [ 1019.5, 510.5, 818.5, 510.5 ],
					"source" : [ "obj-27", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-3", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"source" : [ "obj-31", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 0 ],
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-33", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-33", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 1 ],
					"source" : [ "obj-34", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"source" : [ "obj-34", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-35", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-4", 0 ],
					"source" : [ "obj-37", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-7", 0 ],
					"source" : [ "obj-37", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"source" : [ "obj-39", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-10", 1 ],
					"source" : [ "obj-7", 0 ]
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
 ],
		"parameters" : 		{
			"obj-37::obj-2::obj-10" : [ "live.slider[8]", "silder 7", 0 ],
			"obj-37::obj-2::obj-11" : [ "live.slider[6]", "slider 6", 0 ],
			"obj-37::obj-2::obj-12" : [ "live.slider[7]", "slider 5", 0 ],
			"obj-37::obj-2::obj-13" : [ "live.dial", "dial 1", 0 ],
			"obj-37::obj-2::obj-14" : [ "live.dial[1]", "dial 2", 0 ],
			"obj-37::obj-2::obj-15" : [ "live.dial[2]", "dial 4", 0 ],
			"obj-37::obj-2::obj-19" : [ "live.dial[3]", "dial 3", 0 ],
			"obj-37::obj-2::obj-2" : [ "live.slider[5]", "slider 1", 0 ],
			"obj-37::obj-2::obj-20" : [ "live.dial[4]", "dial 8", 0 ],
			"obj-37::obj-2::obj-21" : [ "live.dial[5]", "dial 7", 0 ],
			"obj-37::obj-2::obj-22" : [ "live.dial[6]", "dial 6", 0 ],
			"obj-37::obj-2::obj-23" : [ "live.dial[7]", "dial 5", 0 ],
			"obj-37::obj-2::obj-6" : [ "live.slider[1]", "slider 2", 0 ],
			"obj-37::obj-2::obj-7" : [ "live.slider[2]", "slider 4", 0 ],
			"obj-37::obj-2::obj-8" : [ "live.slider[3]", "slider 3", 0 ],
			"obj-37::obj-2::obj-9" : [ "live.slider[4]", "slider 8", 0 ],
			"obj-6" : [ "live.slider", "live.slider", 0 ],
			"obj-8" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{

			}
,
			"parameter_overrides" : 			{
				"obj-37::obj-2::obj-10" : 				{
					"parameter_longname" : "live.slider[8]"
				}
,
				"obj-37::obj-2::obj-11" : 				{
					"parameter_longname" : "live.slider[6]"
				}
,
				"obj-37::obj-2::obj-12" : 				{
					"parameter_longname" : "live.slider[7]"
				}
,
				"obj-37::obj-2::obj-13" : 				{
					"parameter_longname" : "live.dial"
				}
,
				"obj-37::obj-2::obj-14" : 				{
					"parameter_longname" : "live.dial[1]"
				}
,
				"obj-37::obj-2::obj-15" : 				{
					"parameter_longname" : "live.dial[2]"
				}
,
				"obj-37::obj-2::obj-19" : 				{
					"parameter_longname" : "live.dial[3]"
				}
,
				"obj-37::obj-2::obj-2" : 				{
					"parameter_longname" : "live.slider[5]"
				}
,
				"obj-37::obj-2::obj-20" : 				{
					"parameter_longname" : "live.dial[4]"
				}
,
				"obj-37::obj-2::obj-21" : 				{
					"parameter_longname" : "live.dial[5]"
				}
,
				"obj-37::obj-2::obj-22" : 				{
					"parameter_longname" : "live.dial[6]"
				}
,
				"obj-37::obj-2::obj-23" : 				{
					"parameter_longname" : "live.dial[7]"
				}
,
				"obj-37::obj-2::obj-6" : 				{
					"parameter_longname" : "live.slider[1]"
				}
,
				"obj-37::obj-2::obj-7" : 				{
					"parameter_longname" : "live.slider[2]"
				}
,
				"obj-37::obj-2::obj-8" : 				{
					"parameter_longname" : "live.slider[3]"
				}
,
				"obj-37::obj-2::obj-9" : 				{
					"parameter_longname" : "live.slider[4]"
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"parameter_map" : 		{
			"midi" : 			{
				"live.slider" : 				{
					"srcname" : "0.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"slider" : 				{
					"srcname" : "0.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"slider[1]" : 				{
					"srcname" : "1.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[5]" : 				{
					"srcname" : "0.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[1]" : 				{
					"srcname" : "2.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[3]" : 				{
					"srcname" : "2.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[2]" : 				{
					"srcname" : "3.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[7]" : 				{
					"srcname" : "4.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[6]" : 				{
					"srcname" : "5.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[8]" : 				{
					"srcname" : "6.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.slider[4]" : 				{
					"srcname" : "7.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial" : 				{
					"srcname" : "16.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[1]" : 				{
					"srcname" : "17.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[3]" : 				{
					"srcname" : "18.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[2]" : 				{
					"srcname" : "19.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[7]" : 				{
					"srcname" : "20.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[6]" : 				{
					"srcname" : "21.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[5]" : 				{
					"srcname" : "22.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}
,
				"live.dial[4]" : 				{
					"srcname" : "23.ctrl.0.chan.midi",
					"min" : 0.0,
					"max" : 127.0,
					"flags" : 2
				}

			}

		}
,
		"dependency_cache" : [ 			{
				"name" : "Rawness2.aif",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "eric.aif",
				"bootpath" : "/Volumes/Lyonizer4/SND/Joan Grossman/Processed Voices/eric",
				"patcherrelativepath" : "../../../../../SND/Joan Grossman/Processed Voices/eric",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "asd.spectralgate_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.spectralgate_d.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
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
				"name" : "asd.ring_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.alpverb_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
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
				"name" : "asd.harmonizer_unit_dx.maxpat",
				"bootpath" : "~/Documents/Max 8/Packages/Automated Sound Design Package",
				"patcherrelativepath" : "../../../../../../../Users/ericlyon/Documents/Max 8/Packages/Automated Sound Design Package",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "asd.pfft.harmonizer.maxpat",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
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
, 			{
				"name" : "asd.dynamic-processor2.js",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "worm2.6.aif",
				"bootpath" : "/Volumes/Lyonizer4/SND/Diet of Electric Worms/Tranche2",
				"patcherrelativepath" : "../../../../../SND/Diet of Electric Worms/Tranche2",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "sonatina-l1.aif",
				"bootpath" : "/Volumes/Lyonizer4/Lyon Writings/Automated Sound Design/Chapters/10. Mad Max/Code/Sounds",
				"patcherrelativepath" : "./Sounds",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "kyle dry sax.aif",
				"bootpath" : "/Volumes/Lyonizer4/SND/Diet of Electric Worms/Max/Dynamic Patches 12.11.20",
				"patcherrelativepath" : "../../../../../SND/Diet of Electric Worms/Max/Dynamic Patches 12.11.20",
				"type" : "AIFF",
				"implicit" : 1
			}
, 			{
				"name" : "el.killdc~.mxo",
				"type" : "iLaX"
			}
, 			{
				"name" : "el.chopper~.mxo",
				"type" : "iLaX"
			}
 ],
		"autosave" : 0
	}

}
