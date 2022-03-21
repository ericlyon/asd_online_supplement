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
i2 4.6000909805298 19.182569980621 0 8 "Gsh3.ats" 1 1
i2 2.8253704309464 1.7557660341263 0 8 "Gsh3.ats" 2 1
i2 0.36558747291565 9.0001937150955 0 8 "Gsh3.ats" 3 1
i2 0.23523390293121 15.31534910202 0 8 "Gsh3.ats" 4 1
i2 2.0474392175674 10.746087431908 0 8 "Gsh3.ats" 5 1
i2 0.7306957244873 17.865005970001 0 8 "Gsh3.ats" 6 1
i2 0.86649596691132 14.401777625084 0 8 "Gsh3.ats" 7 1
i2 0.55919826030731 8.6188260316849 0 8 "Gsh3.ats" 8 1
i2 0.83843111991882 10.498437166214 0 8 "Gsh3.ats" 9 1
i2 1.9613426923752 2.7609897851944 0 8 "Gsh3.ats" 10 1
i2 2.8986352682114 19.503741383553 0 8 "Gsh3.ats" 11 1
i2 1.2994784116745 8.1190068721771 0 8 "Gsh3.ats" 12 1
i2 3.3224314451218 4.4367824792862 0 8 "Gsh3.ats" 13 1
i2 3.1825947761536 19.679338216782 0 8 "Gsh3.ats" 14 1
</CsScore>
</CsoundSynthesizer>
