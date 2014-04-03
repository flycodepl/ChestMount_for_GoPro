use<MCAD/nuts_and_bolts.scad>
$fn = 50;

// 5.5 diameter
bolt_hole_r = 5.2 / 2;
handle_size = 6;
handle_height = 15;
nut_size = 5;
// based on http://www.thingiverse.com/thing:22436
module GoPro_Connection()
{
	translate([0,3,0])
	{
		difference()
		{
			// tabs
			union()
			{

				translate([-3,0,0]) {
				cube([6,handle_height,10]);
				translate([0,handle_height,handle_size]) rotate([90,0,90])
					cylinder(6,handle_size,handle_size);
				}
				// note: center tab is slightly larger the the other two tabs
				translate([6.5,0,0])
				{
					cube([3.3,handle_height,10]);
					translate([0,handle_height,handle_size]) rotate([90,0,90])
						cylinder(3.3,handle_size,handle_size);
				}

				translate([12.8,0,0])
				{
					cube([6,handle_height,10]);
					translate([0,handle_height,handle_size]) rotate([90,0,90])
						cylinder(6,handle_size,handle_size);
				}
			}

			// bolt hole
			translate([-7, handle_height, handle_size]) rotate([0,90,0])
				cylinder(30, bolt_hole_r, bolt_hole_r);
                        translate([-5,handle_height+(nut_size/2)-2.5,handle_size]) rotate([0,90,0]) nutHole(nut_size, tolerance=0.1);

		}
	}

	// connection block
	translate([-3,0,0]) cube([21.8,3,10]);
}
//GoPro_Connection();

