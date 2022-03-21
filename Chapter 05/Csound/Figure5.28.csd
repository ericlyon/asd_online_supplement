
<CsoundSynthesizer>
<CsInstruments>
sr=44100
ksmps = 32
nchnls = 2
0dbfs = 1
instr 8
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
ifadein = p11
ifadeout = p12
isust = p3 - (ifadein + ifadeout)
ktime line istart, p3, iend
kfreq, kamp ATSread ktime, ifile, ipartial
kenv linseg 0, ifadein, igain, isust, igain, ifadeout, 0
asig oscili kamp * kenv, kfreq * itransp, 1
outs asig * ileft,asig * iright
endin
</CsInstruments>
<CsScore>
f1 0 16384 10 1
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 1 1 1.5 0.9 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 2 1 0.833333 0.76 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 3 1 1.25 0.33 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 4 1 1.25 0.24 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 5 1 0.8 0.9 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 6 1 1.25 0.38 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 7 1 1.2 0.91 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 8 1 1.2 0.73 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 9 1 0.8 0.02 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 10 1 1.5 0.25 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 11 1 1 0.04 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 12 1 1.2 0.32 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 13 1 0.8 0.24 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 14 1 0.8 0.86 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 15 1 1.2 0.07 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 16 1 1 0.7 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 17 1 0.833333 0.79 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 18 1 1.25 0.75 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 19 1 1.5 0.78 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 20 1 0.8 0.57 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 21 1 1.25 0.56 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 22 1 0.833333 0.2 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 23 1 0.66666 0.52 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 24 1 0.833333 0.77 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 25 1 0.833333 0.83 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 26 1 0.833333 0.41 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 27 1 0.66666 0.4 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 28 1 1.2 0.93 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 29 1 0.66666 0.07 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 30 1 1.5 0.11 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 31 1 1.5 0.57 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 32 1 0.8 0.73 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 33 1 0.66666 0.06 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 34 1 0.8 0.12 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 35 1 1.2 0.15 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 36 1 0.833333 0.7 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 37 1 1.5 0.56 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 38 1 0.8 0.93 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 39 1 1.25 0.66 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 40 1 1.2 0.54 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 41 1 1.25 0.16 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 42 1 0.66666 0.67 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 43 1 1.2 0.99 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 44 1 1.25 0.78 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 45 1 1.2 0.8 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 46 1 0.833333 0.19 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 47 1 1.25 0.33 0.05 0.05 
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 48 1 1.2 0.21 0.05 0.05 

</CsScore>
</CsoundSynthesizer>
