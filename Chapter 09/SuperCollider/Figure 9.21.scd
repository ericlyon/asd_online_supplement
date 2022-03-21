~rebuild_button_matrix = { | num, denom, subdiv |
	var tick_count = num * subdiv;
	var button_matrix;
	var attack_matrix;
	var instr_count = ~dm[\instr_count];
	var previous_num = ~dm[\previous_numerator];
	var previous_denom = ~dm[\previous_denominator];
	var previous_subdiv = ~dm[\previous_subdiv];

	if( (num != previous_num) || (denom != previous_denom) || (subdiv != previous_subdiv),{
		var h = 180, v = 20;
		var hadv = 100 / subdiv * (4 / denom);
		var w;
		if(hadv < 20, { hadv = 20});
		w = ~interface[\w];
		button_matrix = ~interface[\button_matrix];
		attack_matrix = ~dm[\attack_matrix];
		button_matrix.rows.do({
			arg i;
			button_matrix.cols.do({
				arg j;
				button_matrix[i,j].remove;
			});
		});
		button_matrix = Array2D(instr_count, tick_count);
		attack_matrix = Array2D(instr_count, tick_count);
		instr_count.do({
			arg i;
			h = 180;
			tick_count.do({
				arg j;
				button_matrix[i,j] = Button(w, Rect(h, v, 20, 20));
				attack_matrix[i,j] = 0;
				button_matrix[i,j].states =  [ ["", Color.black, Color.white],  ["", Color.black, Color.black] ];
				h = h + hadv;
			});
			v = v + 25;
		});
		~pat[\tick_count] = tick_count;
		~dm[\previous_subdiv] = subdiv;
		~dm[\previous_numerator] = ~pat[\tsig_numerator] ;
		~dm[\previous_denominator] = ~pat[\tsig_denominator] ;
		~interface[\button_matrix] = button_matrix;
		~dm[\attack_matrix] = attack_matrix;
		~update_button_actions.();
		~pat[\tsig_numerator] = num;
		~pat[\tsig_denominator] = denom;
		~pat[\tsig_subdiv] = subdiv;
	});
};
