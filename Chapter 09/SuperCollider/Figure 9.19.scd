~build_control_panel = {
	var w, clearb, play_button, store_menu, store_label, recall_menu, recall_label;
	var rate_slider, rate_label;
	var retro_slider, retro_label;
	var tempo_label, tempo_numbox;
	var ts_label, ts_num, ts_denom, subdiv_label, subdiv;
	var ts_update_button;
	var globgains_label, global_gains;
	var rate_spec;
	var h = 20, v = 20;
	var play_routine;
	w = Window.new( "DMIII Control Panel",Rect(50,800, 500, 600));
	rate_spec = ControlSpec(0.25,2.0);
	clearb = Button(w, Rect(h, v, 80, 30));
	clearb.action = ~clear;
	clearb.string = "Clear";
	h = h + 90;
	play_button =  Button(w, Rect(h, v, 90, 30));
	play_button.states = [["Start Playing"],["Stop Playing"]];
	play_button.action = {
		arg b;
		var state = b.value;
		if(state == 1, {
			play_routine = ~play_current_pattern.(~dm[\tempo]);
		}, {
			play_routine.stop;
		});
	};
	v = v + 35;
	h = 20;
	store_label = StaticText(w, Rect(h,v, 80, 30));
	store_label.string = "Store pattern";
	h = h + 90;
	store_menu = PopUpMenu(w, Rect(h,v,45, 30));
	store_menu.items = (0..63);
	store_menu.allowsReselection = true;
	store_menu.action = {
		arg menu;
		var index = menu.item;
		~dm[\allpats][index] = ~pat.deepCopy;
		post("Saving current pattern to index" + index + "\n");
	};
	v = v + 35;
	h = 20;
	recall_label = StaticText(w, Rect(h,v, 85, 30));
	recall_label.string = "Recall pattern";
	h = h + 90;
	recall_menu = PopUpMenu(w, Rect(h,v,45, 30));
	recall_menu.items = (0..63);
	recall_menu.allowsReselection = true;
	recall_menu.action = {
		arg menu;
		var index = menu.item;
		if( ~dm[\allpats][index].isNil, {
			post("No pattern found at index" + index + "\n");
		},{
			~dm[\next_pattern] = index;
			post("Recalling pattern" + index + "\n");
		});
	};
	v = v + 35;
	h = 20;
	rate_label = StaticText(w, Rect(h,v, 85, 30));
	rate_label.string = "Rate range";
	h = h + 90;
	rate_slider = RangeSlider(w, Rect(h,v,30,80));
	rate_slider.lo = rate_spec.unmap(~dm[\min_rate] );
	rate_slider.hi = rate_spec.unmap(~dm[\max_rate] );
	rate_slider.action = {
		arg slider;
		~dm[\min_rate] = rate_spec.map(rate_slider.lo);
		~dm[\max_rate] = rate_spec.map(rate_slider.hi);
	};
	h = h + 50;
	retro_label = StaticText(w, Rect(h,v, 85, 30));
	retro_label.string = "Retro odds";
	h = h + 70;
	retro_slider = Slider(w, Rect(h,v,30,80));
	retro_slider.action = {
		arg slider;
		~dm[\retro_odds] = slider.value;
	};
	retro_slider.value = ~dm[\retro_odds];
	v = v + 90;
	h = 20;
	tempo_label = StaticText(w, Rect(h,v, 60, 30)).string_("Tempo");
	h = h + 90;
	tempo_numbox = NumberBox(w, Rect(h,v,40,30));
	tempo_numbox.action = {
		arg num;
		~dm[\tempo] = num.value;
	};
	tempo_numbox.value = ~dm[\tempo];// new
	v = v + 35;
	h = 20;
	ts_label = StaticText(w, Rect(h,v, 120, 30)).string_("Time Signature");
	h = h + 120;
	ts_num = NumberBox(w, Rect(h,v,40,30)).value_(4);
	h = h + 40;
	ts_denom = NumberBox(w, Rect(h,v,40,30)).value_(4);
	h = h + 55;
	subdiv_label = StaticText(w, Rect(h,v, 80, 30)).string_("Subdivision");
	h = h + 80;
	subdiv = NumberBox(w, Rect(h,v,40,30)).value_(4);
	v = v + 35;
	h = 20;
	ts_update_button = Button(w, Rect(h,v,160,30)).string_("Update Time Signature");
	ts_update_button.action = {
		~rebuild_button_matrix.(ts_num.value,ts_denom.value,subdiv.value);
		~clear.();
	};
	v = v + 35;
	h = 20;
	globgains_label = StaticText(w, Rect(h,v + 30, 80, 30)).string_("Global Gains");
	h = h + 90;
	global_gains = MultiSliderView(w, Rect(h,v,~dm[\global_gains].size * 17,90));
	global_gains.value = ~dm[\global_gains];
	global_gains.elasticMode = 1;
	global_gains.isFilled_(true);
	global_gains.action = {
		arg mslider;
		~dm[\global_gains] = mslider.value;
	};
	~interface[\ts_num_box] = ts_num;
	~interface[\ts_denom_box] = ts_denom;
	~interface[\subdiv_box] = subdiv;
	w.front;
};
