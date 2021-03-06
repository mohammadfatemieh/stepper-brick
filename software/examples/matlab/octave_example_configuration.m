function octave_example_configuration()
    more off;

    HOST = "localhost";
    PORT = 4223;
    UID = "XXYYZZ"; % Change XXYYZZ to the UID of your Stepper Brick

    ipcon = javaObject("com.tinkerforge.IPConnection"); % Create IP connection
    stepper = javaObject("com.tinkerforge.BrickStepper", UID, ipcon); % Create device object

    ipcon.connect(HOST, PORT); % Connect to brickd
    % Don't use device before ipcon is connected

    stepper.setMotorCurrent(800); % 800 mA
    stepper.setStepMode(8); % 1/8 step mode
    stepper.setMaxVelocity(2000); % Velocity 2000 steps/s

    % Slow acceleration (500 steps/s^2),
    % Fast deacceleration (5000 steps/s^2)
    stepper.setSpeedRamping(500, 5000);

    stepper.enable(); % Enable motor power
    stepper.setSteps(60000); % Drive 60000 steps forward

    input("Press key to exit\n", "s");

    % Stop motor before disabling motor power
    stepper.stop(); % Request motor stop
    stepper.setSpeedRamping(500, ...
                            5000); % Fast deacceleration (5000 steps/s^2) for stopping
    pause(0.4); % Wait for motor to actually stop: max velocity (2000 steps/s) / decceleration (5000 steps/s^2) = 0.4 s
    stepper.disable(); % Disable motor power

    ipcon.disconnect();
end
