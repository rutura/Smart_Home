# Drivers

- Actuators and sensors
- Actuators takes action based on set state.
- Sensor provide output of set type
- Drivers are I/O code to low-level hardware(a resource). They can sometimes include blocking code necessitated by the hardware design. 
- This can affect UI functionality if directly integrated to the UI and hence the need for a service(A resource manager)