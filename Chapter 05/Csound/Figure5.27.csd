
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
i8 0 18.5 0 18.5 "Hutchins-sax-runs.ats" 1 1 1 0.14 0.05 0.05 
i8 0 18.9625 0 18.5 "Hutchins-sax-runs.ats" 2 1 1 0.1 0.05 0.05 
i8 0 19.425 0 18.5 "Hutchins-sax-runs.ats" 3 1 1 0.75 0.05 0.05 
i8 0 19.8875 0 18.5 "Hutchins-sax-runs.ats" 4 1 1 0.37 0.05 0.05 
i8 0 20.35 0 18.5 "Hutchins-sax-runs.ats" 5 1 1 0.28 0.05 0.05 
i8 0 20.8125 0 18.5 "Hutchins-sax-runs.ats" 6 1 1 0 0.05 0.05 
i8 0 21.275 0 18.5 "Hutchins-sax-runs.ats" 7 1 1 0.25 0.05 0.05 
i8 0 21.7375 0 18.5 "Hutchins-sax-runs.ats" 8 1 1 0.06 0.05 0.05 
i8 0 22.2 0 18.5 "Hutchins-sax-runs.ats" 9 1 1 0.91 0.05 0.05 
i8 0 22.6625 0 18.5 "Hutchins-sax-runs.ats" 10 1 1 0.3 0.05 0.05 
i8 0 23.125 0 18.5 "Hutchins-sax-runs.ats" 11 1 1 0.86 0.05 0.05 
i8 0 23.5875 0 18.5 "Hutchins-sax-runs.ats" 12 1 1 0.06 0.05 0.05 
i8 0 24.05 0 18.5 "Hutchins-sax-runs.ats" 13 1 1 0.8 0.05 0.05 
i8 0 24.5125 0 18.5 "Hutchins-sax-runs.ats" 14 1 1 0.7 0.05 0.05 
i8 0 24.975 0 18.5 "Hutchins-sax-runs.ats" 15 1 1 0.24 0.05 0.05 
i8 0 25.4375 0 18.5 "Hutchins-sax-runs.ats" 16 1 1 0.69 0.05 0.05 
i8 0 25.9 0 18.5 "Hutchins-sax-runs.ats" 17 1 1 0.07 0.05 0.05 
i8 0 26.3625 0 18.5 "Hutchins-sax-runs.ats" 18 1 1 0.38 0.05 0.05 
i8 0 26.825 0 18.5 "Hutchins-sax-runs.ats" 19 1 1 0.58 0.05 0.05 
i8 0 27.2875 0 18.5 "Hutchins-sax-runs.ats" 20 1 1 0.43 0.05 0.05 
i8 0 27.75 0 18.5 "Hutchins-sax-runs.ats" 21 1 1 0.74 0.05 0.05 
i8 0 28.2125 0 18.5 "Hutchins-sax-runs.ats" 22 1 1 0.25 0.05 0.05 
i8 0 28.675 0 18.5 "Hutchins-sax-runs.ats" 23 1 1 0.06 0.05 0.05 
i8 0 29.1375 0 18.5 "Hutchins-sax-runs.ats" 24 1 1 0.33 0.05 0.05 
i8 0 29.6 0 18.5 "Hutchins-sax-runs.ats" 25 1 1 0.77 0.05 0.05 
i8 0 30.0625 0 18.5 "Hutchins-sax-runs.ats" 26 1 1 0.13 0.05 0.05 
i8 0 30.525 0 18.5 "Hutchins-sax-runs.ats" 27 1 1 0.24 0.05 0.05 
i8 0 30.9875 0 18.5 "Hutchins-sax-runs.ats" 28 1 1 0.99 0.05 0.05 
i8 0 31.45 0 18.5 "Hutchins-sax-runs.ats" 29 1 1 0.16 0.05 0.05 
i8 0 31.9125 0 18.5 "Hutchins-sax-runs.ats" 30 1 1 0.27 0.05 0.05 
i8 0 32.375 0 18.5 "Hutchins-sax-runs.ats" 31 1 1 0.92 0.05 0.05 
i8 0 32.8375 0 18.5 "Hutchins-sax-runs.ats" 32 1 1 0.49 0.05 0.05 
i8 0 33.3 0 18.5 "Hutchins-sax-runs.ats" 33 1 1 0.77 0.05 0.05 
i8 0 33.7625 0 18.5 "Hutchins-sax-runs.ats" 34 1 1 0.1 0.05 0.05 
i8 0 34.225 0 18.5 "Hutchins-sax-runs.ats" 35 1 1 0.91 0.05 0.05 
i8 0 34.6875 0 18.5 "Hutchins-sax-runs.ats" 36 1 1 0.29 0.05 0.05 
i8 0 35.15 0 18.5 "Hutchins-sax-runs.ats" 37 1 1 0.22 0.05 0.05 
i8 0 35.6125 0 18.5 "Hutchins-sax-runs.ats" 38 1 1 0.99 0.05 0.05 
i8 0 36.075 0 18.5 "Hutchins-sax-runs.ats" 39 1 1 0.38 0.05 0.05 
i8 0 36.5375 0 18.5 "Hutchins-sax-runs.ats" 40 1 1 0.43 0.05 0.05 
i8 0 37 0 18.5 "Hutchins-sax-runs.ats" 41 1 1 0.54 0.05 0.05 
i8 0 37.4625 0 18.5 "Hutchins-sax-runs.ats" 42 1 1 0.21 0.05 0.05 
i8 0 37.925 0 18.5 "Hutchins-sax-runs.ats" 43 1 1 0.09 0.05 0.05 
i8 0 38.3875 0 18.5 "Hutchins-sax-runs.ats" 44 1 1 0.6 0.05 0.05 
i8 0 38.85 0 18.5 "Hutchins-sax-runs.ats" 45 1 1 0.27 0.05 0.05 
i8 0 39.3125 0 18.5 "Hutchins-sax-runs.ats" 46 1 1 0.18 0.05 0.05 
i8 0 39.775 0 18.5 "Hutchins-sax-runs.ats" 47 1 1 0.89 0.05 0.05 
i8 0 40.2375 0 18.5 "Hutchins-sax-runs.ats" 48 1 1 0.23 0.05 0.05 

</CsScore>
</CsoundSynthesizer>
