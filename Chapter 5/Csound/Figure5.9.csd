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


</CsInstruments>
<CsScore>
f1 0 16384 10 1
i3 0 20 0 8.0 "Gsh3.ats" 1 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 2 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 3 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 4 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 5 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 6 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 7 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 8 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 9 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 10 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 11 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 12 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 13 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 14 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 15 0.25 1
i3 0 20 0 8.0 "Gsh3.ats" 1 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 2 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 3 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 4 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 5 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 6 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 7 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 8 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 9 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 10 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 11 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 12 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 13 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 14 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 15 0.25 1.25
i3 0 20 0 8.0 "Gsh3.ats" 1 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 2 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 3 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 4 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 5 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 6 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 7 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 8 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 9 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 10 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 11 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 12 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 13 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 14 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 15 0.25 1.5
i3 0 20 0 8.0 "Gsh3.ats" 1 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 2 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 3 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 4 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 5 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 6 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 7 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 8 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 9 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 10 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 11 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 12 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 13 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 14 0.25 1.7777777777778
i3 0 20 0 8.0 "Gsh3.ats" 15 0.25 1.7777777777778
</CsScore>
</CsoundSynthesizer>
