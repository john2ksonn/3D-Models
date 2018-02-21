$fn = 50;
difference(){
    union(){
        difference(){
            union(){
                //translate([18.7 + 6.56/2, 6, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0]) cylinder(3, 6.55/2, 6.55/2);
                translate([18.7 + 6.56/2, 6, 52 - 38 - 6.65/2]) rotate([90, 0, 0]) cylinder(3, 6.55/2, 6.55/2);
                translate([62 - (18.7 + 6.56/2), 6, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0]) cylinder(3, 6.55/2, 6.55/2);
                //translate([62 - (18.7 + 6.56/2), 6, 52 - 38 - 6.65/2]) rotate([90, 0, 0]) cylinder(3, 6.55/2, 6.55/2);
                        
                translate([0, -5, 0]) cube([62, 8, 52]);
                translate([62/2 - 27/2, -5, 52]) cube([27, 6, 149 - 52]);
                translate([62/2, 3, 20 + 60]) rotate([90, 0, 0]) cylinder(6, 6.5, 6.5);
                translate([62/2, 3, 20 + 60*2]) rotate([90, 0, 0]) cylinder(6, 6.5, 6.5);
            }
            
            innerrad = 6.5/2;
            translate([18.7 + 6.56/2, 10, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0])
            cylinder(20, innerrad, innerrad);
            translate([62 - (18.7 + 6.56/2), 10, 52 - 38 - 6.65/2]) rotate([90, 0, 0])
            cylinder(20, innerrad, innerrad);
            
            translate([18.7 + 6.56/2, 0.5, 52 - 38 - 6.65/2]) rotate([90, 0, 0])
            cylinder(10, 1, 1);
            translate([62 - (18.7 + 6.56/2), 0.5, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0])
            cylinder(10, 1, 1);
            
            sechskantrad = 12/2;
            translate([18.7 + 6.56/2, 0, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0])
            cylinder(20, sechskantrad, sechskantrad, $fn = 6);
            translate([62 - (18.7 + 6.56/2), 0, 52 - 38 - 6.65/2]) rotate([90, 0, 0])
            cylinder(20, sechskantrad, sechskantrad, $fn = 6);
            translate([18.7 + 6.56/2, 0, 52 - 38 - 6.65/2]) rotate([90, 0, 0])
            cylinder(10, sechskantrad, sechskantrad, $fn = 6);
            translate([62 - (18.7 + 6.56/2), 0, 52 - 14.5 - 6.65/2]) rotate([90, 0, 0])
            cylinder(10, sechskantrad, sechskantrad, $fn = 6);
        
            
            /*m3Rad = 3.5/2;
            translate([(8.2 + 1.5 - 0.5), 3, 52 -(3 + 0.5)]){
                rotate([90, 0, 0]) cylinder(20, m3Rad, m3Rad);
                rotate([90, 0, 0]) translate([0, 0, 5]) cylinder(4, 5.7/2, 5.7/2);
            }
            translate([62 - (8.2 + 1.5), 3, 52 -(41 + 1.5)]){
                rotate([90, 0, 0]) cylinder(20, m3Rad, m3Rad);
                rotate([90, 0, 0]) translate([0, 0, 5]) cylinder(4, 5.7/2, 5.7/2);
            }*/
            
        }
        
        /*
        translate([0, 3, 52]){
            translate([(18.7 + 6.65/2), 3, -(14.5 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([(18.7 + 6.65/2), 3, -(38 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([62 - (18.7 + 6.65/2), 3, -(14.5 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
            translate([62 - (18.7 + 6.65/2), 3, -(38 + 2.6/2)]) rotate([90, 0, 0]) cylinder(6, 6.55/2, 6.55/2);
        }*/
        
        
        
            
    }
    translate([62/2, 6, 20]) rotate([90, 0, 0]) cylinder(20, 2.5, 2.5);
    translate([62/2, 0, 20 + 60]) rotate([90, 0, 0]) cylinder(20, 2.5, 2.5);
    translate([62/2, 0, 20 + 60*2]) rotate([90, 0, 0]) cylinder(20, 2.5, 2.5);
    
    translate([62/2, 3 + 1, 20]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 6);
    translate([62/2, 3 + 1, 20 + 60]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 5);
    translate([62/2, 3 + 1, 20 + 60*2]) rotate([90, 0, 0]) scale([1.05, 1.05, 1]) InvertSechskant(8, 5);
}

translate([-8, -50 +3, 0]) color("green") EndStop();

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

module EndStop(){
    cube([8, 50, 8]);
    //translate([0, -45 + 8, 0]) cube([8, 45 - 8, 8]);
    //translate([0, -45, 0]) cube([25, 8, 8]);
}