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
