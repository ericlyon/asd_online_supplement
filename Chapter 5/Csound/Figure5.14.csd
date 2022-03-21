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
instr 3
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outs asig,asig
endin
instr 4
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      iloc = p10
      ipio2 = 1.5707963267949
      ileft = cos(iloc * ipio2)
      iright = sin(iloc * ipio2)
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outs asig * ileft,asig * iright
endin

instr 5
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp = p9
      ipanspeed = p10
      ipio2 = 1.5707963267949
      kpanloc randomi 0, ipio2,ipanspeed, 3
      kleft = cos(kpanloc)
      kright = sin(kpanloc)
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      asig oscili kamp * igain, kfreq * itransp, 1
      outs asig * kleft,asig * kright
endin


</CsInstruments>
<CsScore>
f1 0 16384 10 1
i5 0 20 0 8 "Gsh3.ats" 1 1 1 0.1677642583847
i5 0 20 0 8 "Gsh3.ats" 2 1 1 0.10170964002609
i5 0 20 0 8 "Gsh3.ats" 3 1 1 0.1247504234314
i5 0 20 0 8 "Gsh3.ats" 4 1 1 0.35078732967377
i5 0 20 0 8 "Gsh3.ats" 5 1 1 0.16677241325378
i5 0 20 0 8 "Gsh3.ats" 6 1 1 0.29862365722656
i5 0 20 0 8 "Gsh3.ats" 7 1 1 0.27750072479248
i5 0 20 0 8 "Gsh3.ats" 8 1 1 0.15725604295731
i5 0 20 0 8 "Gsh3.ats" 9 1 1 0.25904476642609
i5 0 20 0 8 "Gsh3.ats" 10 1 1 0.28986710309982
i5 0 20 0 8 "Gsh3.ats" 11 1 1 0.38009382486343
i5 0 20 0 8 "Gsh3.ats" 12 1 1 0.36979585886002
i5 0 20 0 8 "Gsh3.ats" 13 1 1 0.38928807973862
i5 0 20 0 8 "Gsh3.ats" 14 1 1 0.33778719902039
</CsScore>
</CsoundSynthesizer>
