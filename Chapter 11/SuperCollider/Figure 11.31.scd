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