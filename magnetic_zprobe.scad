use <microswitch.scad>;

module zprobe() {
	h=3;

union() {

	union() {
		translate([5.3/2,-22.5,0]) cube([8,45,h]);
			translate([0,3.5,0]) difference() {
				translate([2.5,-7.3,h]) cube([5,14.6,10]);
				translate([2,-5,10]) rotate([90,0,90]) cylinder(r=1.25, h=8, $fn=12);
				translate([2,5,10]) rotate([90,0,90]) cylinder(r=1.25, h=8, $fn=12);
			}
	difference() {
		cylinder(r=29, h=h, $fn=50);
		translate([0,0,-0.5])cylinder(r=21, h=h+1, $fn=50);
	
			for (a = [0:2]) {
				rotate(a*120) {
					translate([0, -25, -0.5])
					cylinder(r=2, h=h+1, $fn=12);
		   }
			}
		}
	}
}
}

zprobe();
//% rotate([0,0,90]) translate([0,0,10]) microswitch();