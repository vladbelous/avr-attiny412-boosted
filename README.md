# ATtiny412-based board with on-board boost regulator

Small ATtiny412 board powered by a boost regulator (MCP1640, or pin-compatible MCP16251, TPS6107x; check FB voltage).

Two powering options:
* Li-Ion battery: place voltage-supervisor MIC809 (U2) and R2 pull-down resistor -- this will protect the battery from discharging below 2.93V.
* Single/double AA battery: can skip MIC809 and place R1 instead -- this will put boost regulator in always-on mode.

Optional:
* Power distribution switch IC (MIC9409x) for the common use case of driving a LED strip (WS2812B, APA106, etc), or other, possibly capacitative, loads.
* Pull-up resistors for I2C on botton side (on pins PA1 = SDA, and PA2 = SCL).

Designed with KiCad 5 (www.kicad-pcb.org).

## Schematic:
![schematic](img/schematic.png)

## Layout:
![layout](img/pcb_layout.png)

## Assembled:
![layout](img/pcb_assembled.png)
