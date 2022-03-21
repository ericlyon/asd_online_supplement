(
~node1 = Synth(\pulse, [\freq, 300, \gain, 0.1, \outbus, ~bus]);
~node2 = Synth.after(~node1,\echos, [\bus, ~bus]);
~node3 = Synth.after(~node2, \randfilt, [\bus, ~bus]);
~node4 = Synth.after(~node3, \passthrough, [\inbus, ~bus,\outbus, 0]);
)