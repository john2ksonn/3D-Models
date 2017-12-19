fn = 50;

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
            translate([45 - 2.5, 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 2.5]){
                sphere(d=5, $fn = fn);
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
        hull(){
            translate([45 - 2.5, 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 2.5, 12.5 - 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 12.5 - 2.5]){
                sphere(d=5, $fn = fn);
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

        hull(){//phase3
            translate([45 - 2.5, 2.5, 5.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 5.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 5.5, 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 5.5, 30 - 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
        }


        hull(){
            translate([45 - 2.5, 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
            translate([45 - 2.5, 30 - 2.5, 2.5]){
                sphere(d=5, $fn = fn);
            }
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
            translate([2.5 + 30, 2.5, 2.5 - 15]){
                sphere(d=5, $fn = fn);
            }
            translate([2.5 + 30, 30 - 2.5, 2.5 - 15]){
                sphere(d=5, $fn = fn);
            }
        }
    }
    
    
    union(){//loecher
        translate([26, 30, -4]){
            scale([1.5, 1, 1]){
                rotate([90, 0, 0]){
                    cylinder(30, 6, 6, $fn = 6);
                }
            }
        }
        
        translate([25, 15, 35]){
            #cylinder(5, 1, 1, $fn = 20);
        }
        translate([40, 15, 35]){
            #cylinder(5, 1, 1, $fn = 20);
        }
        
        translate([0, 15, 17.625]){
            rotate([0, 90, 0]){
                #cylinder(5, 1, 1, $fn = 20);
            }
        }
    }   
}