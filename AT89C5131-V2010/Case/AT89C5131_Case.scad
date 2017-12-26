wallthickness = 2.5;
$fn = 50;

//feets
/*
translate([10, 10, 0]) cylinder(3, 3, 3);
translate([wallthickness*2 + 102 - 10, 10, 0]) cylinder(3, 3, 3);
translate([10, wallthickness*2 + 85 - 10, 0]) cylinder(3, 3, 3);
translate([wallthickness*2 + 102 - 10, wallthickness*2 + 85 - 10, 0]) cylinder(3, 3, 3);
translate([0, 0, 3])*/


difference(){
    shell();
    translate([0, 0, 17 + 2 + 1.5]) cube([wallthickness * 2 + 102, wallthickness*2 + 85, 17 + 4]);
}

module shell(){
    difference(){
        cube([wallthickness*2 + 102, wallthickness*2 + 85, 17 + 4]);
        translate([wallthickness, wallthickness, 2]) cube([102, 85, 25]);
        translate([wallthickness + 100 + 1 - 6 - 13 - 1.5, 0, 9.5])
            cube([15, 10, 8]);
        translate([0, wallthickness + 30 - 0.5 + 1, 9])
            cube([7, 9 + 1, 15]);
    }
    translate([3 + wallthickness + 1, 4.5 + wallthickness + 1, 2])
        cylinder(9, 1.25, 1.25);
    translate([3 + wallthickness + 1, 79.5 + wallthickness + 1, 2])
        cylinder(9, 1.25, 1.25);
    translate([3 + wallthickness + 1 + 93, 4.5 + wallthickness + 1, 2])
        cylinder(9, 1.25, 1.25);
    translate([3 + wallthickness + 1 + 93, 79.5 + wallthickness + 1, 2])
        cylinder(9, 1.25, 1.25);
    translate([3 + wallthickness + 1, 4.5 + wallthickness + 1, 2])
        cylinder(6, 2, 2);    
    translate([3 + wallthickness + 1, 79.5 + wallthickness + 1, 2])
        cylinder(6, 2, 2);    
    translate([3 + wallthickness + 1 + 93, 4.5 + wallthickness + 1, 2])
        cylinder(6, 2, 2);    
    translate([3 + wallthickness + 1 + 93, 79.5 + wallthickness + 1, 2])
        cylinder(6, 2, 2);    
}

module uC(){
    union(){
        cube([100, 83, 5]);
        translate([-2, 29, 5]) cube([14, 9, 11]);
        translate([80, 0, 5]) cube([14, 14.5, 7.5]);
        translate([100 - 35 + 2.5, 28.5, 5]) cylinder(14, 2.5, 2.5);
        translate([100 - 37, 83 - 21.5, 5]) cylinder(14, 2.5, 2.5);
        //21,5
        translate([100 - 5 - 16, 21.5, 5]) cube([16, 14.5, 4]);
        translate([100 - 50 - 6, 83 - 16 - 6, 5]) cube([6, 6, 4]);
    }
}