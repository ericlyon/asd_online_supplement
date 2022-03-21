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
i4 0 8 0 8 "Gsh3.ats" 13 0.9 0.8 0.28
i4 0.36 8 0 8 "Gsh3.ats" 8 0.9 1 0.5
i4 0.79 8 0 8 "Gsh3.ats" 1 0.9 1.2 0.21
i4 1.07 8 0 8 "Gsh3.ats" 6 0.9 0.833333 0.79
i4 1.4 8 0 8 "Gsh3.ats" 6 0.9 0.833333 0.36
i4 1.82 8 0 8 "Gsh3.ats" 1 0.9 0.66666 0.03
i4 2.01 8 0 8 "Gsh3.ats" 1 0.9 0.833333 0.16
i4 2.26 8 0 8 "Gsh3.ats" 7 0.9 0.66666 0.86
i4 2.48 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.38
i4 2.89 8 0 8 "Gsh3.ats" 3 0.9 0.8 0.46
i4 3.14 8 0 8 "Gsh3.ats" 12 0.9 0.8 0.28
i4 3.28 8 0 8 "Gsh3.ats" 9 0.9 1 0.05
i4 3.75 8 0 8 "Gsh3.ats" 13 0.9 1.2 0.06
i4 4.18 8 0 8 "Gsh3.ats" 5 0.9 1.25 0.21
i4 4.54 8 0 8 "Gsh3.ats" 6 0.9 0.66666 0.47
i4 4.66 8 0 8 "Gsh3.ats" 12 0.9 0.8 0.21
i4 4.83 8 0 8 "Gsh3.ats" 11 0.9 0.66666 0.36
i4 5.03 8 0 8 "Gsh3.ats" 9 0.9 0.66666 0.69
i4 5.45 8 0 8 "Gsh3.ats" 3 0.9 1.25 0.5
i4 5.91 8 0 8 "Gsh3.ats" 2 0.9 0.66666 0.22
i4 6.22 8 0 8 "Gsh3.ats" 1 0.9 1.5 0.96
i4 6.4 8 0 8 "Gsh3.ats" 3 0.9 0.66666 0.97
i4 6.68 8 0 8 "Gsh3.ats" 12 0.9 0.833333 0.52
i4 7.17 8 0 8 "Gsh3.ats" 7 0.9 1.2 0.31
i4 7.44 8 0 8 "Gsh3.ats" 1 0.9 1.5 0.34
i4 7.7 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.89
i4 7.95 8 0 8 "Gsh3.ats" 3 0.9 1.5 0.02
i4 8.41 8 0 8 "Gsh3.ats" 8 0.9 0.833333 0.89
i4 8.81 8 0 8 "Gsh3.ats" 10 0.9 1.25 0.47
i4 9.19 8 0 8 "Gsh3.ats" 13 0.9 0.8 0.15
i4 9.65 8 0 8 "Gsh3.ats" 6 0.9 0.66666 0.69
i4 10.1 8 0 8 "Gsh3.ats" 3 0.9 0.66666 0.88
i4 10.42 8 0 8 "Gsh3.ats" 7 0.9 0.833333 0.91
i4 10.83 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.2
i4 11.04 8 0 8 "Gsh3.ats" 10 0.9 0.8 0.43
i4 11.35 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.29
i4 11.69 8 0 8 "Gsh3.ats" 11 0.9 0.833333 0.73
i4 12.11 8 0 8 "Gsh3.ats" 1 0.9 1 0.63
i4 12.32 8 0 8 "Gsh3.ats" 4 0.9 1.25 0.67
i4 12.75 8 0 8 "Gsh3.ats" 9 0.9 1.2 0.2
i4 12.94 8 0 8 "Gsh3.ats" 11 0.9 1.5 0.86
i4 13.41 8 0 8 "Gsh3.ats" 6 0.9 1.25 0.31
i4 13.89 8 0 8 "Gsh3.ats" 5 0.9 1.2 0.39
i4 14.38 8 0 8 "Gsh3.ats" 13 0.9 0.66666 0.69
i4 14.75 8 0 8 "Gsh3.ats" 1 0.9 1.25 0.45
i4 15.08 8 0 8 "Gsh3.ats" 13 0.9 1.25 0.51
i4 15.22 8 0 8 "Gsh3.ats" 10 0.9 0.833333 0
i4 15.66 8 0 8 "Gsh3.ats" 5 0.9 1.5 0.31
i4 15.89 8 0 8 "Gsh3.ats" 8 0.9 0.8 0.17
i4 16.08 8 0 8 "Gsh3.ats" 4 0.9 1 0.81
i4 16.25 8 0 8 "Gsh3.ats" 1 0.9 0.66666 0.07
i4 16.62 8 0 8 "Gsh3.ats" 4 0.9 1.2 0.61
i4 16.75 8 0 8 "Gsh3.ats" 8 0.9 1 0.94
i4 16.9 8 0 8 "Gsh3.ats" 8 0.9 1 0.07
i4 17.22 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.69
i4 17.53 8 0 8 "Gsh3.ats" 13 0.9 0.833333 0.22
i4 17.95 8 0 8 "Gsh3.ats" 9 0.9 1.2 0.37
i4 18.31 8 0 8 "Gsh3.ats" 2 0.9 0.66666 0.49
i4 18.79 8 0 8 "Gsh3.ats" 2 0.9 1.2 0.78
i4 18.91 8 0 8 "Gsh3.ats" 3 0.9 1.5 0.92
i4 19.21 8 0 8 "Gsh3.ats" 14 0.9 1.2 0.92
i4 19.35 8 0 8 "Gsh3.ats" 13 0.9 1.25 0.06
i4 19.56 8 0 8 "Gsh3.ats" 9 0.9 1 0.95
i4 19.8 8 0 8 "Gsh3.ats" 2 0.9 1.5 0.88
i4 20.25 8 0 8 "Gsh3.ats" 9 0.9 1.5 0.65
i4 20.55 8 0 8 "Gsh3.ats" 6 0.9 1 0.84
i4 20.81 8 0 8 "Gsh3.ats" 13 0.9 0.66666 0.59
i4 21.18 8 0 8 "Gsh3.ats" 1 0.9 1.25 0.53
i4 21.44 8 0 8 "Gsh3.ats" 6 0.9 0.8 0.08
i4 21.63 8 0 8 "Gsh3.ats" 1 0.9 0.8 0.96
i4 22.01 8 0 8 "Gsh3.ats" 14 0.9 1.5 0.98
i4 22.27 8 0 8 "Gsh3.ats" 13 0.9 0.833333 0.71
i4 22.57 8 0 8 "Gsh3.ats" 9 0.9 1 0.3
i4 22.8 8 0 8 "Gsh3.ats" 10 0.9 0.66666 0.05
i4 23.27 8 0 8 "Gsh3.ats" 2 0.9 1.2 0.82
i4 23.53 8 0 8 "Gsh3.ats" 11 0.9 1.2 0.65
i4 24 8 0 8 "Gsh3.ats" 11 0.9 0.8 0.74
i4 24.27 8 0 8 "Gsh3.ats" 10 0.9 1 0.37
i4 24.73 8 0 8 "Gsh3.ats" 4 0.9 1.2 0.74
i4 25.17 8 0 8 "Gsh3.ats" 8 0.9 1.5 0.81
i4 25.56 8 0 8 "Gsh3.ats" 11 0.9 0.833333 0.91
i4 25.98 8 0 8 "Gsh3.ats" 5 0.9 0.833333 0.85
i4 26.47 8 0 8 "Gsh3.ats" 9 0.9 0.8 0.44
i4 26.68 8 0 8 "Gsh3.ats" 14 0.9 0.833333 0.58
i4 27.04 8 0 8 "Gsh3.ats" 1 0.9 1.2 0.41
i4 27.19 8 0 8 "Gsh3.ats" 5 0.9 1.25 0.27
i4 27.59 8 0 8 "Gsh3.ats" 5 0.9 1.5 0.02
i4 27.82 8 0 8 "Gsh3.ats" 5 0.9 0.8 0.93
i4 28.25 8 0 8 "Gsh3.ats" 6 0.9 1 0.33
i4 28.55 8 0 8 "Gsh3.ats" 7 0.9 1.5 0.67
i4 28.91 8 0 8 "Gsh3.ats" 6 0.9 1 0.81
i4 29.06 8 0 8 "Gsh3.ats" 7 0.9 0.8 0.04
i4 29.23 8 0 8 "Gsh3.ats" 14 0.9 0.66666 0.87
i4 29.71 8 0 8 "Gsh3.ats" 1 0.9 1.2 0.36
i4 29.84 8 0 8 "Gsh3.ats" 9 0.9 1.2 0.11
i4 30.31 8 0 8 "Gsh3.ats" 13 0.9 0.66666 0.68
i4 30.57 8 0 8 "Gsh3.ats" 3 0.9 0.66666 0.57
i4 30.87 8 0 8 "Gsh3.ats" 5 0.9 1.2 0.68
i4 31.27 8 0 8 "Gsh3.ats" 2 0.9 0.833333 0.82
i4 31.62 8 0 8 "Gsh3.ats" 6 0.9 1.25 0.24
i4 31.77 8 0 8 "Gsh3.ats" 5 0.9 1.5 0.95
i4 32.23 8 0 8 "Gsh3.ats" 11 0.9 1 0.88
i4 32.52 8 0 8 "Gsh3.ats" 13 0.9 1.2 0.23
i4 32.68 8 0 8 "Gsh3.ats" 6 0.9 1.2 0.85
i4 32.79 8 0 8 "Gsh3.ats" 14 0.9 1 0.62
i4 33.19 8 0 8 "Gsh3.ats" 8 0.9 0.8 0.06
i4 33.61 8 0 8 "Gsh3.ats" 9 0.9 1.25 0.35
i4 33.95 8 0 8 "Gsh3.ats" 13 0.9 0.8 0.2
i4 34.37 8 0 8 "Gsh3.ats" 13 0.9 0.66666 0.31
i4 34.69 8 0 8 "Gsh3.ats" 14 0.9 0.8 0.02
i4 34.79 8 0 8 "Gsh3.ats" 2 0.9 0.8 0.47
i4 35.02 8 0 8 "Gsh3.ats" 5 0.9 0.8 0.58
i4 35.27 8 0 8 "Gsh3.ats" 5 0.9 0.8 0.49
i4 35.65 8 0 8 "Gsh3.ats" 12 0.9 0.833333 0.13
i4 36.01 8 0 8 "Gsh3.ats" 10 0.9 0.833333 0.7
i4 36.33 8 0 8 "Gsh3.ats" 4 0.9 1.5 0.03
i4 36.56 8 0 8 "Gsh3.ats" 2 0.9 1.25 0.61
i4 36.82 8 0 8 "Gsh3.ats" 11 0.9 0.66666 0.11
i4 37.09 8 0 8 "Gsh3.ats" 4 0.9 1.2 0.92
i4 37.19 8 0 8 "Gsh3.ats" 7 0.9 0.66666 0.39
i4 37.5 8 0 8 "Gsh3.ats" 9 0.9 1.5 0
i4 37.78 8 0 8 "Gsh3.ats" 11 0.9 1.25 0.98
i4 38.12 8 0 8 "Gsh3.ats" 11 0.9 0.833333 0.06
i4 38.4 8 0 8 "Gsh3.ats" 12 0.9 0.833333 0.15
i4 38.86 8 0 8 "Gsh3.ats" 6 0.9 0.66666 0.03
i4 39 8 0 8 "Gsh3.ats" 6 0.9 1.2 0.21
i4 39.28 8 0 8 "Gsh3.ats" 12 0.9 1.25 0.42
i4 39.74 8 0 8 "Gsh3.ats" 3 0.9 0.66666 0.4
i4 40.14 8 0 8 "Gsh3.ats" 2 0.9 1.25 0.7
i4 40.25 8 0 8 "Gsh3.ats" 6 0.9 0.66666 0.3
i4 40.35 8 0 8 "Gsh3.ats" 4 0.9 0.8 0.21
i4 40.54 8 0 8 "Gsh3.ats" 11 0.9 0.8 0.01
i4 40.86 8 0 8 "Gsh3.ats" 9 0.9 1.25 0.4
i4 41.05 8 0 8 "Gsh3.ats" 6 0.9 1 0.87
i4 41.51 8 0 8 "Gsh3.ats" 3 0.9 0.66666 0.94
i4 41.73 8 0 8 "Gsh3.ats" 14 0.9 1 0.09
i4 41.9 8 0 8 "Gsh3.ats" 11 0.9 1 0.53
i4 42.04 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.43
i4 42.41 8 0 8 "Gsh3.ats" 3 0.9 1 0.42
i4 42.84 8 0 8 "Gsh3.ats" 5 0.9 1 0.53
i4 43.18 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.11
i4 43.58 8 0 8 "Gsh3.ats" 10 0.9 1 0.75
i4 43.8 8 0 8 "Gsh3.ats" 9 0.9 0.66666 0.31
i4 43.96 8 0 8 "Gsh3.ats" 14 0.9 0.66666 0.62
i4 44.29 8 0 8 "Gsh3.ats" 1 0.9 1.2 0.18
i4 44.62 8 0 8 "Gsh3.ats" 4 0.9 0.66666 0.56
i4 44.73 8 0 8 "Gsh3.ats" 10 0.9 1.25 0.79
i4 44.85 8 0 8 "Gsh3.ats" 13 0.9 1.5 0.93
i4 45.13 8 0 8 "Gsh3.ats" 6 0.9 0.66666 0.42
i4 45.53 8 0 8 "Gsh3.ats" 2 0.9 0.833333 0.6
i4 45.75 8 0 8 "Gsh3.ats" 2 0.9 1.2 0.14
i4 46.04 8 0 8 "Gsh3.ats" 1 0.9 0.66666 0.36
i4 46.32 8 0 8 "Gsh3.ats" 10 0.9 0.8 0.47
i4 46.55 8 0 8 "Gsh3.ats" 13 0.9 1.5 0
i4 46.97 8 0 8 "Gsh3.ats" 4 0.9 1 0.52
i4 47.16 8 0 8 "Gsh3.ats" 9 0.9 1.2 0.92
i4 47.47 8 0 8 "Gsh3.ats" 9 0.9 1.2 0.85
i4 47.91 8 0 8 "Gsh3.ats" 1 0.9 0.8 0.91
i4 48.05 8 0 8 "Gsh3.ats" 3 0.9 0.8 0.66
i4 48.22 8 0 8 "Gsh3.ats" 9 0.9 1.5 0.8
i4 48.49 8 0 8 "Gsh3.ats" 4 0.9 1 0.93
i4 48.92 8 0 8 "Gsh3.ats" 7 0.9 1.5 0.86
i4 49.11 8 0 8 "Gsh3.ats" 7 0.9 0.8 0.27
i4 49.44 8 0 8 "Gsh3.ats" 4 0.9 1 0.34
i4 49.81 8 0 8 "Gsh3.ats" 8 0.9 0.66666 0.59
i4 49.96 8 0 8 "Gsh3.ats" 14 0.9 1.5 0.65
i4 50.29 8 0 8 "Gsh3.ats" 6 0.9 1 0.14
i4 50.43 8 0 8 "Gsh3.ats" 8 0.9 1.25 0.34
i4 50.86 8 0 8 "Gsh3.ats" 12 0.9 1.2 0.44
i4 51.15 8 0 8 "Gsh3.ats" 14 0.9 1.25 0.4
i4 51.47 8 0 8 "Gsh3.ats" 8 0.9 0.8 0.44
i4 51.84 8 0 8 "Gsh3.ats" 14 0.9 0.8 0.02
i4 52.02 8 0 8 "Gsh3.ats" 1 0.9 0.833333 0.32
i4 52.18 8 0 8 "Gsh3.ats" 11 0.9 0.833333 0.13
i4 52.39 8 0 8 "Gsh3.ats" 10 0.9 0.8 0.1
i4 52.7 8 0 8 "Gsh3.ats" 13 0.9 1.25 0.88
i4 53.16 8 0 8 "Gsh3.ats" 7 0.9 0.8 0.28
i4 53.47 8 0 8 "Gsh3.ats" 6 0.9 1.5 0.24
i4 53.7 8 0 8 "Gsh3.ats" 6 0.9 0.8 0.17
i4 54.08 8 0 8 "Gsh3.ats" 10 0.9 1.2 0.64
i4 54.23 8 0 8 "Gsh3.ats" 11 0.9 1.25 0.55
i4 54.38 8 0 8 "Gsh3.ats" 10 0.9 1.25 0.51
i4 54.79 8 0 8 "Gsh3.ats" 13 0.9 1.2 0.35
i4 55.13 8 0 8 "Gsh3.ats" 10 0.9 0.833333 0.4
i4 55.55 8 0 8 "Gsh3.ats" 6 0.9 1.25 0.54
i4 55.91 8 0 8 "Gsh3.ats" 1 0.9 0.66666 0.38
i4 56.38 8 0 8 "Gsh3.ats" 11 0.9 1.5 0.42
i4 56.5 8 0 8 "Gsh3.ats" 3 0.9 1.2 0.92
i4 56.84 8 0 8 "Gsh3.ats" 14 0.9 1.5 0.73
i4 57.11 8 0 8 "Gsh3.ats" 10 0.9 0.8 0.65
i4 57.21 8 0 8 "Gsh3.ats" 12 0.9 1.2 0.12
i4 57.61 8 0 8 "Gsh3.ats" 10 0.9 0.833333 0.79
i4 57.73 8 0 8 "Gsh3.ats" 10 0.9 0.833333 0.08
i4 58.06 8 0 8 "Gsh3.ats" 2 0.9 0.833333 0.23
i4 58.53 8 0 8 "Gsh3.ats" 14 0.9 1.5 0.61
i4 58.89 8 0 8 "Gsh3.ats" 14 0.9 0.66666 0.36
i4 59.29 8 0 8 "Gsh3.ats" 8 0.9 1.2 0.67
i4 59.48 8 0 8 "Gsh3.ats" 4 0.9 1 0.46
i4 59.74 8 0 8 "Gsh3.ats" 13 0.9 1.2 0.42
i4 59.87 8 0 8 "Gsh3.ats" 8 0.9 1 0.42
</CsScore>
</CsoundSynthesizer>
