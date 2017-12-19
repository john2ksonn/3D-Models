difference(){

    cube([148, 32, 10], center = false);
    translate([14, 20, -5]){
        cylinder(20, 10, 10, false);
        translate([30, 0, 0]){
            cylinder(20, 10, 10, false);
            translate([30, 0, 0]){
                cylinder(20, 10, 10, false);
                translate([30, 0, 0]){
                    cylinder(20, 10, 10, false);
                    translate([30, 0, 0]){
                        cylinder(20, 10, 10, false);
                        }
                    }
                }
            }
        }
    }

difference(){
    translate([0, 32, 0]){
        cube([148, 15, 25], center = false);
    }
    translate([148/6, 39.5, -5]){
        cylinder(50, 3, 3, false);
    }
    translate([148/2, 39.5, -5]){
        cylinder(50, 3, 3, false);
    }
    translate([5*(148/6), 39.5, -5]){
        cylinder(50, 3, 3, false);
    }
}
translate([0, 0, 10]){
    cube([148, 7, 7], center = false);
}


