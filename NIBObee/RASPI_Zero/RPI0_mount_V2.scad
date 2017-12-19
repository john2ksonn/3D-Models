difference(){
    cube([103, 33, 3]);

    translate([24, 4, -0.5]){
        cylinder(4, 1.75, 1.75, $fn = 50);
        
        translate([0, 25, 0]){
            cylinder(4, 1.75, 1.75, $fn = 50);
            
            translate([55, 0, 0]){
                cylinder(4, 1.75, 1.75, $fn = 50);
                
                translate([0, -25, 0]){
                    cylinder(4, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }
    
    translate([30, 8.5, -0.5]){
        cylinder(4, 1.75, 1.75, $fn = 50);
        
        translate([0, 16, 0]){
            cylinder(4, 1.75, 1.75, $fn = 50);
            
            translate([40, 0, 0]){
                cylinder(4, 1.75, 1.75, $fn = 50);
                
                translate([0, -16, 0]){
                    cylinder(4, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }
    
}

translate([4, 4, 0]){
        cylinder(53, 6, 4.5, $fn = 50);
        
        translate([0, 25, 0]){
            cylinder(53, 6, 4.5, $fn = 50);
            
            translate([95, 0, 0]){
                cylinder(53, 6, 4.5, $fn = 50);
                
                translate([0, -25, 0]){
                    cylinder(53, 6, 4.5, $fn = 50);
                }
            }
        }
    }
    
    translate([4, 4, 53]){
        cylinder(5, 1.75, 1.75, $fn = 50);
        
        translate([0, 25, 0]){
            cylinder(5, 1.75, 1.75, $fn = 50);
            
            translate([95, 0, 0]){
                cylinder(5, 1.75, 1.75, $fn = 50);
                
                translate([0, -25, 0]){
                    cylinder(5, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }