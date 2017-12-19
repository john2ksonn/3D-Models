a = 8;//höhe
b = 21;//breite

difference(){
    cube([b, 20.75, a], false);
    translate([1, -1, 1]){
        cube([b-2, 21.25, a-2], false);
    }
    translate([3.75, 0.25, 1]){
        cube([13.5, 22.5, 3], false);
    }
}



//lid
translate([1, -4, 1]){
    cube([b-2, 2, a-2], false);
}
translate([0, -6, 0]){
    cube([b, 2, a], false);
}


echo("\n\n\t\tThis is a design for a case for the Digispark\n");