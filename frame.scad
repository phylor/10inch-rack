include <utils.scad>;

module plank(length) {
    cube([length, woodr, woodr]);
}

module frontBack() {
    color([1,1,0]) plank(10 * inch); // bottom
    translate([-woodr, 0, 6*u+2*woodr]) rotate([0,90,0]) // left
        plank(6*u+2*woodr);
    color([1,1,0]) translate([0,0,6*u+woodr]) // top
        plank(10 * inch);
    translate([10*inch, 0, 6*u+2*woodr]) rotate([0,90,0]) // right
        plank(6*u+2*woodr);
}

module frame() {
    frontBack();
    translate([0,200,0]) frontBack();

    // side
    rotate([0,0,90]) plank(200);
    translate([0,0,6*u+woodr]) rotate([0,0,90]) plank(200);
    translate([10*inch+woodr,0,0]) rotate([0,0,90]) plank(200);
    translate([10*inch+woodr,0,6*u+woodr]) rotate([0,0,90]) plank(200);
}

frame();