difference(){
    cube([70, 38, 23.5]);

    translate([2, 2, 2]){
        cube([66, 34, 19.5]);
    }
    translate([60, 2, 2]){
        cube([66, 34, 25]);
    }
    translate([12, 21, 15]){
        cylinder(15, 5.5, 5.5, $fn = 100);
    }
    translate([27, 21, 15]){
        cylinder(15, 5.5, 5.5, $fn = 100);
    }
    translate([42, 21, 15]){
        cylinder(15, 5.5, 5.5, $fn = 100);
    }
    translate([51, 19, 0]){
        #rotate([0, 0, 180]){
            translate([-8, 8, 23]){
                linear_extrude(height = 0.5) {
                    text("LED Controller", font = "Liberation Sans:style=Bold", size = 6);
                }
            }
            translate([6, -15, 23]){
                linear_extrude(height = 0.5) {
                    text("R", font = "Liberation Sans:style=Bold", size = 5);
                }
            }
            translate([6 + 15, -15, 23]){
                linear_extrude(height = 0.5) {
                    text("G", font = "Liberation Sans:style=Bold", size = 5);
                }
            }
            translate([6 + 15 + 15, -15, 23]){
                linear_extrude(height = 0.5) {
                    text("B", font = "Liberation Sans:style=Bold ", size = 5);
                }
            }
        }
    }
}
/*
support(17.5);
support(17.5 + 15);
support(17.5 + 15 + 15);
support(56);
*/
module support(xCoord){
    translate([xCoord, 5, 2.1]){
            cylinder(17.8, .5, .5);
        }
    translate([xCoord, 10, 2.1]){
        cylinder(17.8, .5, .5);
    }
    translate([xCoord, 15, 2.1]){
        cylinder(17.8, .5, .5);
    }
    translate([xCoord, 20, 2.1]){
        cylinder(17.8, .5, .5);
    }
    translate([xCoord, 25, 2.1]){
        cylinder(17.8, .5, .5);
    }
    translate([xCoord, 30, 2.1]){
        cylinder(17.8, .5, .5);
    }
    translate([xCoord, 33, 2.1]){
        cylinder(17.8, .5, .5);
    }
}