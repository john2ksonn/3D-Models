a = 16;//höhe
b = 23;//breite

difference(){
    cube([b, 22.5, a], false);
    translate([1, -1, 1]){
        cube([b-2, 23, a-2], false);
    }
    translate([4.25, 0.25, 3]){
        cube([13.5, 22.5, 3.5], false);
    }
}



//lid
translate([1, -4, 1]){
    cube([b-2.25, 2, a-2.25], false);
}
translate([0, -6, 0]){
    cube([b, 2, a], false);
}

echo("\n\n\t\tThis is a design for a case for the Digispark\n");