color("red") translate([1.5 + 2 + 1.5, 30/2-8 + 3, 2]) cube([17 - 3, 16 - 6, 2]);
difference(){
    cube([24, 30, 2]);
    translate([1.5, 2, 0]) cube([21, 3, 2]);
    translate([1.5, 2+3+20, 0]) cube([21, 3, 2]);
}