#!/usr/bin/perl

use strict;
use Tinkerforge::IPConnection;
use Tinkerforge::BrickStepper;

use constant HOST => 'localhost';
use constant PORT => 4223;
use constant UID => 'XXYYZZ'; # Change XXYYZZ to the UID of your Stepper Brick

my $ipcon = Tinkerforge::IPConnection->new(); # Create IP connection
my $stepper = Tinkerforge::BrickStepper->new(&UID, $ipcon); # Create device object

$ipcon->connect(&HOST, &PORT); # Connect to brickd
# Don't use device before ipcon is connected

$stepper->set_motor_current(800); # 800 mA
$stepper->set_step_mode(8); # 1/8 step mode
$stepper->set_max_velocity(2000); # Velocity 2000 steps/s

# Slow acceleration (500 steps/s^2),
# Fast deacceleration (5000 steps/s^2)
$stepper->set_speed_ramping(500, 5000);

$stepper->enable(); # Enable motor power
$stepper->set_steps(60000); # Drive 60000 steps forward

print "Press key to exit\n";
<STDIN>;

# Stop motor before disabling motor power
$stepper->stop(); # Request motor stop
$stepper->set_speed_ramping(500,
                            5000); # Fast deacceleration (5000 steps/s^2) for stopping
select(undef, undef, undef, 0.4); # Wait for motor to actually stop: max velocity (2000 steps/s) / decceleration (5000 steps/s^2) = 0.4 s
$stepper->disable(); # Disable motor power

$ipcon->disconnect();
