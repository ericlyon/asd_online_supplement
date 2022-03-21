const audioCtx = new (window.AudioContext || window.webkitAudioContext)();
var i;
var scrambled_urls;
var soundLayers = 4; // number of sounds to load
var spaceCoordinateExtent = 4.0; // arbitrary scalar
var panners = new Array(soundLayers);
var coordinates = new Array(soundLayers);
for (i = 0; i < soundLayers; i++) {
  coordinates[i] = new Array(3);
}
const freesound_urls = [
  "https://freesound.org/data/previews/253/253133_1648170-lq.mp3",
  "https://freesound.org/data/previews/579/579024_9497060-lq.mp3",
  "https://freesound.org/data/previews/28/28283_37876-lq.mp3",
  "https://freesound.org/data/previews/106/106438_7037-lq.mp3",
  "https://freesound.org/data/previews/30/30553_36298-lq.mp3",
  "https://freesound.org/data/previews/436/436769_7085413-lq.mp3",
  "https://freesound.org/data/previews/479/479394_9862047-lq.mp3",
  "https://freesound.org/data/previews/342/342783_2129946-lq.mp3",
  "https://freesound.org/data/previews/502/502966_2214556-lq.mp3",
  "https://freesound.org/data/previews/164/164308_1847691-lq.mp3",
  "https://freesound.org/data/previews/108/108695_1779874-lq.mp3",
  "https://freesound.org/data/previews/108/108445_1587243-lq.mp3",
  "https://freesound.org/data/previews/70/70740_806506-lq.mp3",
  "https://freesound.org/data/previews/105/105662_1113551-lq.mp3",
  "https://freesound.org/data/previews/127/127018_670687-lq.mp3",
  "https://freesound.org/data/previews/557/557188_1535323-lq.mp3",
  "https://freesound.org/data/previews/265/265612_7037-lq.mp3",
  "https://freesound.org/data/previews/4/4852_7423-lq.mp3",
  "https://freesound.org/data/previews/519/519536_6150892-lq.mp3",
  "https://freesound.org/data/previews/114/114492_2026709-lq.mp3",
  "https://freesound.org/data/previews/218/218156_2366778-lq.mp3",
  "https://freesound.org/data/previews/369/369496_123355-lq.mp3",
  "https://freesound.org/data/previews/210/210558_97763-lq.mp3",
  "https://freesound.org/data/previews/184/184031_3416904-lq.mp3",
  "https://freesound.org/data/previews/266/266448_3598127-lq.mp3",
  "https://freesound.org/data/previews/329/329867_4772965-lq.mp3",
  "https://freesound.org/data/previews/515/515666_919187-lq.mp3",
  "https://freesound.org/data/previews/20/20532_103296-lq.mp3",
  "https://freesound.org/data/previews/392/392205_6761532-lq.mp3",
  "https://freesound.org/data/previews/202/202622_907124-lq.mp3",
  "https://freesound.org/data/previews/104/104528_1525198-lq.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FNEXT1.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FNEXT5NEXT3NEXT1.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FSPARTA3_DISCO6.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Ffreefall_cd1_t19.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Fcurtain_G3_4.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FMULE5.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FFUNKHEAD.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FCOREFLI.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FDOG_LITE.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Fspm-cut.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Felzk1.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2F27flute.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2F37flute.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2F58flute.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Fheino_G1_4.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Ffeta-jam.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FDnBEcho.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FDnB1v2.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2Fpolyfig.mp3",
  "https://cdn.glitch.com/26215650-ffb7-4be3-a469-16f34103064b%2FDUKE1_PERK3.mp"

];
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
    b1.setAttribute("disabled", "disabled"); // prevent multiple simultaneous plays
  };
  document.body.appendChild(b1);
  b2 = document.createElement("INPUT");
  b2.setAttribute("type", "button");
  b2.value = "Stop Soundfile " + (sndNum + 1);
  b2.onclick = function() {
    webSound.stop(0);
    b1.removeAttribute("disabled", "disabled"); // re-enable play button
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
  // Y
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
  // Z
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

function build_listener_controls() {
  var sx, sy, sz, label, node, para;
  // X control
  para = document.createElement("P");
  document.body.appendChild(para);
  label = document.createElement("LABEL");
  node = document.createTextNode("Listener Position X: ");
  label.appendChild(node);
  document.body.appendChild(label);
  sx = document.createElement("INPUT");
  sx.setAttribute("type", "range");
  sx.setAttribute("min", -5);
  sx.setAttribute("max", 5);
  sx.setAttribute("step", 0.01);
  sx.value = 0;
  sx.oninput = function() {
    audioCtx.listener.positionX.value = sx.value;
  };
  document.body.appendChild(sx);
  // Y control
  para = document.createElement("P");
  document.body.appendChild(para);
  label = document.createElement("LABEL");
  node = document.createTextNode("Listener Position Y: ");
  label.appendChild(node);
  document.body.appendChild(label);
  sy = document.createElement("INPUT");
  sy.setAttribute("type", "range");
  sy.setAttribute("min", -5);
  sy.setAttribute("max", 5);
  sy.setAttribute("step", 0.01);
  sy.value = 0;
  sy.oninput = function() {
    audioCtx.listener.positionY.value = sy.value;
  };
  document.body.appendChild(sy);
  // Z control
  para = document.createElement("P");
  document.body.appendChild(para);
  label = document.createElement("LABEL");
  node = document.createTextNode("Listener Position Z: ");
  label.appendChild(node);
  document.body.appendChild(label);
  sz = document.createElement("INPUT");
  sz.setAttribute("type", "range");
  sz.setAttribute("min", -5);
  sz.setAttribute("max", 5);
  sz.setAttribute("step", 0.01);
  sz.value = 0;
  sz.oninput = function() {
    audioCtx.listener.positionY.value = sz.value;
  };
  document.body.appendChild(sz);
}

function fetch_audio_data(url) {
  var local_source, songLength;
  local_source = audioCtx.createBufferSource();
  var request = new XMLHttpRequest();
  request.open("GET", url, true);
  request.responseType = "arraybuffer";
  request.onload = function() {
    let audioData = request.response;
    audioCtx.decodeAudioData(
      audioData,
      function(buffer) {
        songLength = buffer.duration;
        local_source.buffer = buffer;
        local_source.loop = true;
        console.log("successfully loaded " + url);
      },
      function(errmsg) {
        console.log("Error loading" + url + " with error: " + errmsg.err);
      }
    );
  };
  request.send();
  return local_source;
}
function scramble(arr) {
  var index, randex, tmp;
  index = arr.length;
  while (index != 0) {
    randex = Math.floor(Math.random() * index--);
    tmp = arr[index];
    arr[index] = arr[randex];
    arr[randex] = tmp;
  }
  return arr;
}
function randf(minv, maxv) {
  return minv + (maxv - minv) * Math.random();
}
function resume_web_audio() {
  console.log("Hit Audio Resume Button");
  audioCtx.resume().then(() => {
    console.log("Playback resumed successfully");
  });
}
