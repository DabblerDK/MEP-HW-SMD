# MEP-HW-SMD
Multipurpose Expansion Port (MEP) Surface Mount Device (SMD) Hardware for OSGP Smart Meters in Denmark

This is the repository holding the Surface Mount Device (SMD) Hardware for OSGP Smart Meters (i.e. Echelon or NES) in Denmark.
The scematics can be use in other countries too if you gain access to the Multipurpose Expansion Port (MEP) terminals.
Please:
- see https://github.com/OSGP-Alliance-MEP-and-Optical for further hardware specifiactions of these meters.
- see https://www.dabbler.dk for further information about this hardware project


Notes:
- The Gerber files has been generated acording to [JLCPCBs](https://jlcpcb.com/) specifications.
- We have not been able to source the correct MEP connector, so please note that the pin-numbers does NOT corespond to the pin numbers in the official documentation. Also you should NOT insert the 2x3 pin headers all the way into the PCB (the pins should be aligned with the PCB back side).
- The ESP32 can be programmed "on board" using the J5 connector. We usually don't put headers on that one, but simply insert the pins of a FTDI232 directly into the holes. WARNING: Some FTDI232's supply 5v EVEN when they are jumped to 3.3v. Don't use those - they'll fry your ESP32!
- Debug information from the software are written on the serial out on J5. Remember it is 3.3v and if you use a FTDI232, please only connect GND, TXD and RXD during normal operation (i.e. when the module is connected to a meter)
- The Schematic for the THT and the SMD versions are currently the same, but they might branch in the future
- J7 have two functions: before "on board" programming of the ESP32 a jumper must be set between ESP_PROGRAM and GND (pin 1 and 2) and the power jumper between pin 3 and 4 must be removed
- WARNING: Remove all jumpers from J7 before adjusting the buck converter voltage to 3.6v. When done set a jumper between pin 3 and 4 for nomal operation.
- The buck converter must be mounted without pin headers, i.e. flush to the PCB. Just put solder blobs in the holes and use additional heat for a good connection. The module will not fit in the meter if pin headers are used!


Bill of Materials:
| Component | Value | Type | Note |
| ------------- | ------------- | ------------- | ------------- |
| R1-R2 | 10K ohm | 0805 | |
| R3-R7 | 0 ohm | 0805 | Mount either R3 (permanent) or R4 (ESP32 controlled, recommended) depending on how you will power your MAX3232. See https://www.dabbler.dk/index.php/2022/04/03/echelon-nes-smart-meters-dabbling-the-hardware-v1-10-and-v2-00/ |
| D1 | 1N4007 | 0805 | The line on the diode should be towards the D1 markings on the PCB silk screen |
| C1-C5 | 100nF | 0805, Non-polarized | i.e. https://www.ebay.com/itm/255486850064 |
| U1 | MAX3232 | SOIC-16 | 3.3v version, i.e. https://www.ebay.com/itm/291205964463 |
| U2 | ESP32-wroom-32e | 16MB recommended but currently NOT required |
| J1-J4 | DC-DC Buck converter | | i.e. https://www.ebay.com/itm/264731212329. The VIN- corner should be aligned towards the 5 capacitors C1-C5 |
| J6 | 2x3 Horizontal pin header | THT 2.54mm | IMPORTANT: Do not insert this pin header fully in the PCB. The pins should be soldered exactly flush with the PCB surface on the soldering side of the PCB to fit the connector in the meter! i.e. https://www.ebay.com/itm/253023279430 |
| J7 | 2x2 Vertical pin header | SMD 1.27mm | i.e. https://www.ebay.com/itm/173851525492. You will need one jumper for these: If set between the two pins next to the ESP32 it is in programming mode (use FTDI232 board connected to J5 to program). If set between the two pins next to the J6 MEP connector it is in normal operation. Remove jumper completely while adjusting the Buck converter (no power will then be supplied to chips) |
