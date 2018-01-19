$fn = 50;
difference(){
    union(){
        difference(){
            translate([0, -3, 0]) cube([62, 6, 52]);
            translate([0, 0, 52]){
                translate([(8.2 + 2.6/2), 3, -(3.9 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 2.6/2, 2.6/2);
                translate([62 - (8.2 + 2.6/2), 3, -(41.4 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 2.6/2, 2.6/2);
                translate([(8.2 + 2.6/2), 0, -(3.9 + 2.6/2)]) rotate([90, 0, 0]) cylinder(4, 5.7/2, 5.7/2);
                translate([62 - (8.2 + 2.6/2), 0, -(41.4 + 2.6/2)]) rotate([90, 0, 0]) cylinder(4, 5.7/2, 5.7/2);
            }
        }
        translate([0, 3, 52]){
            translate([(18.7 + 6.65/2), 3, -(14.5 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([(18.7 + 6.65/2), 3, -(38 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([62 - (18.7 + 6.65/2), 3, -(14.5 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([62 - (18.7 + 6.65/2), 3, -(38 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
        }
        
        translate([62/2 - 27/2, -3, 0]) cube([27, 6, 145]);
        translate([62/2, 3, 17.5 + 54.6 + 5]) rotate([90, 0, 0]) cylinder(6, 5, 5);
        translate([62/2, 3, 17.5 + 54.6*2 + 7.5]) rotate([90, 0, 0]) cylinder(6, 5, 5);
            
    }
    translate([62/2, 6, 17.5 + 2.5]) rotate([90, 0, 0]) cylinder(36, 2.5, 2.5);
    translate([62/2, 0, 17.5 + 54.6 + 5]) rotate([90, 0, 0]) cylinder(4, 2.5, 2.5);
    translate([62/2, 0, 17.5 + 54.6*2 + 7.5]) rotate([90, 0, 0]) cylinder(4, 2.5, 2.5);
    
    translate([62/2, 3 + 1, 17.5 + 2.5]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 5);
    translate([62/2, 3 + 1, 17.5 + 54.6 + 5]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 5);
    translate([62/2, 3 + 1, 17.5 + 54.6*2 + 7.5]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 5);
}

module InvertSechskant(size, height){
    difference(){
        cylinder(height, size, size);
        for(i = [0:5]){
            lenght = 15;
            echo(i);
            rotate([0, 0, i * 180/3]){
                translate([size/2, -7, 0]) cube([7, lenght, height]);
                translate([-size/2 - 7, -7, 0]) cube([7, lenght, height]);
            }
        }
    }
}