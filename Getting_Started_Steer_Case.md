# GETTING STARTED WITH THE STEER CASE

## There are a few things to do before you turn it on. 

1. If it is on, turn it off.
1. Setup your network
    1. Open the case and carefully lift out the RaspberryPi. It is best to lift it from the left side where the USB and Ethernet ports are.
    1. On the bottom right is the SD card. Slide it out of the RaspberryPi and insert it into a computer using a card reader.
    1. The mounted device will contain a directory called boot. Inside boot, there is a file called `wpa_supplicant.conf`. 
    1. *Open `wpa_supplicant.conf` and add your WiFi SSID and passphrase to the appropriate section.*
    1. Save the file
    1. Unmount the SD card
    1. Insert the SD card back into the RaspberryPi
    1. Slide the right side of the RaspberrPi with the SD card into the case first making sure the SD Card goes into the opening.
    1. Secure the RaspberryPi in the case base.
    1. Re-assemble the top - if you want to.

## Power Up
1. Turn on the device.
1. ssh into the device with 
    * hostname: k3s-base
    * user: pi 
    * password: raspberry
1. K3s is already running.
    * `k3s kubectl get nodes` 

--- 

## ABOUT THE COMPONENTS

### Battery - IMPORTANT
The RaspberryPi inside the Steer Case is powered by a Lithium Polymer (LiPo) battery. The battery and components inside the steer case are equiped with overcharge and discharge protection units however it remains important to *understand the risks and be safe when using LiPo batteries*. Please read about lipo safety online. For example http://thedronegirl.com/2015/02/07/lipo-battery/. If you need to replace your battery, I recommend replacing with the same unit from Adafruit: https://www.adafruit.com/product/2011

The Powerboost can power the RaspberryPi at the same time that the battery is charging. Powerboost documentation indicates that you should *ALWAYS HAVE A LIPO BATTERY PLUGGED INTO THE POWERBOOST WHEN YOU CONNECT A MINI USB CABLE*. Meaning if you don't have a battery plugged in then use the RaspberryPi micro USB power port directly. 

If you are not operating the devices for long periods (a week or more), it is recommended to unplug the LiPo battery from the Powerboost (blue) circuit board.

### Operating System
The RaspberryPi is running a Raspbian Operating System. This is a variant of Debian designed for the RaspberryPi and usese the apt package manager. It is important to shutdown the operating system before turning off power to the device. This will prevent data coruption and the possibility of completely destroying the SD card. When logged into the device.

### Contents
Inside the Steer Case are 4 main components and some wiring.
* RaspberryPi (SBC)
* Powerboost (similar to the circuitry found in battery packs used to rechard mobile devices)
* SPDT switch
* LiPo battery (2000 mAh)

--- 

## GENERAL OPERATION
With a charged battery, switch the unit on. There is a switch on the right leg of the steer case. With the case top on, two LEDs are visible through holes in the top. Both lights are in the body near the front of the steer. The light nearer to the top of the case is the blue LED from the powerboost and indicates power is on. It is possible that this light is on but the RaspberryPi is not (see the section `Lights on the RaspberryPi`). Nearer the belly of the steer is a channel for the red LED of the Powerboost. If this light is on, you should immediately plugin the device *OR* shutdown the RaspberryPi and power off the entire device. (see the section `Operating System`)

### Charging
The Steer Case is designed to be charged with the case closed if desired. Underneath the belly of the steer near the front leg is a micro USB port for charging. Using quality cables for charging will insure the longest lifetime of the components inside. 
When the top of the case is off, you will notice 4 lights on the chargin unit. The blue LED indicates that the device is on. The orange LED indicates that the device is charging. The green LED indicates that the battery is completely charged (only displays when the device is turned off). The red LED indicates a low battery.

### Lights on the RaspberryPi
When the top of the case is off, you will see two lights on the RaspberryPi. The red LED indicates that the device is powered. The orange LED indicates disk activity. If the Red LED is flickering it may be an indication of a heavy draw on the battery. The RaspberryPi is designed to power down if it cannot draw enough current to operate properly.

### Opening the Case
On the bottom of the case are 4 bolts. The nature of 3D printing allows the bolts (and their corresponding nuts) to be printed right into the case so they cannot be lost. They are designed to be easy to open and close with a screwdriver or a dime or whatever you have in your pocket at the time. Don't overtighten the bolts. Simply tighten until the top of the case is flush. Due to the design, there are some areas of the case top which may not be flush when all of the screws are fully tightened.
