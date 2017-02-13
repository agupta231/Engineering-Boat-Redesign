// Ankur Gupta
// Feb 2017
// github.com/agupta231

// Setup faces
$fn = 100;

// Parameters
straw_diameter = 5;
straw_connector_bottom_height = 5;
straw_connector_top_height = 3;
straw_connector_thicc = 1;
valve_diameter = 7;
valve_thickness = 2;
ball_diameter = 6;
ball_travel_distance = 1;
valve_connector_height = 2;
valve_height = ball_diameter + ball_travel_distance;

// Valve and straw connector
%union() {
    difference() {
      cylinder(d=valve_diameter + valve_thickness, h=valve_height, center=true);
      cylinder(d=valve_diameter, h=valve_height + 5, center=true);
    }

    translate([0, 0, -valve_height / 2 - straw_connector_bottom_height / 2]) {
      difference() {
        cylinder(d=straw_diameter + straw_connector_thicc, h=straw_connector_bottom_height, center=true);
        cylinder(d=straw_diameter, h=straw_connector_bottom_height + 1, center=true);
      }
    }

    translate([0, 0, -valve_height / 2 - 0.5]) {
        difference() {
            cylinder(d=valve_diameter, h=1, center=true);
            cylinder(d=straw_diameter + straw_connector_thicc, h=1.1, center=true);
        }
    }
}

// Ball to move back and forth
sphere(d=ball_diameter, center=true);
