///////////////////////////////
// USER PARAMETERS
///////////////////////////////
$fs=0.2; // def 1, 0.2 is high res
$fa=3;//def 12, 3 is very nice


shortened_dia=41.6;//the "dia at the cut, don't need to change this
base_dia=52.6;//the base's diameter: this should be ok too
base_height=8;//height of the bottom plate
base_rim=3;
bottom_thickness=2.5;//thickness of the bottom plate


top_collar_dia=19.5;//diameter of the rounding at the base of the cam + some extra
top_thickness=3;//thcikness of the top plate

//mounting clamp infos
//IMPORTANT NOTE : the diameter of your reprap's rods are set in the clamp's file, but you might need to adjust the mounting holes distances here

clamp_mount_hole_dia=3.2;
clamp_mount_hole_distance=8;
clamp_mount_length=23.2;
clamp_mount_width=10.0;

mount_holes_lateral_offset=base_dia/2+base_rim+clamp_mount_width/2;
blocks_width=(mount_holes_lateral_offset+clamp_mount_width/2)*2;

$fn = 55;
holeradius = 4.5 /2;

difference(){
    union(){
        cube([47.56, 4, 60]);
        /*translate([6, 4 + 17, 14.5])
            rotate([90, 0, 0])
                cylinder(17, 5, 5);*/
    }
    translate([37, 5, 14.5])
        rotate([90, 0, 0])
            cylinder(5, holeradius, holeradius);
    translate([37, 5, 14.5 + 31])
        rotate([90, 0, 0])
            cylinder(5, holeradius, holeradius);
    translate([6, 5, 14.5 + 31])
        rotate([90, 0, 0])
            cylinder(5, holeradius, holeradius);
    translate([6, 5 + 18, 14.5])
        rotate([90, 0, 0])
            cylinder(25, holeradius, holeradius);
    translate([21.5, 5, 45.5 - 31/2])
        rotate([90, 25, 0])
            cylinder(5, 31/2, 31/2, $fn = 8);
    //cube([28.5, 4, 37]);
}

difference(){
    union(){
        translate([0, -130, 0])
            cube([47.56, 130, 4]);
        translate([29.15, -91, 4])
            cam_base();
    }
    translate([47.56/2, -20, 0])
        #cylinder(4, 15, 15, $fn = 6);
    translate([47.56/2 + 2, -90, 0])
        #cylinder(15, 16, 16, $fn = 6);
}
difference(){
    union(){
        translate([15, -50, 0])
            rotate([-45, 0, 0])
                cylinder(75, 4, 4);
        translate([30, -50, 0])
            rotate([-45, 0, 0])
                cylinder(75, 4, 4);
    }
    translate([0, -100, -5])
        cube([45, 100, 5]);
    translate([0, 4, 45])
        cube([45, 5, 10]);  
}




module  cam_base()
{	
	
	difference()
	{
		union()
		{
		cut_off(base_dia+base_rim*2,shortened_dia+base_rim*2,base_height);
		cut_off(base_dia,shortened_dia,bottom_thickness);

		//clamp mount blocks
		translate([0,0,base_height/2]) 	cube([clamp_mount_length,blocks_width,base_height],center=true);
		
		}
		union()
		{
		translate([0,0,bottom_thickness]) 	cut_off(base_dia,shortened_dia,14);

		//mount holes
		translate([clamp_mount_hole_distance,mount_holes_lateral_offset,base_height/2])  cylinder(r=clamp_mount_hole_dia/2,h=base_height+0.1,center=true);
		translate([-clamp_mount_hole_distance,mount_holes_lateral_offset,base_height/2])  cylinder(r=clamp_mount_hole_dia/2,h=base_height+0.1,center=true);

		translate([clamp_mount_hole_distance,-mount_holes_lateral_offset,base_height/2])  cylinder(r=clamp_mount_hole_dia/2,h=base_height+0.1,center=true);
		translate([-clamp_mount_hole_distance,-mount_holes_lateral_offset,base_height/2])  cylinder(r=clamp_mount_hole_dia/2,h=base_height+0.1,center=true);
		}
	}
}


module cut_off(diameter=50,shortened_dia=40,height=10)
{
	cut_size=diameter-shortened_dia;
	difference()
	{
		
		translate([0,0,height/2]) cylinder(r=diameter/2,h=height,center=true);
		translate([diameter/2-cut_size/2,0,height/2]) cube([cut_size,diameter,height+0.1],center=true);
	}
}

