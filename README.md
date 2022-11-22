# BMSladder
 BMS - cell at a time

This is an attempt at a single cell daisy chain Battery Management System. Emphasis is placed on minimum power draw and cost. Hopefully it is also reliable.

Most parts are over specified, however I worry that having the microcontroller powered directly from the cell could lead to bad things if the cell ever has a voltage spike on it. The type caused by a loose connection maybe especially bad.

Be warned.

History:

v1.1 (ongoing)
- incorporate uC pin swap mod
- improve connections

v1.0 Initial test production run. Mostly works. If you ever get one of these boards, check to see the modification is done to swap FAULT and EN pins.

Application: KiCad
Version: (5.1.10-1-10_14), release build
