# Steer Case
Rancher Logo Shaped case for raspberry pi with battery and other components

* CaseBase.stl - The bottom half of the case for 3D printing
* CaseTop.stl - The top half of the case for 3D printing
* Cattle Case.f3z - The Fusion 360 archive with complete history of the design
* powerboost.brd - The Powerboost board in eagle cad format
* steer.dxf - The Rancher Labs logo ready for extrusion
* tests/ - Various printable test components and openscad files for generating the testmodels

## BOM
* 6 pieces of wire - about 10 cm in length each
* Assorted connectors
  * [Female crimp pins](https://www.pololu.com/product/1930)
  * [1x3 Connector housings](https://www.pololu.com/product/1902)
  * Also I used 1-1x1 and 1-1x2 housing to split the LBO connection from the power wires(search pololu or your favorite electronics vendor)
  * Molex headers and wire housings. [Like these connectors](https://www.mouser.com/Search/Refine?Keyword=538-08-55-0111) and [these housings](https://www.mouser.com/ProductDetail/Molex/22-01-2035?qs=%2Fha2pyFadujIEQkzoGlzi6OdgxxLl5ZwtIU0IZrEPkY%3D)

*I picked up the following from Adafruit but you can get them other places too.*
* [Raspberry Pi 3 - Model B+ - 1.4GHz Cortex-A53 with 1GB RAM](https://www.adafruit.com/product/3775)
* [PowerBoost 1000 Charger - Rechargeable 5V Lipo USB Boost @ 1A - 1000C](https://www.adafruit.com/product/2465)
* [Breadboard-friendly SPDT Slide Switch](https://www.adafruit.com/product/805)
* [Lithium Ion Battery - 3.7v 2000mAh](https://www.adafruit.com/product/2011)
* [0.1" 2x20-pin Strip Right Angle Female Header](https://www.adafruit.com/product/2823)
* [Break-away 0.1" 36-pin strip right-angle male header](https://www.adafruit.com/product/1540)

## Basic Assembly
1. Print the case top and bottom. 
1. Prepare 3 wires for the switch and add connectors. *Note: I found that I needed to use 1 of the molex type connectors for the switch and used a standard 1x3 2.54mm connector for the other end.*
1. Prepare the other 3 wires and connect a 1x3 connector on one end and a 1x2 and a 1x1 on the other ends.
1. Solder a strip of 6 of the right angle male headers to the underside of the powerboost with the open ends facing into the board. The pins should span between Vs and 5v
1. Connect 1-2x20 right angle female header to the Raspberry Pi GPIO - this allows us to keep a low profile
1. Glue the switch into the bottom of the case
1. Conect the switch cable (all 3 wires between 2 1x3 headers - one is molex) to the Vs/EN/GND of the powerboost
1. Connect the other cable with the 1x3 header to the 5v/GND/LBO on the powerboost
1. Connect the 5v and GND wires to pins 4 and 6 on the Raspberry Pi
1. Connect the LBO pin to Pin 12 (or any GPIO you choose) on the Raspberry Pi
1. Glue the switch to the case (you don't have to but I found it's easier to keep in place with a dot of glue)
1. Connect the other side of the Vs/EN/GND cable to the switch
1. Place the battery in the steer head
1. Connect the battery
1. Power off it it is powered on
1. Insert an SD card into the Raspberry Pi. Be sure you can access the OS before closing the case. 
1. Insert the Raspberry Pi into the case base
1. Close it up

