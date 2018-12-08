# MCP16251-based voltage boost module

Voltage boost module based on MCP16251 ([datasheet](http://ww1.microchip.com/downloads/en/devicedoc/20005173b.pdf)) with a VBAT sense pin and ON/OFF "latch" pin for self-power-off.

PCB size: 1.3" x 0.9" (33mm x 23mm).

As soon as the microcontroller (powered by this module's output) turns on, it must pull PWR_CONTROL high.
Afterwards, BAT_SENSE can be used to monitor battery voltage - if it goes too low, the MCU can pull PWR_CONTROL low (or just put it into High-Z mode) to cut power frome the regulator input.
The idea is to protect the battery from over-discharge, such that even voltage regulator's quiescent current doesn't matter.

It's designed with wiring flexibility in mind: there is a footprint for 5.08mm-pitch screw terminals, castellated pins and SMD pads.
All components are on one side so that (combined with the castellated pins) it could be used as an "SMD module" (i.e. you can solder it onto another PCB).

Design with KiCad 5 (www.kicad-pcb.org).

This design is not (yet) tested.

## Schematic:
![schematic](img/schematic.png)

## Layout:
![layout](img/pcb_layout.png)
