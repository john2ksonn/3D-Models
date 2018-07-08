$fn = 50;
platethickness = 2;
union(){
    difference(){
        cube([54, 60, platethickness]);
        translate([2.2 + 2.05, 2.2 + 2.05, 0]) cylinder(platethickness, 2.1, 2.1);
        translate([54 - (2.2 + 2.05), 2.2 + 2.05, 0]) cylinder(platethickness, 2.1, 2.1);
        translate([2.2 + 2.05, 60 - (2.2 + 2.05), 0]) cylinder(platethickness, 2.1, 2.1);
        translate([54 - (2.2 + 2.05), 60 - (2.2 + 2.05), 0]) cylinder(platethickness, 2.1, 2.1);
    }
    difference(){
        translate([54/2, 60/2, platethickness]){
            translate([0, 0, 12]) cube([5*2+4+2, 12.5, 24], true);
            //translate([0, 0, 12]) cube([5*2+4, 12.5, 24], true);
            //translate([2.5 + 3, -12.5/2, 0]) cube([5/2, 12.5, 10]);
            //translate([54/2, 30-12.5/2, 5]) rotate([-90, 0, 0]) cylinder(12.5, 5, 5);
        }
    
        //translate([54/2, 30-12.5/2, platethickness + 10]) rotate([-90, 0, 0]) cylinder(12.5, 8, 8);
        translate([54/2, 30-12.5/2, platethickness + 8]) rotate([-90, 0, 0]) cylinder(12.5, 11.5/2, 11.5/2);
        //translate([54/2, 30-12.5/2, platethickness + 8]) rotate([-90, 0, 0]) cylinder(12.5, 5, 5);
        translate([54/2, 60/2, platethickness + 15]) cube([5/2, 12.5, 30], true);
        translate([54/2, 30, platethickness + 18]) rotate([0, 90, 0]) cylinder(20, 2.55, 2.55, true);
        translate([54/2 + 4.5, 30, platethickness + 18]) rotate([0, 90, 0]) rotate([0, 0, 90]) cylinder(5, 4.55, 4.55, false, $fn = 6);
    }
    //translate([54/2, 60/2, platethickness]) cube([5, 12.5, 5]);
}