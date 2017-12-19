difference(){
    cube([18.5, 20, 12.5], false);
    translate([0.5, -1, 0.45]){
        cube([17.5, 20.5, 11.6], false);
    }
    translate([3.2, 0.25, 0.5]){
        cube([12.1, 20, 3], false);
    }
}
translate([0.5, -4, 0.45]){
    cube([17.5, 1, 11.6], false);
}
translate([0, -6, 0]){
    cube([18.5, 2, 12.5], false);
}