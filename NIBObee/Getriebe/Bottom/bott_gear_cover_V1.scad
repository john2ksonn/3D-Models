difference(){
    cube([40, 20, 18.5]);
    
    //Aussparung für die Achse
    translate([20, -.5, 3.5]){
        rotate([270, 0, 0]){
            cylinder(h = 38, r1 = 3, r2 = 3, center = false, $fn = 50);
        }
    }
    translate([1, 1, -0.5]){
        cube([38, 18, 18]);
    }   
   translate([20, 18, 0]){
       rotate([270, 0, 0]){
            cylinder(3, 2, 2, $fn = 50);
       }
   }
   
   rotate([0, 50, 0]){
        translate([-25, -0.5, 0]){
            cube([20, 22, 30]);
        }
   }
   
   translate([40, 0, 0]){
        mirror([1, 0, 0]){
            rotate([0, 50, 0]){
                translate([-25, -0.5, 0]){
                    cube([20, 22, 30]);
                }
            }
   
        }
    }

 
}


difference(){
    rotate([0, 50, 0]){
        translate([-5, 0, 0]){
            cube([1, 20, 23]);
        }
    }
    translate([-20, -0.5, 0]){
        cube([20, 22, 20]);
    }
}

translate([40, 0, 0]){
    mirror(){
        difference(){
            rotate([0, 50, 0]){
                translate([-5, 0, 0]){
                    cube([1, 20, 23]);
                }
            }
            translate([-20, -0.5, 0]){
                cube([20, 22, 20]);
            }
        }
    }
}