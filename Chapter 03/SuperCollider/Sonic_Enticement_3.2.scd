// 1. boot the server

s.boot

// 2. load the Additive Synthesis library

(thisProcess.nowExecutingPath.dirname ++ "/adsyn2lib.scd").load;

// create some additive synthesis patterns to work with

~generateNewPatterns.();

// try basic keyboard playback with sawtooth waves

~basicKeyboardPlayback.();

// use this to turn off the keyboard, before loading another keyboard playback configuration

~quitMIDI.();

// Try playing multi-timbral keyboard. Execute ~generateNewpatterns again for different sounds.

~multiTimbreKeyboard1.();

// Try a different configuration. Don't first to use ~quitMIDI first!

~multiTimbreKeyboard2.();

// Try each one of these separately:

~panningKeyboard1.();

~panningKeyboard2.();

~panningKeyboard3.();

~panningKeyboard4.();
