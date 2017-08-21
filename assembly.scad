include <utils.scad>;
use <frame.scad>;
include <rack_strip.scad>;

frame();
translate([0,0,6*u+woodr]) rotate([180,0,90]) rackStrip();
translate([10*inch,0,woodr]) rotate([0,0,90]) rackStrip();