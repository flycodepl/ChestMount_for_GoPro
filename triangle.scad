use<Write/Write.scad>

$fn=50;

module base() {
	r=2;
	h=4;
	hull() {
		translate([0,0,0])   cylinder(h=h, r=r);
		translate([45,0,0])  cylinder(h=h, r=r);
		translate([45,15,0]) cylinder(h=h, r=r);
		translate([27.5,33,0]) cylinder(h=h, r=r);
		translate([17.5,33,0]) cylinder(h=h, r=r);
		translate([0,15,0])  cylinder(h=h, r=r);
		}
}

module mount() {
	difference() {
		base();
		translate([(45/2)-(37/2),1,-1]) cube([37,5.5,6]);
		translate([11,21,2]) rotate([0,0,45]) cube([23,5.5,6], center=true);
		translate([34,21,2]) rotate([0,0,-45]) cube([23,5.5,6], center=true);
	}
}

difference() {
	mount();
	translate([15,15,3]) write("GoPro", h=4, t=1.2, font="Write/Letters.dxf", space=1.1);
	translate([7,10,3]) write("flycode.pl", h=4, t=1.2, font="Write/Letters.dxf", space=1.1);
}