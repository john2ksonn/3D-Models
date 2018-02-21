$fn = 50;
platethickness = 2;

union(){
    difference(){
        cube([15, 60, platethickness]);
        translate([2.2 + 2.05, 2.2 + 2.05, 0]) cylinder(platethickness, 2.1, 2.1);
        translate([2.2 + 2.05, 60 - (2.2 + 2.05), 0]) cylinder(platethickness, 2.1, 2.1);
    }
    difference(){
        translate([-15, 15, platethickness]) cube([30, 10, 15]);
        rotate([90, 0, 0]) translate([-7.5, platethickness + 15/2, -22.5]) rotate([0, 0, 90]) cylinder(5, 5, 5, $fn = 6);
        translate([-7.5, 30, platethickness + 15/2]) rotate([90, 0, 0]) cylinder(20, 5.1/2, 5.1/2);
        translate([-17.5, 17.5, platethickness + 15/2 - 10 /2]) cube([10, 5, 10]);
    }
}