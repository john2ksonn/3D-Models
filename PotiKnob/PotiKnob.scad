union(){
    difference(){
        translate([0, 0, 14])
            cylinder(11, 5, 5, $fn = 10);
        translate([0, -.5, 24.5])
            cube([5, 1, .5]);
    }
    translate([0, 0, 4])
        cylinder(10, 2, 2, $fn = 100);
    difference(){
        cylinder(4, 2, 2, $fn = 100);
        translate([2-(1.6/2) + .1, -5, 0])
            cube([10, 10, 10]);
        translate([-(2-(1.6/2))-10 - .1, -5, 0])
            cube([10, 10, 10]);
    }    
}