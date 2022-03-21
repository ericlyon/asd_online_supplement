const audioCtx = new (window.AudioContext || window.webkitAudioContext)();
var i, scrambled_urls;
var soundLayers = 4; // number of sounds to load
var spaceCoordinateExtent = 4.0; // arbitrary scalar
var panners = new Array(soundLayers);
var coordinates = new Array(soundLayers);
for (i = 0; i < soundLayers; i++) {
    coordinates[i] = new Array(3);
}
const freesound_urls = [
"https://freesound.org/data/previews/98/98613_213393-lq.mp3",
"https://freesound.org/data/previews/338/338814_5990829-lq.mp3",
"https://freesound.org/data/previews/502/502501_9289652-lq.mp3", 
"https://freesound.org/data/previews/47/47070_528100-lq.mp3",
"https://freesound.org/data/previews/506/506920_1453392-lq.mp3",
"https://freesound.org/data/previews/272/272087_4181170-lq.mp3",
"https://freesound.org/data/previews/64/64544_634166-lq.mp3",
"https://freesound.org/data/previews/580/580203_1014165-lq.mp3"
];

function scramble(arr) {
	var index,randex,tmp;
	index = arr.length
	while (index != 0) {
	  randex = Math.floor(Math.random() * index--);
	  tmp = arr[index];
	  arr[index] = arr[randex];
	  arr[randex] = tmp;
	}
	return arr;
}

function randf(minv,maxv)
{
    return(minv + (maxv - minv) * Math.random());
}

scrambled_urls = scramble(freesound_urls);
for (i = 0; i < soundLayers; i++) {
    build_sound_controls(i, scrambled_urls[i]);
}
build_listener_controls();
build_space_randomizer();


