difference(){
    cube([70, 38, 22]);
    translate([2, 2, 2]){
        union(){
            cube([66, 34, 11]);
            translate([50, 0, 0]){
                cube([18, 34, 18.5]);
            }
            translate([-2, -2, 13]){
                cube([48, 38, 10]);
            }
        }
    }
    
    translate([10, 24, 11]){
        cylinder(15, 5.5, 5.5);
    }
    translate([25, 24, 11]){
        cylinder(15, 5.5, 5.5);
    }
    translate([40, 24, 11]){
        cylinder(15, 5.5, 5.5);
    }
    translate([60, 2, 2]){
        cube([66, 34, 25]);
    }
}