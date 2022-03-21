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
i5 0 20 0 8 "Gsh3.ats" 1 0.25 0.5 0.19889662265778
i5 0 20 0 8 "Gsh3.ats" 2 0.25 0.5 0.11592345237732
i5 0 20 0 8 "Gsh3.ats" 3 0.25 0.5 0.27449032068253
i5 0 20 0 8 "Gsh3.ats" 4 0.25 0.5 0.10284893512726
i5 0 20 0 8 "Gsh3.ats" 5 0.25 0.5 0.1410700917244
i5 0 20 0 8 "Gsh3.ats" 6 0.25 0.5 0.32765814065933
i5 0 20 0 8 "Gsh3.ats" 7 0.25 0.5 0.12251385450363
i5 0 20 0 8 "Gsh3.ats" 8 0.25 0.5 0.25118228197098
i5 0 20 0 8 "Gsh3.ats" 9 0.25 0.5 0.30190442800522
i5 0 20 0 8 "Gsh3.ats" 10 0.25 0.5 0.34441965818405
i5 0 20 0 8 "Gsh3.ats" 11 0.25 0.5 0.19494744539261
i5 0 20 0 8 "Gsh3.ats" 12 0.25 0.5 0.34633511304855
i5 0 20 0 8 "Gsh3.ats" 13 0.25 0.5 0.12874323129654
i5 0 20 0 8 "Gsh3.ats" 14 0.25 0.5 0.30625665187836
i5 0 20 0 8 "Gsh3.ats" 1 0.25 0.75 0.33358027935028
i5 0 20 0 8 "Gsh3.ats" 2 0.25 0.75 0.28297082185745
i5 0 20 0 8 "Gsh3.ats" 3 0.25 0.75 0.34162529706955
i5 0 20 0 8 "Gsh3.ats" 4 0.25 0.75 0.28167624473572
i5 0 20 0 8 "Gsh3.ats" 5 0.25 0.75 0.31182767152786
i5 0 20 0 8 "Gsh3.ats" 6 0.25 0.75 0.24303863048553
i5 0 20 0 8 "Gsh3.ats" 7 0.25 0.75 0.33242285251617
i5 0 20 0 8 "Gsh3.ats" 8 0.25 0.75 0.29067770242691
i5 0 20 0 8 "Gsh3.ats" 9 0.25 0.75 0.23192781209946
i5 0 20 0 8 "Gsh3.ats" 10 0.25 0.75 0.3552607178688
i5 0 20 0 8 "Gsh3.ats" 11 0.25 0.75 0.17491706609726
i5 0 20 0 8 "Gsh3.ats" 12 0.25 0.75 0.17542625665665
i5 0 20 0 8 "Gsh3.ats" 13 0.25 0.75 0.19284695386887
i5 0 20 0 8 "Gsh3.ats" 14 0.25 0.75 0.18857684135437
i5 0 20 0 8 "Gsh3.ats" 1 0.25 1.125 0.12536368370056
i5 0 20 0 8 "Gsh3.ats" 2 0.25 1.125 0.3112854719162
i5 0 20 0 8 "Gsh3.ats" 3 0.25 1.125 0.24906176328659
i5 0 20 0 8 "Gsh3.ats" 4 0.25 1.125 0.15504962205887
i5 0 20 0 8 "Gsh3.ats" 5 0.25 1.125 0.15539169311523
i5 0 20 0 8 "Gsh3.ats" 6 0.25 1.125 0.12488911151886
i5 0 20 0 8 "Gsh3.ats" 7 0.25 1.125 0.38076949119568
i5 0 20 0 8 "Gsh3.ats" 8 0.25 1.125 0.22303725481033
i5 0 20 0 8 "Gsh3.ats" 9 0.25 1.125 0.33103096485138
i5 0 20 0 8 "Gsh3.ats" 10 0.25 1.125 0.37059479951859
i5 0 20 0 8 "Gsh3.ats" 11 0.25 1.125 0.1761470913887
i5 0 20 0 8 "Gsh3.ats" 12 0.25 1.125 0.33362709283829
i5 0 20 0 8 "Gsh3.ats" 13 0.25 1.125 0.12027696371078
i5 0 20 0 8 "Gsh3.ats" 14 0.25 1.125 0.12048392295837
i5 0 20 0 8 "Gsh3.ats" 1 0.25 1.6875 0.12475979328156
i5 0 20 0 8 "Gsh3.ats" 2 0.25 1.6875 0.13752703666687
i5 0 20 0 8 "Gsh3.ats" 3 0.25 1.6875 0.11735253334045
i5 0 20 0 8 "Gsh3.ats" 4 0.25 1.6875 0.19939379692078
i5 0 20 0 8 "Gsh3.ats" 5 0.25 1.6875 0.13824011087418
i5 0 20 0 8 "Gsh3.ats" 6 0.25 1.6875 0.19139147996902
i5 0 20 0 8 "Gsh3.ats" 7 0.25 1.6875 0.35227302312851
i5 0 20 0 8 "Gsh3.ats" 8 0.25 1.6875 0.25613703727722
i5 0 20 0 8 "Gsh3.ats" 9 0.25 1.6875 0.3528636097908
i5 0 20 0 8 "Gsh3.ats" 10 0.25 1.6875 0.2201743721962
i5 0 20 0 8 "Gsh3.ats" 11 0.25 1.6875 0.31615954637527
i5 0 20 0 8 "Gsh3.ats" 12 0.25 1.6875 0.25207070112228
i5 0 20 0 8 "Gsh3.ats" 13 0.25 1.6875 0.21334089040756
i5 0 20 0 8 "Gsh3.ats" 14 0.25 1.6875 0.2114473938942
</CsScore>
</CsoundSynthesizer>
