$fn = 50;
platethickness = 2;

union(){
    difference(){
        cube([15, 60, platethickness]);
        translate([2.2 + 2.05, 2.2 + 2.05, 0]) cylinder(platethickness, 2.1, 2.1);
        translate([2.2 + 2.05, 60 - (2.2 + 2.05), 0]) cylinder(platethickness, 2.1, 2.1);
    }
    difference(){
        translate([0, 15, platethickness]) cube([15, 10, 20]);
        rotate([90, 0, ]) translate([15/2, 15, -15 - 15/2]) rotate([0, 0, 90]) cylinder(5, 5, 5, $fn = 6);
        rotate([90, 0, 0]) translate([15/2, 15, -15 - 10]) cylinder(10, 5.1/2, 5.1/2);
        translate([15/2, 17.5, 10]) cube([10, 5, 10]);
    }
}