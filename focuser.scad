diameter=10;
thikness=2;
nb_face=50;
union() {
  translate([0, 0, 4]) 
    difference() {
      union() {
        cylinder(d=diameter+thikness, h=1, $fn=nb_face);
        translate([(diameter)/2 + (thikness-thikness*0.3), 0, 1/2]) 
          cube([thikness, thikness*1.5, 1], center=true);
        translate([-((diameter)/2 + (thikness-thikness*0.3)), -2.5, 1/2])
          #cube([4, thikness/2, 1], center=true);
        translate([-((diameter)/2 + (thikness-thikness*0.3)), 2.5, 1/2])
          #cube([4, thikness/2, 1], center=true);
      }
      union() {
        cylinder(d=diameter, h=1, $fn=nb_face);
        translate([(diameter/2), 0, 1/2]) 
          cube([diameter, thikness/2, 1], center=true);
        rotate(90, [1, 0 , 0]) {
          translate([6.5, 1/2, 1]) 
            cylinder(d=1/2, h=3, $fn=6);
          translate([6.5, 1/2, -1.5]) 
            cylinder(d=1/4, h=3, $fn=30);
          translate([-(diameter/2 + 3), 0.5, 1/2])
            cylinder(d=1/2, h=thikness*2, $fn=30);
          translate([-(diameter/2 + 3), 0.5, -5])
            #cylinder(d=1/2, h=thikness*2, $fn=30);
        }
      }
    }
  // premiere bague
  difference() {
    union() {
      cylinder(d=diameter+thikness, h=1, $fn=nb_face);
      translate([(diameter)/2 + (thikness-thikness*0.3), 0, 1/2]) 
        cube([thikness, thikness*1.5, 1], center=true);
      
      translate([-((diameter)/2 + (thikness-thikness*0.3)), 0, 1/2])
        cube([thikness, 1, 1], center=true); 
      
      translate([-((diameter)/2 + (thikness*2-thikness*0.3)), -1/2, 0])
        cube([1, 1, 4], center=false); 
    }
    union() {
      cylinder(d=diameter, h=1, $fn=nb_face);
      translate([(diameter)/2, 0, 1/2]) 
        cube([thikness*6, thikness/2, 1], center=true);
      rotate(90, [1, 0 , 0]) {
        translate([6.5, 1/2, 1]) 
          cylinder(d=1/2, h=3, $fn=6);
        translate([6.5, 1/2, -1.5]) 
          cylinder(d=1/4, h=3, $fn=30);
      }
    }
  }
}
