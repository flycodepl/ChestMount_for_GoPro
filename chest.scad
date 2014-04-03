$fn=20;
h=3.5;

module polowka_2D() {
    translate([-76/2,0,0])
      polygon(points=[[76/2, 0],
                      [76,   0],
                      [76.5, 30.5],
                      [79,   40],
                      [86.8, 55.5],
                      [65,   77],
                      [76/2, 77]]);
}

module corner(x, y=0) {
    difference() {
        resize([x+2,y,0]) cylinder(r=x/2, h=h);
        resize([0,y+2,0]) translate([(x/2)/2,0,0]) cylinder(r=x/2, h=h);
    }
}

module polowka_3D() {
    difference() {
        linear_extrude(height=h)  polowka_2D();
        translate([35.5,2.5,0])   rotate([0,0,90+45]) corner(7,8);
        translate([46,55,0])      rotate([0,0,190])   corner(7,8);
        translate([26.6,73.6,0])  rotate([0,0,-115])  corner(7,17);
        translate([23.5,10,-1])   cube([5,23,10]);
        translate([33,50,-1])     rotate([0,0,45])    cube([5,23,10]);
    }
}

color("green") polowka_3D();
mirror([1,0,0]) polowka_3D();
