~build_algorithm_panel = {
	var w, h = 20, v = 20;
	var randfill_label, randfill_odds, randfill_button;
	var ts_num = ~interface[\ts_num_box];
	var ts_denom = ~interface[\ts_denom_box];
	var subdiv = ~interface[\subdiv_box];
	var button;
	var blend_label, blend_slider;
	var procodds_label, procodds_mslider;
	w = Window.new( "DMIII Algorithm Panel",Rect(1250,800, 500, 600));
	randfill_label = StaticText(w, Rect(h,v, 120, 30)).string_("Random Fill Odds");
	h = h + 120;
	randfill_odds = NumberBox(w, Rect(h,v,40,30)).value_(0.05);
	h = h + 40;
	randfill_button = Button(w, Rect(h,v,160,30)).string_("Apply Random Fill");
	randfill_button.action = {
		~dm[\instr_count].do({
			arg i;
			~pat[\tick_count].do({
				arg j;
				button = ~interface[\button_matrix][i,j];
				if( button.notNil,{
				if( randfill_odds.value.coin, {
					~interface[\button_matrix][i,j].value = 1;
					~pat[\attack_matrix][i,j] = 1;
				}, {
					~interface[\button_matrix][i,j].value = 0;
					~pat[\attack_matrix][i,j] = 0;
				});
				},{ ["invalid button at",i,j].postln;});
			});
		});
	};
	h = 20;
	v = v + 35;
	blend_label = StaticText(w, Rect(h,v, 90, 30)).string_("Blend Range");
	h = h + 90;
	blend_slider = RangeSlider(w, Rect(h,v,90,30));
	blend_slider.lo = ~dm[\blend_min];
	blend_slider.hi = ~dm[\blend_max];
	blend_slider.action = {
		arg slider;
		~dm[\blend_min] = slider.lo;
		~dm[\blend_max] = slider.hi;
	};
	h = 20;
	v = v + 35;
	procodds_label = StaticText(w, Rect(h,v + 30, 90, 30)).string_("Processor Odds");
		h = h + 90;
	procodds_mslider = MultiSliderView(w, Rect(h,v,~dm[\processor_odds].size * 17,90));
	procodds_mslider.value = ~dm[\processor_odds];
	procodds_mslider.elasticMode = 1;
	procodds_mslider.isFilled_(true);
	procodds_mslider.action = {
		arg mslider;
		~dm[\processor_odds] = mslider.value;
	};
	w.front;
};