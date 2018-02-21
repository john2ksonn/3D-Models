//cube([22.5, 22.5, 22.5]);

n = 13;
$fn = 100;

for (i =[1:n]){
    rotate([0, 0, (360/n)*i])
    translate([43/2, 0, 0]) cylinder(10, 7, 7);
}
translate([11.25, -15, 0]) cube([10, 30, 10]);
rotate([0, 0, 180]) translate([11.25, -15, 0]) cube([10, 30, 10]);

difference(){
    cylinder(10, 50/2, 50/2);
    cylinder(10, 28/2, 28/2);
}