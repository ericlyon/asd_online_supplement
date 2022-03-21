(
var filename = SCDoc.helpSourceDir +/+ "images/Swamp.png";
var image = Image.new(filename);
image.plot;
("image height:" + image.height ++ ", image width:" + image.width).postln;
)

(
var img = Image.new(SCDoc.helpSourceDir +/+ "images/Swamp.png");
img.height.do({ arg y;
	img.width.do({ arg x;
		var thisPix = img.getPixel(x,y);
		var data = Image.pixelToColor(thisPix);
		var colorMix = data.red + data.blue + data.green;
		postf("% ", colorMix.trunc(0.1) );
	});
	"".postln;
});
)

(Color.black).array

x = Color.black
x.green
y = Color.blue

6705 + 150