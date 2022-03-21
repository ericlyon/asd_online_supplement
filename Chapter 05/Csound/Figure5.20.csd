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

instr 6
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      itransp1 = p9
      itransp2 = p10
      ipanspeed = p11
      ipio2 = 1.5707963267949
      kpanloc randomi 0, ipio2,ipanspeed, 3
      kleft = cos(kpanloc)
      kright = sin(kpanloc)
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      ktransp expseg itransp1, p3, itransp2
      asig oscili kamp * igain, kfreq * ktransp, 1
      outs asig * kleft,asig * kright
endin

instr 7
      istart = p4
      iend = p5
      ifile = p6
      ipartial = p7
      igain = p8
      ipanspeed = p9
      ifreqspeed = p10
      ifreqdev = p11
      ipio2 = 1.5707963267949
      kpanloc randomi 0, ipio2,ipanspeed, 3
      kleft = cos(kpanloc)
      kright = sin(kpanloc)
      ktime line istart, p3, iend
      kfreq, kamp ATSread ktime, ifile, ipartial 
      ktransp randi ifreqdev, ifreqspeed,2,1
      ktransp = 1 + ktransp
      asig oscili kamp * igain, kfreq * ktransp, 1
      outs asig * kleft,asig * kright
endin


</CsInstruments>
<CsScore>
f1 0 16384 10 1
i3 0 8 0 8 "Gsh3.ats" 1 1 0.83333333333333
i3 0 8 0 8 "Gsh3.ats" 2 1 1.5
i3 0 8 0 8 "Gsh3.ats" 3 1 0.8
i3 0 8 0 8 "Gsh3.ats" 4 1 0.8
i3 0 8 0 8 "Gsh3.ats" 5 1 0.66666666666667
i3 0 8 0 8 "Gsh3.ats" 6 1 0.83333333333333
i3 0 8 0 8 "Gsh3.ats" 7 1 1.25
i3 0 8 0 8 "Gsh3.ats" 8 1 0.8
i3 0 8 0 8 "Gsh3.ats" 9 1 1.25
i3 0 8 0 8 "Gsh3.ats" 10 1 1.2
i3 0 8 0 8 "Gsh3.ats" 11 1 0.8
i3 0 8 0 8 "Gsh3.ats" 12 1 1.25
i3 0 8 0 8 "Gsh3.ats" 13 1 0.83333333333333
i3 0 8 0 8 "Gsh3.ats" 14 1 1.25
</CsScore>
</CsoundSynthesizer>
