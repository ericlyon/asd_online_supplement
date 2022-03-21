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

instr 2
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq, 1
      outs asig,asig
endin
</CsInstruments>
<CsScore>
f1 0 16384 10 1
i2 0 32 0 8 "Gsh3.ats" 1 1
i2 0 32 0 8 "Gsh3.ats" 2 1
i2 0 32 0 8 "Gsh3.ats" 3 1
i2 0 32 0 8 "Gsh3.ats" 4 1
i2 0 32 0 8 "Gsh3.ats" 5 1
i2 0 32 0 8 "Gsh3.ats" 6 1
i2 0 32 0 8 "Gsh3.ats" 7 1
i2 0 32 0 8 "Gsh3.ats" 8 1
i2 0 32 0 8 "Gsh3.ats" 9 1
i2 0 32 0 8 "Gsh3.ats" 10 1
i2 0 32 0 8 "Gsh3.ats" 11 1
i2 0 32 0 8 "Gsh3.ats" 12 1
i2 0 32 0 8 "Gsh3.ats" 13 1
i2 0 32 0 8 "Gsh3.ats" 14 1
i2 0 32 0 8 "Gsh3.ats" 15 1
</CsScore>
</CsoundSynthesizer>
