include <utils.scad>;

module rackStrip() {
    color([0,0,0])
        union() {
// mounting side
difference() {
    cube([32.5, 1.5, 6*u]);
    
    for(unit=[0:1:6]) {
        translate([32.5/2, 3, unit * u + 3/2 + 22.25])
            rotate([90,0,0]) cylinder(r=3, h=4.5);
    }
}

// square hole strip
difference() {
    cube([1.5, 15.88, 6*u]);

    for(unit=[0:1:6]) {
        squareHole(unit * u + 6.35);
        squareHole(unit * u + 22.25);
        squareHole(unit * u + 38.15);
    }
}
}
}

// square holes are centered at:
// 6.35mm 22.25mm 38.15mm
// width: 15.88m
// square holes: 9.5mm

// centerZ: the point at which the square hole is centered at (on the Z axis)
module squareHole(centerZ) {
    translate([-1.5, (15.88-9.5)/2, centerZ-9.5/2]) cube([4.5, 9.5, 9.5]);
}