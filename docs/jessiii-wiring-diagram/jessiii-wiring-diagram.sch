<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.4.2">
<drawing>
<settings>
<setting alwaysvectorfont="yes"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="88" name="SimResults" color="9" fill="1" visible="yes" active="yes"/>
<layer number="89" name="SimProbes" color="9" fill="1" visible="yes" active="yes"/>
<layer number="90" name="Modules" color="5" fill="1" visible="yes" active="yes"/>
<layer number="91" name="Nets" color="2" fill="1" visible="yes" active="yes"/>
<layer number="92" name="Busses" color="1" fill="1" visible="yes" active="yes"/>
<layer number="93" name="Pins" color="2" fill="1" visible="no" active="yes"/>
<layer number="94" name="Symbols" color="4" fill="1" visible="yes" active="yes"/>
<layer number="95" name="Names" color="7" fill="1" visible="yes" active="yes"/>
<layer number="96" name="Values" color="7" fill="1" visible="yes" active="yes"/>
<layer number="97" name="Info" color="7" fill="1" visible="yes" active="yes"/>
<layer number="98" name="Guide" color="6" fill="1" visible="yes" active="yes"/>
</layers>
<schematic xreflabel="%F%N/%S.%C%R" xrefpart="/%S.%C%R">
<libraries>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<modules>
<module name="12V_FUSE_BOX" prefix="" dx="139.7" dy="85.725">
<ports>
<port name="GND" side="left" coord="25.4" direction="io"/>
<port name="1" side="top" coord="-22.86" direction="io"/>
<port name="2" side="top" coord="-7.62" direction="io"/>
<port name="3" side="top" coord="10.16" direction="io"/>
<port name="4" side="top" coord="27.94" direction="io"/>
<port name="5" side="top" coord="45.72" direction="io"/>
<port name="6" side="top" coord="60.96" direction="io"/>
<port name="7" side="bottom" coord="60.96" direction="io"/>
<port name="8" side="bottom" coord="43.18" direction="io"/>
<port name="9" side="bottom" coord="27.94" direction="io"/>
<port name="10" side="bottom" coord="10.16" direction="io"/>
<port name="11" side="bottom" coord="-10.16" direction="io"/>
<port name="12" side="bottom" coord="-25.4" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="HOTSWAP" prefix="" dx="92.075" dy="55.5625">
<ports>
<port name="VCC_WALL" side="left" coord="24.13" direction="io"/>
<port name="GND_WALL" side="left" coord="19.05" direction="io"/>
<port name="VCC_BATTERY" side="left" coord="-21.59" direction="io"/>
<port name="GND_BATTERY" side="left" coord="-13.97" direction="io"/>
<port name="GND_ROBOT" side="right" coord="8.89" direction="io"/>
<port name="VCC_ROBOT" side="right" coord="-6.35" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="POWER_SWITCH" prefix="" dx="63.5" dy="63.5">
<ports>
<port name="GND" side="bottom" coord="0" direction="io"/>
<port name="INPUT" side="left" coord="-15.24" direction="io"/>
<port name="OUTPUT" side="left" coord="15.24" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="CURRENT_SENSOR" prefix="" dx="57.15" dy="15.875">
<ports>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="24V_FUSE_BOX" prefix="" dx="82.55" dy="96.8375">
<ports>
<port name="GND" side="bottom" coord="1.27" direction="io"/>
<port name="1" side="left" coord="8.89" direction="io"/>
<port name="2" side="left" coord="21.59" direction="io"/>
<port name="3" side="left" coord="34.29" direction="io"/>
<port name="4" side="right" coord="31.75" direction="io"/>
<port name="5" side="right" coord="19.05" direction="io"/>
<port name="6" side="right" coord="6.35" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="24V_TO_12V_CONVERTER" prefix="" dx="117.475" dy="82.55">
<ports>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="SOLENOID" prefix="" dx="117.475" dy="85.725">
<ports>
<port name="POWER" side="left" coord="17.78" direction="io"/>
<port name="IS_ENGAGED" side="left" coord="-17.78" direction="io"/>
<port name="INPUT" side="right" coord="-17.78" direction="io"/>
<port name="OUTPUT" side="right" coord="17.78" direction="io"/>
<port name="CONTROL_1" side="right" coord="-5.08" direction="io"/>
<port name="CONTROL_2" side="right" coord="0" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="SABERTOOTH_FUSE_BOX" prefix="" dx="49.2125" dy="28.575">
<ports>
<port name="24V_IN" side="right" coord="0" direction="io"/>
<port name="24V_OUT" side="left" coord="0" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="LIDAR_INTERFACE_BOX" prefix="" dx="107.95" dy="82.55">
<ports>
<port name="POWER" side="top" coord="-7.62" direction="io"/>
<port name="GPS" side="top" coord="-27.94" direction="io"/>
<port name="ETHERNET" side="top" coord="17.78" direction="io"/>
<port name="LIDAR" side="bottom" coord="12.7" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="SABERTOOTH" prefix="" dx="87.3125" dy="77.7875">
<ports>
<port name="STMC" side="right" coord="0" direction="io"/>
<port name="POWER_M1" side="left" coord="33.02" direction="io"/>
<port name="GND_M1" side="left" coord="25.4" direction="io"/>
<port name="POWER_M2" side="left" coord="-33.02" direction="io"/>
<port name="GND_M2" side="left" coord="-25.4" direction="io"/>
<port name="GND" side="left" coord="5.08" direction="io"/>
<port name="24V" side="left" coord="-5.08" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="COMPUTER_BOX" prefix="" dx="279.4" dy="215.9">
<ports>
<port name="ETHERNET_LOGIC" side="left" coord="-10.16" direction="io"/>
<port name="HDMI" side="left" coord="-76.2" direction="io"/>
<port name="ETHERNET_LIDAR" side="left" coord="10.16" direction="io"/>
<port name="USB_GPS" side="left" coord="96.52" direction="io"/>
<port name="USB_MBED" side="left" coord="91.44" direction="io"/>
<port name="USB_CAMERA_1" side="left" coord="86.36" direction="io"/>
<port name="USB_CAMERA_2" side="left" coord="-22.86" direction="io"/>
<port name="USB_CAMERA_3" side="left" coord="-27.94" direction="io"/>
<port name="USB_IMU_TOP" side="left" coord="81.28" direction="io"/>
<port name="USB_IMU_BOTTOM" side="left" coord="76.2" direction="io"/>
<port name="12V_POWER" side="left" coord="30.48" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="GPS_RECEIVER" prefix="" dx="158.75" dy="31.75">
<ports>
<port name="POWER" side="left" coord="-10.16" direction="io"/>
<port name="ANTENNA" side="left" coord="0" direction="io"/>
<port name="SERIAL_PORT_A" side="left" coord="10.16" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="LOGIC_BOARD" prefix="" dx="87.3125" dy="101.6">
<ports>
<port name="MBED_USB" side="right" coord="0" direction="io"/>
<port name="LOGIC_STMC" side="right" coord="10.16" direction="io"/>
<port name="LOGIC_SAFETY" side="top" coord="38.1" direction="io"/>
<port name="12V" side="top" coord="30.48" direction="io"/>
<port name="12V_" side="top" coord="25.4" direction="io"/>
<port name="ESTOP" side="top" coord="17.78" direction="io"/>
<port name="LIDAR_1" side="top" coord="-20.32" direction="io"/>
<port name="LIDAR_2" side="top" coord="-33.02" direction="io"/>
<port name="LIDAR_3" side="left" coord="35.56" direction="io"/>
<port name="24V" side="left" coord="2.54" direction="io"/>
<port name="DIAGNOSTIC" side="left" coord="-17.78" direction="io"/>
<port name="ETHERNET" side="bottom" coord="30.48" direction="io"/>
<port name="MBED_RESET" side="left" coord="20.32" direction="io"/>
<port name="LEFT_MOTOR" side="bottom" coord="-33.02" direction="io"/>
<port name="RIGHT_MOTOR" side="bottom" coord="-15.24" direction="io"/>
<port name="EXTERNAL_LED" side="bottom" coord="12.7" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="FAN1" prefix="" dx="30.48" dy="20.32">
<ports>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="FAN" prefix="" dx="127" dy="25.4">
<ports>
<port name="GND" side="right" coord="0" direction="io"/>
<port name="12V" side="right" coord="2.54" direction="io"/>
<port name="TACH-GREEN" side="right" coord="5.08" direction="io"/>
<port name="PWM-BLUE" side="right" coord="7.62" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="ESTOP" prefix="" dx="101.6" dy="76.2">
<ports>
<port name="POWER_IN" side="bottom" coord="40.64" direction="io"/>
<port name="ESTOP_IN" side="bottom" coord="25.4" direction="io"/>
<port name="CAN" side="top" coord="-22.86" direction="io"/>
<port name="DIODE_MAGIC_SOLENOID" side="bottom" coord="-40.64" direction="io"/>
<port name="DIODE_MAGIC_24V" side="bottom" coord="-38.1" direction="io"/>
<port name="MOTOR_POWER" side="bottom" coord="-2.54" direction="io"/>
<port name="24V_ESTOP_SIGNAL" side="bottom" coord="15.24" direction="io"/>
<port name="DIODE1_TO_GREEN_BUTTON_IN" side="left" coord="25.4" direction="io"/>
<port name="ESTOP_TO_RED_BUTTON_IN" side="left" coord="20.32" direction="io"/>
<port name="ESTOP_IN_RED_BUTTON_OUT" side="left" coord="15.24" direction="io"/>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
<module name="LIDAR_LITES" prefix="" dx="30.48" dy="20.32">
<ports>
</ports>
<variantdefs>
</variantdefs>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</module>
</modules>
<parts>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<moduleinsts>
<moduleinst name="12V_FUSE_BOX1" module="12V_FUSE_BOX" x="-165.1" y="-254" rot="R90">
<attribute name="NAME" x="-170.18" y="-254" size="2.032" layer="95" rot="R90" align="bottom-center"/>
</moduleinst>
<moduleinst name="HOTSWAP1" module="HOTSWAP" x="-69.85" y="-250.825" rot="R90">
<attribute name="NAME" x="-69.85" y="-250.825" size="2.032" layer="95" rot="R90" align="bottom-center"/>
</moduleinst>
<moduleinst name="POWER_SWITCH1" module="POWER_SWITCH" x="17.78" y="-254">
<attribute name="NAME" x="17.78" y="-254" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="CURRENT_SENSOR1" module="CURRENT_SENSOR" x="73.025" y="-285.75" rot="R90">
<attribute name="NAME" x="70.485" y="-288.29" size="2.032" layer="95" rot="R90" align="bottom-center"/>
</moduleinst>
<moduleinst name="24V_FUSE_BOX1" module="24V_FUSE_BOX" x="166.37" y="-255.27">
<attribute name="NAME" x="168.91" y="-252.73" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="24V_TO_12V_CONVERTER1" module="24V_TO_12V_CONVERTER" x="152.4" y="-152.4">
<attribute name="NAME" x="152.4" y="-152.4" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="SOLENOID1" module="SOLENOID" x="0" y="-152.4">
<attribute name="NAME" x="0" y="-152.4" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="SABERTOOTH_FUSE_BOX1" module="SABERTOOTH_FUSE_BOX" x="0" y="-127">
<attribute name="NAME" x="0" y="-121.92" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="LIDAR_INTERFACE_BOX1" module="LIDAR_INTERFACE_BOX" x="127" y="-50.8">
<attribute name="NAME" x="127" y="-50.8" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="SABERTOOTH1" module="SABERTOOTH" x="0" y="-50.8">
<attribute name="NAME" x="0" y="-50.8" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="COMPUTER_BOX1" module="COMPUTER_BOX" x="0" y="152.4" rot="R90">
<attribute name="NAME" x="0" y="152.4" size="2.032" layer="95" rot="R90" align="bottom-center"/>
</moduleinst>
<moduleinst name="GPS_RECEIVER1" module="GPS_RECEIVER" x="-152.4" y="203.2" rot="R90">
<attribute name="NAME" x="-152.4" y="203.2" size="2.032" layer="95" rot="R90" align="bottom-center"/>
</moduleinst>
<moduleinst name="LOGIC_BOARD1" module="LOGIC_BOARD" x="-144.78" y="-111.76">
<attribute name="NAME" x="-144.78" y="-101.6" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="FAN1" module="FAN" x="-114.3" y="-368.3">
<attribute name="NAME" x="-114.3" y="-368.3" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="FAN2" module="FAN" x="88.9" y="-368.3">
<attribute name="NAME" x="88.9" y="-368.3" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="ESTOP1" module="ESTOP" x="-200.66" y="35.56">
<attribute name="NAME" x="-200.66" y="35.56" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="LIDAR_LITES1" module="LIDAR_LITES" x="243.84" y="91.44">
<attribute name="NAME" x="243.84" y="91.44" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="LIDAR_LITES2" module="LIDAR_LITES" x="243.84" y="60.96">
<attribute name="NAME" x="243.84" y="60.96" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
<moduleinst name="LIDAR_LITES3" module="LIDAR_LITES" x="243.84" y="30.48">
<attribute name="NAME" x="243.84" y="30.48" size="2.032" layer="95" align="bottom-center"/>
</moduleinst>
</moduleinsts>
<instances>
</instances>
<busses>
</busses>
<nets>
<net name="COMPUTER_POWER_40A" class="0">
<segment>
<label x="215.9" y="-254" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="6"/>
<wire x1="212.725" y1="-248.92" x2="243.84" y2="-248.92" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LIGHT_BAR_3A" class="0">
<segment>
<label x="223.52" y="-238.76" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="5"/>
<wire x1="212.725" y1="-236.22" x2="238.76" y2="-236.22" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BATTERY_MONITOR_40A" class="0">
<segment>
<label x="223.52" y="-226.06" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="4"/>
<wire x1="212.725" y1="-223.52" x2="238.76" y2="-223.52" width="0.1524" layer="91"/>
</segment>
</net>
<net name="12V_CONVERTER_40A" class="0">
<segment>
<label x="88.9" y="-223.52" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="3"/>
<wire x1="120.015" y1="-220.98" x2="88.9" y2="-220.98" width="0.1524" layer="91"/>
</segment>
</net>
<net name="ESTOP_3A" class="0">
<segment>
<label x="88.9" y="-236.22" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="2"/>
<wire x1="120.015" y1="-233.68" x2="88.9" y2="-233.68" width="0.1524" layer="91"/>
</segment>
<segment>
<portref moduleinst="ESTOP1" port="24V_ESTOP_SIGNAL"/>
<wire x1="-185.42" y1="-7.62" x2="-185.42" y2="-22.86" width="0.1524" layer="91"/>
<label x="-182.88" y="-22.86" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="FANS_UNDECIDED_AMP" class="0">
<segment>
<label x="88.9" y="-248.92" size="1.778" layer="95"/>
<portref moduleinst="24V_FUSE_BOX1" port="1"/>
<wire x1="120.015" y1="-246.38" x2="88.9" y2="-246.38" width="0.1524" layer="91"/>
</segment>
</net>
<net name="SAFETYLIGHT_3A" class="0">
<segment>
<label x="-236.22" y="-279.4" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="1"/>
<wire x1="-213.0425" y1="-276.86" x2="-236.22" y2="-276.86" width="0.1524" layer="91"/>
</segment>
</net>
<net name="GPS_2A" class="0">
<segment>
<label x="-236.22" y="-264.16" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="2"/>
<wire x1="-213.0425" y1="-261.62" x2="-236.22" y2="-261.62" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="-142.24" y1="119.38" x2="-142.24" y2="109.22" width="0.1524" layer="91"/>
<label x="-139.7" y="109.22" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="LIDAR_2A" class="0">
<segment>
<label x="-236.22" y="-246.38" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="3"/>
<wire x1="-213.0425" y1="-243.84" x2="-236.22" y2="-243.84" width="0.1524" layer="91"/>
</segment>
<segment>
<wire x1="119.38" y1="-5.08" x2="119.38" y2="15.24" width="0.1524" layer="91"/>
<label x="121.92" y="7.62" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="ESTOP_POWER_3A" class="0">
<segment>
<label x="-236.22" y="-228.6" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="4"/>
<wire x1="-213.0425" y1="-226.06" x2="-236.22" y2="-226.06" width="0.1524" layer="91"/>
</segment>
<segment>
<portref moduleinst="ESTOP1" port="POWER_IN"/>
<wire x1="-160.02" y1="-7.62" x2="-160.02" y2="-17.78" width="0.1524" layer="91"/>
<wire x1="-160.02" y1="-17.78" x2="-132.08" y2="-17.78" width="0.1524" layer="91"/>
<label x="-152.4" y="-20.32" size="1.778" layer="95"/>
</segment>
</net>
<net name="LOGIC_3A" class="0">
<segment>
<label x="-236.22" y="-210.82" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="5"/>
<wire x1="-213.0425" y1="-208.28" x2="-236.22" y2="-208.28" width="0.1524" layer="91"/>
</segment>
</net>
<net name="COMPUTER_MONITOR" class="0">
<segment>
<label x="-236.22" y="-195.58" size="1.778" layer="95"/>
<portref moduleinst="12V_FUSE_BOX1" port="6"/>
<wire x1="-213.0425" y1="-193.04" x2="-236.22" y2="-193.04" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="ETHERNET"/>
<wire x1="-114.3" y1="-167.64" x2="-83.82" y2="-167.64" width="0.1524" layer="91"/>
<wire x1="-83.82" y1="-167.64" x2="-83.82" y2="0" width="0.1524" layer="91"/>
<portref moduleinst="COMPUTER_BOX1" port="ETHERNET_LOGIC"/>
<wire x1="-83.82" y1="0" x2="10.16" y2="0" width="0.1524" layer="91"/>
<wire x1="10.16" y1="0" x2="10.16" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<portref moduleinst="COMPUTER_BOX1" port="USB_MBED"/>
<wire x1="-96.52" y1="-111.76" x2="-91.44" y2="-111.76" width="0.1524" layer="91"/>
<wire x1="-91.44" y1="-111.76" x2="-91.44" y2="7.62" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<wire x1="-96.52" y1="-101.6" x2="58.42" y2="-101.6" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-101.6" x2="58.42" y2="-50.8" width="0.1524" layer="91"/>
<wire x1="58.42" y1="-50.8" x2="48.26" y2="-50.8" width="0.1524" layer="91"/>
</segment>
</net>
<net name="TO_SAFETY_LIGHT" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="LOGIC_SAFETY"/>
<wire x1="-106.68" y1="-55.88" x2="-106.68" y2="-38.1" width="0.1524" layer="91"/>
<label x="-104.14" y="-55.88" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="ESTOP"/>
<wire x1="-127" y1="-55.88" x2="-127" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-127" y1="-48.26" x2="-78.74" y2="-48.26" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-48.26" x2="-78.74" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="-78.74" y1="-106.68" x2="68.58" y2="-106.68" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-106.68" x2="68.58" y2="-144.78" width="0.1524" layer="91"/>
<wire x1="68.58" y1="-144.78" x2="58.42" y2="-144.78" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<portref moduleinst="COMPUTER_BOX1" port="ETHERNET_LIDAR"/>
<wire x1="-10.16" y1="7.62" x2="-10.16" y2="5.08" width="0.1524" layer="91"/>
<wire x1="-10.16" y1="5.08" x2="144.78" y2="5.08" width="0.1524" layer="91"/>
<wire x1="144.78" y1="5.08" x2="144.78" y2="-5.08" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="LIDAR_1"/>
<wire x1="-165.1" y1="-55.88" x2="-165.1" y2="30.48" width="0.1524" layer="91"/>
<wire x1="-165.1" y1="30.48" x2="228.6" y2="30.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="LIDAR_2"/>
<wire x1="-177.8" y1="-55.88" x2="-177.8" y2="60.96" width="0.1524" layer="91"/>
<wire x1="-177.8" y1="60.96" x2="228.6" y2="60.96" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<wire x1="-193.04" y1="-76.2" x2="-193.04" y2="91.44" width="0.1524" layer="91"/>
<wire x1="-193.04" y1="91.44" x2="228.6" y2="91.44" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LOGIC_12V_POWER" class="0">
<segment>
<portref moduleinst="LOGIC_BOARD1" port="12V"/>
<wire x1="-114.3" y1="-55.88" x2="-114.3" y2="-38.1" width="0.1524" layer="91"/>
<label x="-111.76" y="-55.88" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<portref moduleinst="ESTOP1" port="MOTOR_POWER"/>
<wire x1="-203.2" y1="-7.62" x2="-203.2" y2="-157.48" width="0.1524" layer="91"/>
<wire x1="-203.2" y1="-157.48" x2="63.5" y2="-157.48" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$10" class="0">
<segment>
<wire x1="-17.78" y1="-238.76" x2="-17.78" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="-17.78" y1="-208.28" x2="71.12" y2="-208.28" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-208.28" x2="71.12" y2="-170.18" width="0.1524" layer="91"/>
<wire x1="71.12" y1="-170.18" x2="63.5" y2="-170.18" width="0.1524" layer="91"/>
</segment>
</net>
<net name="USB_GPS" class="0">
<segment>
<wire x1="-162.56" y1="119.38" x2="-162.56" y2="109.22" width="0.1524" layer="91"/>
<label x="-160.02" y="109.22" size="1.778" layer="95" rot="R90"/>
</segment>
<segment>
<portref moduleinst="COMPUTER_BOX1" port="USB_GPS"/>
<wire x1="-96.52" y1="7.62" x2="-96.52" y2="-5.08" width="0.1524" layer="91"/>
<label x="-93.98" y="-5.08" size="1.778" layer="95" rot="R90"/>
</segment>
</net>
</nets>
</sheet>
<sheet>
<plain>
</plain>
<instances>
</instances>
<busses>
</busses>
<nets>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
