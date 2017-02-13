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
ring_thickness = 2;
ring_height = 2;

// Ball to move back and forth
sphere(d=ball_diameter, center=true);
