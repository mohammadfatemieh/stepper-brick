use rand::{thread_rng, Rng};
use std::{error::Error, io, thread, time::Duration};
use tinkerforge::{ip_connection::IpConnection, stepper_brick::*};

const HOST: &str = "localhost";
const PORT: u16 = 4223;
const UID: &str = "XXYYZZ"; // Change XXYYZZ to the UID of your Stepper Brick.

fn main() -> Result<(), Box<dyn Error>> {
    let ipcon = IpConnection::new(); // Create IP connection.
    let stepper = StepperBrick::new(UID, &ipcon); // Create device object.

    ipcon.connect((HOST, PORT)).recv()??; // Connect to brickd.
                                          // Don't use device before ipcon is connected.

    let position_reached_receiver = stepper.get_position_reached_callback_receiver();

    // Spawn thread to handle received callback messages.
    // This thread ends when the `stepper` object
    // is dropped, so there is no need for manual cleanup.
    let stepper_copy = stepper.clone(); //Device objects don't implement Sync, so they can't be shared between threads (by reference). So clone the device and move the copy.
    thread::spawn(move || {
        let mut rng = thread_rng();
        for _position_reached in position_reached_receiver {
            let steps = if rng.gen() {
                let steps = rng.gen_range(1000, 5001); // steps (forward)
                println!("Driving forward: {} steps", steps);
                steps
            } else {
                let steps = rng.gen_range(-5000, -999); // steps (backward)
                println!("Driving backward: {} steps", steps);
                steps
            };

            let vel = rng.gen_range(200, 2001); // steps/s
            let acc = rng.gen_range(100, 1001); // steps/s^2
            let dec = rng.gen_range(100, 1001); // steps/s^2

            println!("Configuration (vel, acc, dec): ({}, {}, {})", vel, acc, dec);

            stepper_copy.set_speed_ramping(acc, dec);
            stepper_copy.set_max_velocity(vel);
            stepper_copy.set_steps(steps);
        }
    });

    stepper.enable(); // Enable motor power
    stepper.set_steps(1); // Drive one step forward to get things going

    println!("Press enter to exit.");
    let mut _input = String::new();
    io::stdin().read_line(&mut _input)?;

    // Stop motor before disabling motor power
    stepper.stop(); // Request motor stop
    stepper.set_speed_ramping(500, 5000).recv()?; // Fast deacceleration (5000 steps/s^2) for stopping; use recv()? to block until the command is sent to the brick.
    thread::sleep(Duration::from_millis(400)); // Wait for motor to actually stop: max velocity (2000 steps/s) / decceleration (5000 steps/s^2) = 0.4 s
    stepper.disable(); // Disable motor power

    ipcon.disconnect();
    Ok(())
}
