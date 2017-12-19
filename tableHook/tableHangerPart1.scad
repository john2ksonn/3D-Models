fn = 50;



union(){
    
        difference(){
        union(){//teil
            hull(){
                translate([0, 0, 2.5]){
                    translate([2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([55 - 2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([55 - 2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                }
            }
            hull(){
                translate([2.5, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                 translate([2.5, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([0, 0, 2.5]){
                    translate([2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                }
            }
           
            hull(){//phase1
                translate([2.5, 2.5, 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([10, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([10, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
            }

            hull(){//phase2
                translate([10, 0, 2.5]){
                    translate([2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                }
                translate([0, 0, 2.5 - 10]){
                    translate([2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                }
                translate([0, 0, 2.5]){
                    translate([2.5, 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                    translate([2.5, 30 - 2.5, 35]){
                        sphere(d=5, $fn = fn);
                    }
                }
            }
            difference(){
            hull(){
                translate([2.5, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 2.5, 2.5 - 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 2.5 - 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 2.5, -10]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 30 - 2.5, -10]){
                    sphere(d=5, $fn = fn);
                }
                
            }
            translate([15, 0, -15])
                cube([10, 30, 20]);
            
            }
            
            intersection(){
            hull(){
                translate([2.5, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 2.5, 2.5 - 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([2.5, 30 - 2.5, 2.5 - 10]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 30 - 2.5, 2.5]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 2.5, -10]){
                    sphere(d=5, $fn = fn);
                }
                translate([20, 30 - 2.5, -10]){
                    sphere(d=5, $fn = fn);
                }
                
            }
        rotate([0, 0, 90]){
        translate([15, -20, -12.5]){
            female_dovetail(max_width=10, min_width=8, depth=5, height=17.5, block_width=30, block_depth=10, clearance=0.25);
        }
    }
            
      
        }

    }
        union(){//loecher

            translate([25, 15, 32.5]){
                #cylinder(10, 1, 1, $fn = 20);
            }
            translate([40, 15, 32.5]){
                #cylinder(10, 1, 1, $fn = 20);
            }
            
            translate([-2.5, 15, 17.625]){
                rotate([0, 90, 0]){
                    #cylinder(10, 1, 1, $fn = 20);
                }
            }
        }
        
    }
    
difference(){
rotate([0, 0, 90]){
    translate([15, -20, -12.5]){
        male_dovetail(max_width=11, min_width=9, depth=6, height=5, cutout_width=3, cutout_depth=0);
    }
}

hull(){
translate([5, 0, -5.6]){
    translate([2.5, 2.5, 2.5 - 10]){
        sphere(d=5, $fn = fn);
    }
    translate([2.5, 30 - 2.5, 2.5 - 10]){
        sphere(d=5, $fn = fn);
    }
    translate([20 - 2.5, 2.5, -10]){
        sphere(d=5, $fn = fn);
    }
    translate([20 - 2.5, 30 - 2.5, -10]){
        sphere(d=5, $fn = fn);
    }
}
}
}



}

module female_dovetail_negative(max_width=11, min_width=5, depth=5, height=30, clearance=0.25) {
	union() {
		translate([0,-0.001,-0.05])
			dovetail_3d(max_width+clearance,min_width+clearance,depth,height+0.1);
			translate([-(max_width+clearance)/2, depth-0.002,-0.5])
				cube([max_width+clearance,clearance/2,height+1]);
	}
}

module female_dovetail(max_width=11, min_width=5, depth=5, height=30, block_width=15, block_depth=9, clearance=0.25) {
		difference() {
			translate([-block_width/2,0,0]) cube([block_width, block_depth, height]);
			female_dovetail_negative(max_width, min_width, depth, height, clearance);
		}
}

module male_dovetail(max_width=11, min_width=5, depth=5, height=30, cutout_width=5, cutout_depth=3.5) {
	difference() {
		dovetail_3d(max_width,min_width,depth,height);
		translate([0.001,depth+0.001,-0.05])
			dovetail_cutout(cutout_width, cutout_depth, height+0.1);
	}
}

module dovetail_3d(max_width=11, min_width=5, depth=5, height=30) {
	linear_extrude(height=height, convexity=2)
		dovetail_2d(max_width,min_width,depth);
}

module dovetail_2d(max_width=11, min_width=5, depth=5) {
	angle=atan((max_width/2-min_width/2)/depth);
	echo("angle: ", angle);
	polygon(paths=[[0,1,2,3,0]], points=[[-min_width/2,0], [-max_width/2,depth], [max_width/2, depth], [min_width/2,0]]);
}

module dovetail_cutout(width=5, depth=4, height=30) {
	translate([0,-depth+width/2,0])
		union() {
			translate([-width/2,0,0])
				cube([width,depth-width/2,height]);
			difference() {
				cylinder(r=width/2, h=height, $fs=0.25);
				translate([-width/2-0.05,0.05,-0.05]) cube([width+0.1,width+0.1,height+0.1]);
			}
		}
}