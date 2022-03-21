~node1 = Synth(\pulse, [\freq, 300, \gain, 0.1, \outbus, ~bus]);
~node2 = Synth(\passthrough, [\inbus, ~bus,\outbus, 0]);
~node2.moveAfter(~node1);
~node1.free; ~node2.free