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
i7 0 20 0 8 "Gsh3.ats" 1 1 0.24299947023392 0.22401161193848 0.053432188034058  
i7 0 20 0 8 "Gsh3.ats" 2 1 0.22320959568024 0.57529237270355 0.060657930374146  
i7 0 20 0 8 "Gsh3.ats" 3 1 0.24934457540512 0.18520659208298 0.030980396270752  
i7 0 20 0 8 "Gsh3.ats" 4 1 0.39218751192093 0.65288803577423 0.036761829853058  
i7 0 20 0 8 "Gsh3.ats" 5 1 0.18524417877197 0.71404068470001 0.016474566459656  
i7 0 20 0 8 "Gsh3.ats" 6 1 0.26682728528976 0.40052456855774 0.025207552909851  
i7 0 20 0 8 "Gsh3.ats" 7 1 0.18523584604263 0.71365455389023 0.030270004272461  
i7 0 20 0 8 "Gsh3.ats" 8 1 0.32016133069992 0.13835505247116 0.019615626335144  
i7 0 20 0 8 "Gsh3.ats" 9 1 0.14848099946976 0.72719777822495 0.049530546665192  
i7 0 20 0 8 "Gsh3.ats" 10 1 0.33067845106125 0.43014624118805 0.027169857025146  
i7 0 20 0 8 "Gsh3.ats" 11 1 0.1702468752861 0.33160670995712 0.043128221035004  
i7 0 20 0 8 "Gsh3.ats" 12 1 0.14581466913223 0.93743479251862 0.050549721717834  
i7 0 20 0 8 "Gsh3.ats" 13 1 0.35159910917282 0.25206344127655 0.051542088985443  
i7 0 20 0 8 "Gsh3.ats" 14 1 0.10475376844406 0.40094835758209 0.026757712364197  
</CsScore>
</CsoundSynthesizer>
