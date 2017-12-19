difference(){
    cube([106, 35, 3]);
    
    translate([4.625, 5.5, -0.5]){
        cylinder(4, 1.75, 1.75, $fn = 50);
        
        translate([0, 24, 0]){
            cylinder(4, 1.75, 1.75, $fn = 50);
            
            translate([95+1.75, 0, 0]){
                cylinder(4, 1.75, 1.75, $fn = 50);
                
                translate([0, -24, 0]){
                    cylinder(4, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }
    
    translate([23.375, 6.25, -0.5]){
        cylinder(4, 1.75, 1.75, $fn = 50);
        
        translate([0, 22.5, 0]){
            cylinder(4, 1.75, 1.75, $fn = 50);
            
            translate([57.5+1.75, 0, 0]){
                cylinder(4, 1.75, 1.75, $fn = 50);
                
                translate([0, -22.5, 0]){
                    cylinder(4, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }
    
    translate([30.875, 9.5, -0.5]){
        cylinder(4, 1.75, 1.75, $fn = 50);
        
        translate([0, 16, 0]){
            cylinder(4, 1.75, 1.75, $fn = 50);
            
            translate([42.5+1.75, 0, 0]){
                cylinder(4, 1.75, 1.75, $fn = 50);
                
                translate([0, -16, 0]){
                    cylinder(4, 1.75, 1.75, $fn = 50);
                }
            }
        }
    }
    
}