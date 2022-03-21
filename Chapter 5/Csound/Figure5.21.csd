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
i4 0 8 0 8 "Gsh3.ats" 12 0.9 1 0.83
i4 0.4 8 0 8 "Gsh3.ats" 5 0.9 1 0.11
i4 0.79 8 0 8 "Gsh3.ats" 12 0.9 1 0.66
i4 0.96 8 0 8 "Gsh3.ats" 9 0.9 1 0.44
i4 1.24 8 0 8 "Gsh3.ats" 10 0.9 1 0.6
i4 1.38 8 0 8 "Gsh3.ats" 14 0.9 1 0.32
i4 1.68 8 0 8 "Gsh3.ats" 8 0.9 1 0.71
i4 1.88 8 0 8 "Gsh3.ats" 11 0.9 1 0.55
i4 2.31 8 0 8 "Gsh3.ats" 6 0.9 1 0.67
i4 2.78 8 0 8 "Gsh3.ats" 1 0.9 1 0.23
i4 2.95 8 0 8 "Gsh3.ats" 12 0.9 1 0.97
i4 3.23 8 0 8 "Gsh3.ats" 5 0.9 1 0.71
i4 3.35 8 0 8 "Gsh3.ats" 8 0.9 1 0.64
i4 3.48 8 0 8 "Gsh3.ats" 10 0.9 1 0.38
i4 3.69 8 0 8 "Gsh3.ats" 12 0.9 1 0.4
i4 3.8 8 0 8 "Gsh3.ats" 3 0.9 1 0.14
i4 4.16 8 0 8 "Gsh3.ats" 4 0.9 1 0.95
i4 4.51 8 0 8 "Gsh3.ats" 13 0.9 1 0.56
i4 4.91 8 0 8 "Gsh3.ats" 6 0.9 1 0.97
i4 5.33 8 0 8 "Gsh3.ats" 5 0.9 1 0.72
i4 5.75 8 0 8 "Gsh3.ats" 6 0.9 1 0.21
i4 6.04 8 0 8 "Gsh3.ats" 10 0.9 1 0.12
i4 6.18 8 0 8 "Gsh3.ats" 2 0.9 1 0.39
i4 6.67 8 0 8 "Gsh3.ats" 10 0.9 1 0.02
i4 7.12 8 0 8 "Gsh3.ats" 14 0.9 1 0.1
i4 7.57 8 0 8 "Gsh3.ats" 7 0.9 1 0.33
i4 7.68 8 0 8 "Gsh3.ats" 12 0.9 1 0.09
i4 7.98 8 0 8 "Gsh3.ats" 8 0.9 1 0.11
i4 8.42 8 0 8 "Gsh3.ats" 13 0.9 1 0.42
i4 8.62 8 0 8 "Gsh3.ats" 13 0.9 1 0.16
i4 8.91 8 0 8 "Gsh3.ats" 2 0.9 1 0.46
i4 9.13 8 0 8 "Gsh3.ats" 2 0.9 1 0.37
i4 9.56 8 0 8 "Gsh3.ats" 4 0.9 1 0.96
i4 9.79 8 0 8 "Gsh3.ats" 5 0.9 1 0.39
i4 9.95 8 0 8 "Gsh3.ats" 6 0.9 1 0.63
i4 10.38 8 0 8 "Gsh3.ats" 7 0.9 1 0.97
i4 10.84 8 0 8 "Gsh3.ats" 12 0.9 1 0.01
i4 11.33 8 0 8 "Gsh3.ats" 8 0.9 1 0.45
i4 11.49 8 0 8 "Gsh3.ats" 8 0.9 1 0.24
i4 11.63 8 0 8 "Gsh3.ats" 10 0.9 1 0.02
i4 11.94 8 0 8 "Gsh3.ats" 8 0.9 1 0.52
i4 12.2 8 0 8 "Gsh3.ats" 13 0.9 1 0.5
i4 12.34 8 0 8 "Gsh3.ats" 9 0.9 1 0.38
i4 12.54 8 0 8 "Gsh3.ats" 9 0.9 1 0.61
i4 12.64 8 0 8 "Gsh3.ats" 6 0.9 1 0.01
i4 12.92 8 0 8 "Gsh3.ats" 11 0.9 1 0.23
i4 13.13 8 0 8 "Gsh3.ats" 11 0.9 1 0.63
i4 13.39 8 0 8 "Gsh3.ats" 13 0.9 1 0.88
i4 13.55 8 0 8 "Gsh3.ats" 9 0.9 1 0.03
i4 13.65 8 0 8 "Gsh3.ats" 5 0.9 1 0.82
i4 13.96 8 0 8 "Gsh3.ats" 13 0.9 1 0.43
i4 14.23 8 0 8 "Gsh3.ats" 1 0.9 1 0.6
i4 14.54 8 0 8 "Gsh3.ats" 1 0.9 1 0.85
i4 14.79 8 0 8 "Gsh3.ats" 3 0.9 1 0.48
i4 15.08 8 0 8 "Gsh3.ats" 8 0.9 1 0.87
i4 15.19 8 0 8 "Gsh3.ats" 12 0.9 1 0.64
i4 15.3 8 0 8 "Gsh3.ats" 14 0.9 1 0.87
i4 15.74 8 0 8 "Gsh3.ats" 12 0.9 1 0.96
i4 16.06 8 0 8 "Gsh3.ats" 6 0.9 1 0.06
i4 16.19 8 0 8 "Gsh3.ats" 7 0.9 1 0.21
i4 16.59 8 0 8 "Gsh3.ats" 12 0.9 1 0.47
i4 16.73 8 0 8 "Gsh3.ats" 8 0.9 1 0.63
i4 16.88 8 0 8 "Gsh3.ats" 2 0.9 1 0.58
i4 17.35 8 0 8 "Gsh3.ats" 1 0.9 1 0.57
i4 17.7 8 0 8 "Gsh3.ats" 10 0.9 1 0.78
i4 17.87 8 0 8 "Gsh3.ats" 8 0.9 1 0.13
i4 18.08 8 0 8 "Gsh3.ats" 13 0.9 1 0.5
i4 18.44 8 0 8 "Gsh3.ats" 11 0.9 1 0.3
i4 18.89 8 0 8 "Gsh3.ats" 13 0.9 1 0.92
i4 19.04 8 0 8 "Gsh3.ats" 14 0.9 1 0.87
i4 19.15 8 0 8 "Gsh3.ats" 1 0.9 1 0.6
i4 19.41 8 0 8 "Gsh3.ats" 6 0.9 1 0.8
i4 19.67 8 0 8 "Gsh3.ats" 10 0.9 1 0.21
i4 20.16 8 0 8 "Gsh3.ats" 6 0.9 1 0.47
i4 20.3 8 0 8 "Gsh3.ats" 5 0.9 1 0.68
i4 20.48 8 0 8 "Gsh3.ats" 11 0.9 1 0.93
i4 20.89 8 0 8 "Gsh3.ats" 2 0.9 1 0.31
i4 21.25 8 0 8 "Gsh3.ats" 4 0.9 1 0.46
i4 21.37 8 0 8 "Gsh3.ats" 12 0.9 1 0.26
i4 21.7 8 0 8 "Gsh3.ats" 6 0.9 1 0.57
i4 21.82 8 0 8 "Gsh3.ats" 14 0.9 1 0.9
i4 22.01 8 0 8 "Gsh3.ats" 11 0.9 1 0.86
i4 22.3 8 0 8 "Gsh3.ats" 3 0.9 1 0.63
i4 22.56 8 0 8 "Gsh3.ats" 7 0.9 1 0.43
i4 22.76 8 0 8 "Gsh3.ats" 9 0.9 1 0.11
i4 23.14 8 0 8 "Gsh3.ats" 13 0.9 1 0.64
i4 23.42 8 0 8 "Gsh3.ats" 7 0.9 1 0.59
i4 23.57 8 0 8 "Gsh3.ats" 5 0.9 1 0.16
i4 23.83 8 0 8 "Gsh3.ats" 5 0.9 1 0.5
i4 24.08 8 0 8 "Gsh3.ats" 11 0.9 1 0.54
i4 24.43 8 0 8 "Gsh3.ats" 4 0.9 1 0.17
i4 24.77 8 0 8 "Gsh3.ats" 5 0.9 1 0.93
i4 24.94 8 0 8 "Gsh3.ats" 5 0.9 1 0.99
i4 25.31 8 0 8 "Gsh3.ats" 6 0.9 1 0.13
i4 25.49 8 0 8 "Gsh3.ats" 12 0.9 1 0.98
i4 25.75 8 0 8 "Gsh3.ats" 1 0.9 1 0.4
i4 26.06 8 0 8 "Gsh3.ats" 12 0.9 1 0.53
i4 26.48 8 0 8 "Gsh3.ats" 6 0.9 1 0.35
i4 26.72 8 0 8 "Gsh3.ats" 12 0.9 1 0.43
i4 26.98 8 0 8 "Gsh3.ats" 6 0.9 1 0.23
i4 27.39 8 0 8 "Gsh3.ats" 1 0.9 1 0.87
i4 27.72 8 0 8 "Gsh3.ats" 5 0.9 1 0.62
i4 27.87 8 0 8 "Gsh3.ats" 10 0.9 1 0.65
i4 28.35 8 0 8 "Gsh3.ats" 5 0.9 1 0.91
i4 28.63 8 0 8 "Gsh3.ats" 11 0.9 1 0.29
i4 28.96 8 0 8 "Gsh3.ats" 11 0.9 1 0.91
i4 29.42 8 0 8 "Gsh3.ats" 13 0.9 1 0.25
i4 29.78 8 0 8 "Gsh3.ats" 5 0.9 1 0.06
i4 29.88 8 0 8 "Gsh3.ats" 5 0.9 1 0.03
i4 30.14 8 0 8 "Gsh3.ats" 7 0.9 1 0.73
i4 30.44 8 0 8 "Gsh3.ats" 12 0.9 1 0.12
i4 30.77 8 0 8 "Gsh3.ats" 11 0.9 1 0.36
i4 31.08 8 0 8 "Gsh3.ats" 7 0.9 1 0.7
i4 31.23 8 0 8 "Gsh3.ats" 14 0.9 1 0.97
i4 31.56 8 0 8 "Gsh3.ats" 2 0.9 1 0.57
i4 31.69 8 0 8 "Gsh3.ats" 2 0.9 1 0.73
i4 31.89 8 0 8 "Gsh3.ats" 8 0.9 1 0.78
i4 32.04 8 0 8 "Gsh3.ats" 10 0.9 1 0.76
i4 32.15 8 0 8 "Gsh3.ats" 7 0.9 1 0.51
i4 32.54 8 0 8 "Gsh3.ats" 13 0.9 1 0.6
i4 32.98 8 0 8 "Gsh3.ats" 7 0.9 1 0.07
i4 33.39 8 0 8 "Gsh3.ats" 13 0.9 1 0.59
i4 33.49 8 0 8 "Gsh3.ats" 14 0.9 1 0.67
i4 33.83 8 0 8 "Gsh3.ats" 1 0.9 1 0.55
i4 34.11 8 0 8 "Gsh3.ats" 3 0.9 1 0.7
i4 34.52 8 0 8 "Gsh3.ats" 5 0.9 1 0.16
i4 34.76 8 0 8 "Gsh3.ats" 7 0.9 1 0.42
i4 34.92 8 0 8 "Gsh3.ats" 10 0.9 1 0.52
i4 35.19 8 0 8 "Gsh3.ats" 6 0.9 1 0.93
i4 35.32 8 0 8 "Gsh3.ats" 1 0.9 1 0.52
i4 35.69 8 0 8 "Gsh3.ats" 13 0.9 1 0.68
i4 36.07 8 0 8 "Gsh3.ats" 5 0.9 1 0
i4 36.47 8 0 8 "Gsh3.ats" 14 0.9 1 0.79
i4 36.83 8 0 8 "Gsh3.ats" 12 0.9 1 0.17
i4 37.19 8 0 8 "Gsh3.ats" 5 0.9 1 0.1
i4 37.56 8 0 8 "Gsh3.ats" 12 0.9 1 0.86
i4 37.71 8 0 8 "Gsh3.ats" 5 0.9 1 0.01
i4 37.84 8 0 8 "Gsh3.ats" 13 0.9 1 0.54
i4 38.22 8 0 8 "Gsh3.ats" 8 0.9 1 0.8
i4 38.57 8 0 8 "Gsh3.ats" 14 0.9 1 0.8
i4 38.8 8 0 8 "Gsh3.ats" 4 0.9 1 0.85
i4 38.95 8 0 8 "Gsh3.ats" 2 0.9 1 0.98
i4 39.14 8 0 8 "Gsh3.ats" 2 0.9 1 0.99
i4 39.56 8 0 8 "Gsh3.ats" 5 0.9 1 0.91
i4 39.97 8 0 8 "Gsh3.ats" 5 0.9 1 0.29
i4 40.1 8 0 8 "Gsh3.ats" 7 0.9 1 0.64
i4 40.26 8 0 8 "Gsh3.ats" 1 0.9 1 0.9
i4 40.43 8 0 8 "Gsh3.ats" 2 0.9 1 0.8
i4 40.55 8 0 8 "Gsh3.ats" 2 0.9 1 0.5
i4 40.66 8 0 8 "Gsh3.ats" 7 0.9 1 0.51
i4 41 8 0 8 "Gsh3.ats" 9 0.9 1 0.9
i4 41.48 8 0 8 "Gsh3.ats" 10 0.9 1 0.64
i4 41.83 8 0 8 "Gsh3.ats" 9 0.9 1 0.13
i4 41.97 8 0 8 "Gsh3.ats" 7 0.9 1 0.15
i4 42.24 8 0 8 "Gsh3.ats" 7 0.9 1 0.19
i4 42.52 8 0 8 "Gsh3.ats" 8 0.9 1 0.21
i4 42.97 8 0 8 "Gsh3.ats" 2 0.9 1 0.5
i4 43.14 8 0 8 "Gsh3.ats" 8 0.9 1 0.97
i4 43.58 8 0 8 "Gsh3.ats" 1 0.9 1 0.17
i4 44.04 8 0 8 "Gsh3.ats" 11 0.9 1 0.63
i4 44.14 8 0 8 "Gsh3.ats" 5 0.9 1 0.37
i4 44.39 8 0 8 "Gsh3.ats" 11 0.9 1 0.43
i4 44.79 8 0 8 "Gsh3.ats" 13 0.9 1 0.19
i4 44.92 8 0 8 "Gsh3.ats" 7 0.9 1 0.92
i4 45.3 8 0 8 "Gsh3.ats" 13 0.9 1 0.23
i4 45.55 8 0 8 "Gsh3.ats" 6 0.9 1 0.45
i4 45.99 8 0 8 "Gsh3.ats" 9 0.9 1 0.28
i4 46.14 8 0 8 "Gsh3.ats" 4 0.9 1 0.3
i4 46.56 8 0 8 "Gsh3.ats" 5 0.9 1 0.33
i4 47.03 8 0 8 "Gsh3.ats" 14 0.9 1 0.48
i4 47.31 8 0 8 "Gsh3.ats" 1 0.9 1 0.39
i4 47.46 8 0 8 "Gsh3.ats" 5 0.9 1 0.46
i4 47.73 8 0 8 "Gsh3.ats" 2 0.9 1 0.26
i4 47.99 8 0 8 "Gsh3.ats" 5 0.9 1 0.57
i4 48.12 8 0 8 "Gsh3.ats" 12 0.9 1 0.18
i4 48.24 8 0 8 "Gsh3.ats" 1 0.9 1 0.85
i4 48.36 8 0 8 "Gsh3.ats" 7 0.9 1 0.93
i4 48.61 8 0 8 "Gsh3.ats" 4 0.9 1 0.3
i4 48.98 8 0 8 "Gsh3.ats" 11 0.9 1 0.69
i4 49.08 8 0 8 "Gsh3.ats" 3 0.9 1 0.77
i4 49.29 8 0 8 "Gsh3.ats" 13 0.9 1 0.51
i4 49.46 8 0 8 "Gsh3.ats" 6 0.9 1 0.65
i4 49.68 8 0 8 "Gsh3.ats" 9 0.9 1 0.72
i4 49.96 8 0 8 "Gsh3.ats" 6 0.9 1 0.47
i4 50.2 8 0 8 "Gsh3.ats" 8 0.9 1 0.23
i4 50.44 8 0 8 "Gsh3.ats" 8 0.9 1 0.02
i4 50.85 8 0 8 "Gsh3.ats" 14 0.9 1 0.24
i4 51.16 8 0 8 "Gsh3.ats" 11 0.9 1 0.74
i4 51.42 8 0 8 "Gsh3.ats" 4 0.9 1 0.24
i4 51.58 8 0 8 "Gsh3.ats" 10 0.9 1 0.72
i4 51.95 8 0 8 "Gsh3.ats" 3 0.9 1 0.44
i4 52.05 8 0 8 "Gsh3.ats" 8 0.9 1 0.84
i4 52.41 8 0 8 "Gsh3.ats" 7 0.9 1 0.82
i4 52.52 8 0 8 "Gsh3.ats" 13 0.9 1 0.84
i4 52.69 8 0 8 "Gsh3.ats" 11 0.9 1 0.25
i4 52.8 8 0 8 "Gsh3.ats" 8 0.9 1 0.87
i4 53.28 8 0 8 "Gsh3.ats" 9 0.9 1 0.34
i4 53.62 8 0 8 "Gsh3.ats" 14 0.9 1 0.65
i4 53.98 8 0 8 "Gsh3.ats" 9 0.9 1 0.51
i4 54.16 8 0 8 "Gsh3.ats" 10 0.9 1 0.79
i4 54.6 8 0 8 "Gsh3.ats" 2 0.9 1 0.59
i4 54.86 8 0 8 "Gsh3.ats" 14 0.9 1 0.61
i4 55.22 8 0 8 "Gsh3.ats" 5 0.9 1 0.88
i4 55.59 8 0 8 "Gsh3.ats" 13 0.9 1 0.46
i4 56.08 8 0 8 "Gsh3.ats" 5 0.9 1 0.02
i4 56.44 8 0 8 "Gsh3.ats" 5 0.9 1 0.03
i4 56.75 8 0 8 "Gsh3.ats" 2 0.9 1 0.1
i4 56.85 8 0 8 "Gsh3.ats" 12 0.9 1 0.78
i4 57.21 8 0 8 "Gsh3.ats" 5 0.9 1 0.49
i4 57.59 8 0 8 "Gsh3.ats" 4 0.9 1 0.93
i4 57.83 8 0 8 "Gsh3.ats" 5 0.9 1 0.51
i4 57.96 8 0 8 "Gsh3.ats" 14 0.9 1 0.54
i4 58.43 8 0 8 "Gsh3.ats" 13 0.9 1 0.76
i4 58.58 8 0 8 "Gsh3.ats" 12 0.9 1 0.38
i4 58.7 8 0 8 "Gsh3.ats" 9 0.9 1 0.33
i4 59.08 8 0 8 "Gsh3.ats" 8 0.9 1 0.56
i4 59.46 8 0 8 "Gsh3.ats" 3 0.9 1 0.55
i4 59.85 8 0 8 "Gsh3.ats" 12 0.9 1 0.82
</CsScore>
</CsoundSynthesizer>
