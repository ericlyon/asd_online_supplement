(
~busPool.do({ arg aBus; aBus.free});
~initialize_front_end = {
	~initialize_pattern.();
	~build_pattern_window.();
	~build_control_panel.();
	~build_algorithm_panel.();
	~busPool = Array.newClear(128);
	128.do({arg i; ~busPool[i] = Bus.audio(s,2)});
	~bus_index = 0;
};
~initialize_front_end.();
)