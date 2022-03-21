~play_current_pattern = {
	var counter = 0;
	var player;
	player = Routine({
		loop {
			var tempo = ~dm[\tempo];
			var subdiv =  ~pat[\tsig_subdiv];
			var numerator = ~pat[\tsig_numerator];
			var denominator = ~pat[\tsig_denominator];
			var tadv = ((60 / tempo) * (4 / denominator)) / subdiv;
			var attack_matrix = ~pat[\attack_matrix];
			var tick_count = ~pat[\tick_count];
			if( (counter == (tick_count - 1) ) && ~dm[\next_pattern].notNil && (~dm[\next_pattern] != ~dm[\current_pattern]), {
				~pat = ~dm[\allpats][~dm[\next_pattern]].deepCopy;
				{
					~rebuild_button_matrix.(~pat[\tsig_numerator],~pat[\tsig_denominator], ~pat[\tsig_subdiv]);
					~restore_buttons.();
					~interface[\ts_num_box].value = ~pat[\tsig_numerator];
					~interface[\ts_denom_box].value = ~pat[\tsig_denominator];
					~interface[\subdiv_box].value = ~pat[\tsig_subdiv];
					~dm[\current_pattern] = ~dm[\next_pattern];
				}.defer(0);
			});
			~dm[\instr_count].do({
				arg i;
				if( attack_matrix[i,counter] == 1,{ ~dispatch.(i) });
			});
			tadv.wait;
			counter = (counter + 1) % tick_count;
		};
	});
	player.play; // start loop
};