function build_sound_controls(sndNum, myURL) {
    var b1, b2, s1, s2, para, label, node, sx, sy, sz;
    var webSound, gainElement, pannerElement;
    gainElement = audioCtx.createGain();
    pannerElement = audioCtx.createPanner();
    pannerElement.panningModel = "HRTF";
    gainElement.gain.value = 1;
    b1 = document.createElement("INPUT");
    b1.setAttribute("type", "button");
    b1.value = "Play Soundfile " + (sndNum + 1);
    b1.onclick = function() {
        webSound = fetch_audio_data(myURL);
        webSound.connect(pannerElement);
        pannerElement.connect(gainElement);
        gainElement.connect(audioCtx.destination);
        webSound.start(0);
        b1.setAttribute("disabled", "disabled");
    };
    document.body.appendChild(b1);
    b2 = document.createElement("INPUT");
    b2.setAttribute("type", "button");
    b2.value = "Stop Soundfile " + (sndNum + 1);
    b2.onclick = function() {
        webSound.stop(0);
        b1.removeAttribute("disabled", "disabled");
    };
    document.body.appendChild(b2);
    para = document.createElement("P");
    document.body.appendChild(para);
    label = document.createElement("LABEL");
    node = document.createTextNode(" Playback Rate: ");
    label.appendChild(node);
    document.body.appendChild(label);
    s1 = document.createElement("INPUT");
    s1.setAttribute("type", "range");
    s1.setAttribute("min", 0.2);
    s1.setAttribute("max", 2.0);
    s1.setAttribute("step", 0.01);
    s1.value = 1;
    s1.oninput = function() {
        webSound.playbackRate.value = s1.value;
    };
    document.body.appendChild(s1);
    label = document.createElement("LABEL");
    node = document.createTextNode(" Gain: ");
    label.appendChild(node);
    document.body.appendChild(label);
    s2 = document.createElement("INPUT");
    s2.setAttribute("type", "range");
    s2.setAttribute("min", 0);
    s2.setAttribute("max", 1);
    s2.setAttribute("step", 0.01);
    s2.value = 0.5; //set gain to -6 dB
    s2.oninput = function() {
        gainElement.gain.value = s2.value;
    };
    document.body.appendChild(s2);
    para = document.createElement("P");
    document.body.appendChild(para);
    label = document.createElement("LABEL");
    node = document.createTextNode("X: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sx = document.createElement("INPUT");
    sx.setAttribute("type", "range");
    sx.setAttribute("min", -spaceCoordinateExtent);
    sx.setAttribute("max", spaceCoordinateExtent);
    sx.setAttribute("step", 0.01);
    sx.value = randf(-spaceCoordinateExtent, spaceCoordinateExtent);
    pannerElement.positionX.value = sx.value;
    sx.oninput = function() {
        pannerElement.positionX.value = sx.value;
    };
    document.body.appendChild(sx);
    label = document.createElement("LABEL");
    node = document.createTextNode("Y: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sy = document.createElement("INPUT");
    sy.setAttribute("type", "range");
    sy.setAttribute("min", -spaceCoordinateExtent);
    sy.setAttribute("max", spaceCoordinateExtent);
    sy.setAttribute("step", 0.01);
    sy.value = randf(-spaceCoordinateExtent, spaceCoordinateExtent);
    pannerElement.positionY.value = sy.value;
    sy.oninput = function() {
        pannerElement.positionY.value = sy.value;
    };
    document.body.appendChild(sy);
    label = document.createElement("LABEL");
    node = document.createTextNode("Z: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sz = document.createElement("INPUT");
    sz.setAttribute("type", "range");
    sz.setAttribute("min", -spaceCoordinateExtent);
    sz.setAttribute("max", spaceCoordinateExtent);
    sz.setAttribute("step", 0.01);
    sz.value = randf(-spaceCoordinateExtent, spaceCoordinateExtent);
    pannerElement.positionZ.value = sz.value;
    sz.oninput = function() {
        pannerElement.positionZ.value = sz.value;
    };
    document.body.appendChild(sz);
    para = document.createElement("P");
    document.body.appendChild(para);
    coordinates[sndNum][0] = sx;
    coordinates[sndNum][1] = sy;
    coordinates[sndNum][2] = sz;
    panners[sndNum] = pannerElement;
}


function fetch_audio_data(url) {
    var local_source;
    local_source = audioCtx.createBufferSource();
    var request = new XMLHttpRequest();
    request.open("GET", url, true);
    request.responseType = "arraybuffer";
    request.onload = function() {
        let audioData = request.response;
        audioCtx.decodeAudioData(
                                 audioData,
                                 function(buffer) {
            local_source.buffer = buffer;
            local_source.loop = true;
            console.log("successfully loaded " + url);
        },
                                 function(errmsg) {
            console.log("Error loading" + url + " with error: " + errmsg.err);
        });
    };
    request.send();
    return local_source;
}


function build_listener_controls() {
    var sx, sy, sz, label, node, para;
    var listenerRange = 5;
    para = document.createElement("P");
    document.body.appendChild(para);
    label = document.createElement("LABEL");
    node = document.createTextNode("Listener Position X: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sx = document.createElement("INPUT");
    sx.setAttribute("type", "range");
    sx.setAttribute("min", -listenerRange);
    sx.setAttribute("max", listenerRange);
    sx.setAttribute("step", 0.01);
    sx.value = 0;
    sx.oninput = function() {
        audioCtx.listener.positionX.value = sx.value;
    };
    document.body.appendChild(sx);
    para = document.createElement("P");
    document.body.appendChild(para);
    label = document.createElement("LABEL");
    node = document.createTextNode("Listener Position Y: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sy = document.createElement("INPUT");
    sy.setAttribute("type", "range");
    sy.setAttribute("min", -listenerRange);
    sy.setAttribute("max", listenerRange);
    sy.setAttribute("step", 0.01);
    sy.value = 0;
    sy.oninput = function() {
        audioCtx.listener.positionY.value = sy.value;
    };
    document.body.appendChild(sy);
    para = document.createElement("P");
    document.body.appendChild(para);
    label = document.createElement("LABEL");
    node = document.createTextNode("Listener Position Z: ");
    label.appendChild(node);
    document.body.appendChild(label);
    sz = document.createElement("INPUT");
    sz.setAttribute("type", "range");
    sz.setAttribute("min", -listenerRange);
    sz.setAttribute("max", listenerRange);
    sz.setAttribute("step", 0.01);
    sz.value = 0;
    sz.oninput = function() {
        audioCtx.listener.positionY.value = sz.value;
    };
    document.body.appendChild(sz);
}


function build_space_randomizer() {
    var i, j, val, b, para;
    para = document.createElement("P");
    document.body.appendChild(para);
    b = document.createElement("INPUT");
    b.setAttribute("type", "button");
    b.value = "Randomize Sound Locations";
    b.onclick = function() {
        for (i = 0; i < soundLayers; i++) {
            for (j = 0; j < 3; j++) {
                val = randf(-spaceCoordinateExtent, spaceCoordinateExtent);
                coordinates[i][j].value = val;
                switch (j) {
                    case 0:
                        panners[i].positionX.value = val;
                        break;
                    case 1:
                        panners[i].positionY.value = val;
                        break;
                    case 2:
                        panners[i].positionZ.value = val;
                        break;
                }
            }
        }
    };
    document.body.appendChild(b);
}
