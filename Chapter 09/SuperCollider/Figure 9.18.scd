~update_button_actions = {
	var button_matrix = ~interface[\button_matrix];
	~dm[\instr_count].do({
		arg i;
		~pat[\tick_count].do({
			arg j;
			button_matrix[i,j].action = {~pat[\attack_matrix][i, j] = button_matrix[i,j].value};
		});
	});
};