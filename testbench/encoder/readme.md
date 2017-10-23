# RoboJackets IGVC Encoder Test bench
This document will give a brief description of the Test bench.

# Rotary Encoder
The encoder used in our IGVC robot is an optical encoder that uses the count of interruptions and the time interval between each two interruptions to determine the angle and angular velocity the motor has turned.
The encoder uses two optical sensors so that the direction of rotation can be determined by comparing the order of interruption of the two sensors.

# Test Bench
The test bench uses MCU (Microcontrollers Unit) to process encoder input signal and display the angle turned and angular velocity on a LCD(Liquid Crystal Display).
The test bench energy input would be provided by a 9V battery. There are other ports on the test bench. One is an 3x2 6 pin spi, used for programming the MCU. The other two are connection ports for encoder.

## MCU
The MCU used in the testbench is an AVR ATMega, the same one used in Arduino Uno. Time oscillation is provided by an 16MHz crystal backed up by two 22pF capacitor.
The 5V input required by MCU would be provided after a voltage regulation of a 9V battery.

## LCD
The LCD used is an 16x2 LCD. Each row displaying one of the values (Angle turned and Angular velocity).

## Programming
The MCU would be programmed prior to installation. The test bench can also be programmed using an AVR pocket programmer, via the 6 pins on side of the test bench.
