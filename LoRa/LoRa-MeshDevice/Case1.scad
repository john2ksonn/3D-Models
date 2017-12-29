/**
 * This is a casing for a prototype of the LoRa-MeshDevice
 */

difference(){
union(){
    translate([0, 2, 0]) difference(){
        union(){
            translate([0, -2, 0]) cube([34, 87, 22]);
            rotate([-90, 0, 0]) translate([34 - (13+2), -15-2, 83]) cylinder(52, 5, 5, $fn = 100);
        }
        translate([2, -2, 1.5]) cube([30, 85, 19]);
        rotate([-90, 0, 0]) translate([34 -(13+2), -15-2, 83]) cylinder(50, 3.2, 3.2, $fn = 100);
    }
    rotate([-90, 0, 0]) translate([34 - (13+2), -15-2, 0]) cylinder(1, 3.2, 3.2, $fn = 100);
}
translate([0, 0, 0]) cube([34, 80, 22]);
translate([0, 90, 0]) cube([34, 80, 22]);
}
/*
difference(){
    translate([50, 0, 0]) union(){
        cube([34, 2, 22]);
        translate([2, 2, 2]) cube([30, 2, 18]);
    }
    translate([59 + 2, 0, 12.5 + 1.5]) cube([12, 4, 8]);
}*/