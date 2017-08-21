woodr = 34;

module plank(length) {
    cube([length, woodr, woodr]);
}


inch = 25.4;
u = 1.75 * inch;

module frontBack() {
    plank(10 * inch); // bottom
    translate([-woodr, 0, 6*u]) rotate([0,90,0]) // left
        plank(6*u);
    translate([0,0,6*u-woodr]) // top
        plank(10 * inch);
    translate([10*inch, 0, 6*u]) rotate([0,90,0]) // right
        plank(6*u);
}

frontBack();
translate([0,200,0]) frontBack();

// side
rotate([0,0,90]) plank(200);
translate([0,0,6*u-woodr]) rotate([0,0,90]) plank(200);
translate([10*inch+woodr,0,0]) rotate([0,0,90]) plank(200);
translate([10*inch+woodr,0,6*u-woodr]) rotate([0,0,90]) plank(200);