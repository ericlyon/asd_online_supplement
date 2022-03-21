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


</CsInstruments>
<CsScore>
f1 0 16384 10 1
i4 0 16 0 8 "Gsh3.ats" 1 1 1 0.059206247329712
i4 0 16 0 8 "Gsh3.ats" 2 1 1 0.3305389881134
i4 0 16 0 8 "Gsh3.ats" 3 1 1 0.90519869327545
i4 0 16 0 8 "Gsh3.ats" 4 1 1 0.47915494441986
i4 0 16 0 8 "Gsh3.ats" 5 1 1 0.39504313468933
i4 0 16 0 8 "Gsh3.ats" 6 1 1 0.76732838153839
i4 0 16 0 8 "Gsh3.ats" 7 1 1 0.2756644487381
i4 0 16 0 8 "Gsh3.ats" 8 1 1 0.045580983161926
i4 0 16 0 8 "Gsh3.ats" 9 1 1 0.47125256061554
i4 0 16 0 8 "Gsh3.ats" 10 1 1 0.14615976810455
i4 0 16 0 8 "Gsh3.ats" 11 1 1 0.080282092094421
i4 0 16 0 8 "Gsh3.ats" 12 1 1 0.73519217967987
i4 0 16 0 8 "Gsh3.ats" 13 1 1 0.16173219680786
i4 0 16 0 8 "Gsh3.ats" 14 1 1 0.51906859874725
 
</CsScore>
</CsoundSynthesizer>
