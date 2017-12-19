h = 8;//height
w = 21;//width
l = 21.5; //length

//slot
sh = 3; //slot-height
sw = 13.5; //slot-width

//lid opening 
sideTol = .2; //tolerance for the sides
topTol = .2; //tolerance for the top and bottom

//shell (will change the volume of the interior)
sideS = 2; //side-shell-thickness
topS = 2; // top- & bottom-shell-thickness
frontS = 1; //front-shell-thickness



difference(){
    cube([w, l, h], false);
    translate([1, -1, 1]){
        cube([w-sideS, l-frontS, h-topS], false);
    }
    translate([3.75, 0.25, 1]){
        cube([sw, l+0.25, sh], false);
    }
}

//lid
translate([1+sideTol, -5, 1+topTol]){
    cube([w-(sideS + 2*sideTol), 2, h-(topS + 2*topTol)], false);
}
translate([0, -7, 0]){
    cube([w, 2, h], false);
}


echo("\n\n\t\tThis is a design for a case for the Digispark\n\n");