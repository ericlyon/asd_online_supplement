<CsoundSynthesizer>
<CsInstruments>
sr=44100
ksmps = 32
nchnls = 2
0dbfs = 1

instr 1
	ifile = p4
	ipartials ATSinfo ifile, 3
	print ipartials
endin

</CsInstruments>
<CsScore>
i1 0 0 "Gsh3.ats"
</CsScore>
</CsoundSynthesizer>
