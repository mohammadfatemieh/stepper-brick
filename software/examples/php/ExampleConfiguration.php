<?php

require_once('Tinkerforge/IPConnection.php');
require_once('Tinkerforge/BrickStepper.php');

use Tinkerforge\IPConnection;
use Tinkerforge\BrickStepper;

$host = 'localhost';
$port = 4223;
$uid = '9eggGYnDtnd'; // Change to your UID

$ipcon = new IPConnection(); // Create IP connection
$stepper = new BrickStepper($uid, $ipcon); // Create device object

$ipcon->connect($host, $port); // Connect to brickd
// Don't use device before ipcon is connected

$stepper->setMotorCurrent(800); // 800mA
$stepper->setStepMode(8); // 1/8 step mode
$stepper->setMaxVelocity(2000); // Velocity 2000 steps/s

// Slow acceleration (500 steps/s^2), 
// Fast deacceleration (5000 steps/s^2)
$stepper->setSpeedRamping(500, 5000);

$stepper->enable();
$stepper->setSteps(60000); // Drive 60000 steps forward

echo "Press key to exit\n";
fgetc(fopen('php://stdin', 'r'));

?>
