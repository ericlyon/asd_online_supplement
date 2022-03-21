~initialize_pattern = {
	var maxticks = 64;
	~pat = Dictionary.new;
	~pat[\tsig_numerator] = 4;
	~pat[\tsig_denominator] = 4;
	~pat[\tsig_subdiv] = 4;
	~pat[\tick_count] = ~pat[\tsig_numerator] * ~pat[\tsig_subdiv];
	~pat[\attack_matrix] = Array2D.new(~dm[\instr_count], maxticks);
	~dm[\instr_count].do({
		arg i;
		maxticks.do({
			arg j;
			~pat[\attack_matrix] [i, j] = 0;
		});
	});
};