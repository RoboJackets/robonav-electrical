<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="yes" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="15" fill="1" visible="no" active="no"/>
<layer number="21" name="tPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="22" name="bPlace" color="7" fill="1" visible="no" active="no"/>
<layer number="23" name="tOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="24" name="bOrigins" color="15" fill="1" visible="no" active="no"/>
<layer number="25" name="tNames" color="7" fill="1" visible="no" active="no"/>
<layer number="26" name="bNames" color="7" fill="1" visible="no" active="no"/>
<layer number="27" name="tValues" color="7" fill="1" visible="no" active="no"/>
<layer number="28" name="bValues" color="7" fill="1" visible="no" active="no"/>
<layer number="29" name="tStop" color="7" fill="3" visible="no" active="no"/>
<layer number="30" name="bStop" color="7" fill="6" visible="no" active="no"/>
<layer number="31" name="tCream" color="7" fill="4" visible="no" active="no"/>
<layer number="32" name="bCream" color="7" fill="5" visible="no" active="no"/>
<layer number="33" name="tFinish" color="6" fill="3" visible="no" active="no"/>
<layer number="34" name="bFinish" color="6" fill="6" visible="no" active="no"/>
<layer number="35" name="tGlue" color="7" fill="4" visible="no" active="no"/>
<layer number="36" name="bGlue" color="7" fill="5" visible="no" active="no"/>
<layer number="37" name="tTest" color="7" fill="1" visible="no" active="no"/>
<layer number="38" name="bTest" color="7" fill="1" visible="no" active="no"/>
<layer number="39" name="tKeepout" color="4" fill="11" visible="no" active="no"/>
<layer number="40" name="bKeepout" color="1" fill="11" visible="no" active="no"/>
<layer number="41" name="tRestrict" color="4" fill="10" visible="no" active="no"/>
<layer number="42" name="bRestrict" color="1" fill="10" visible="no" active="no"/>
<layer number="43" name="vRestrict" color="2" fill="10" visible="no" active="no"/>
<layer number="44" name="Drills" color="7" fill="1" visible="no" active="no"/>
<layer number="45" name="Holes" color="7" fill="1" visible="no" active="no"/>
<layer number="46" name="Milling" color="3" fill="1" visible="no" active="no"/>
<layer number="47" name="Measures" color="7" fill="1" visible="no" active="no"/>
<layer number="48" name="Document" color="7" fill="1" visible="no" active="no"/>
<layer number="49" name="Reference" color="7" fill="1" visible="no" active="no"/>
<layer number="51" name="tDocu" color="7" fill="1" visible="no" active="no"/>
<layer number="52" name="bDocu" color="7" fill="1" visible="no" active="no"/>
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
<library name="igvc">
<packages>
<package name="FUSEBLOCK-12PT">
<wire x1="-3.81" y1="5.08" x2="3.81" y2="5.08" width="0.127" layer="21"/>
<wire x1="3.81" y1="5.08" x2="3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="3.81" y1="-6.35" x2="-3.81" y2="-6.35" width="0.127" layer="21"/>
<wire x1="-3.81" y1="-6.35" x2="-3.81" y2="5.08" width="0.127" layer="21"/>
<smd name="V6" x="-2.54" y="-5.08" dx="1.27" dy="0.635" layer="1"/>
<smd name="V5" x="-2.54" y="-3.81" dx="1.27" dy="0.635" layer="1"/>
<smd name="V4" x="-2.54" y="-2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="V3" x="-2.54" y="-1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="V2" x="-2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="V1" x="-2.54" y="1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="GND" x="2.54" y="3.81" dx="1.27" dy="0.635" layer="1"/>
<smd name="V12" x="2.54" y="-5.08" dx="1.27" dy="0.635" layer="1"/>
<smd name="V11" x="2.54" y="-3.81" dx="1.27" dy="0.635" layer="1"/>
<smd name="V10" x="2.54" y="-2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="V9" x="2.54" y="-1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="V8" x="2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="V7" x="2.54" y="1.27" dx="1.27" dy="0.635" layer="1"/>
</package>
<package name="FUSE">
<rectangle x1="-2.54" y1="-1.27" x2="2.54" y2="1.27" layer="21"/>
<smd name="P$1" x="-2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="P$2" x="2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="FUSEBLOCK-12PT">
<wire x1="-7.62" y1="10.16" x2="7.62" y2="10.16" width="0.254" layer="94"/>
<wire x1="7.62" y1="10.16" x2="7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="7.62" y1="-33.02" x2="-7.62" y2="-33.02" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-33.02" x2="-7.62" y2="10.16" width="0.254" layer="94"/>
<pin name="V1" x="-12.7" y="7.62" length="middle" direction="pwr"/>
<pin name="V2" x="-12.7" y="0" length="middle" direction="pwr"/>
<pin name="V3" x="-12.7" y="-7.62" length="middle" direction="pwr"/>
<pin name="V4" x="-12.7" y="-15.24" length="middle" direction="pwr"/>
<pin name="V5" x="-12.7" y="-22.86" length="middle" direction="pwr"/>
<pin name="V6" x="-12.7" y="-30.48" length="middle" direction="pwr"/>
<pin name="V7" x="12.7" y="7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="V8" x="12.7" y="0" length="middle" direction="pwr" rot="R180"/>
<pin name="V9" x="12.7" y="-7.62" length="middle" direction="pwr" rot="R180"/>
<pin name="V10" x="12.7" y="-15.24" length="middle" direction="pwr" rot="R180"/>
<pin name="V11" x="12.7" y="-22.86" length="middle" direction="pwr" rot="R180"/>
<pin name="V12" x="12.7" y="-30.48" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="15.24" length="middle" direction="pwr" rot="R270"/>
<text x="-7.62" y="-35.56" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-35.56" size="1.778" layer="94">&gt;VALUE</text>
</symbol>
<symbol name="FUSE">
<wire x1="-2.54" y1="0" x2="2.54" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="-1.27" x2="-2.54" y2="-1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="-1.27" x2="-2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="-2.54" y1="1.27" x2="2.54" y2="1.27" width="0.254" layer="94"/>
<wire x1="2.54" y1="1.27" x2="2.54" y2="0" width="0.254" layer="94"/>
<wire x1="-2.54" y1="0" x2="-5.08" y2="0" width="0.1524" layer="94"/>
<wire x1="2.54" y1="0" x2="5.08" y2="0" width="0.1524" layer="94"/>
<pin name="P$1" x="-5.08" y="0" visible="off" length="point"/>
<pin name="P$2" x="5.08" y="0" visible="off" length="point"/>
<text x="-2.54" y="1.27" size="1.27" layer="95">&gt;NAME</text>
<text x="-2.54" y="-2.54" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="FUSEBLOCK-12" prefix="FB" uservalue="yes">
<gates>
<gate name="G$1" symbol="FUSEBLOCK-12PT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FUSEBLOCK-12PT">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="V1" pad="V1"/>
<connect gate="G$1" pin="V10" pad="V10"/>
<connect gate="G$1" pin="V11" pad="V11"/>
<connect gate="G$1" pin="V12" pad="V12"/>
<connect gate="G$1" pin="V2" pad="V2"/>
<connect gate="G$1" pin="V3" pad="V3"/>
<connect gate="G$1" pin="V4" pad="V4"/>
<connect gate="G$1" pin="V5" pad="V5"/>
<connect gate="G$1" pin="V6" pad="V6"/>
<connect gate="G$1" pin="V7" pad="V7"/>
<connect gate="G$1" pin="V8" pad="V8"/>
<connect gate="G$1" pin="V9" pad="V9"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="FUSE" prefix="F" uservalue="yes">
<gates>
<gate name="F1" symbol="FUSE" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FUSE">
<connects>
<connect gate="F1" pin="P$1" pad="P$1"/>
<connect gate="F1" pin="P$2" pad="P$2"/>
</connects>
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
</libraries>
<attributes>
</attributes>
<variantdefs>
</variantdefs>
<classes>
<class number="0" name="default" width="0" drill="0">
</class>
</classes>
<parts>
<part name="FB1" library="igvc" deviceset="FUSEBLOCK-12" device=""/>
<part name="F10" library="igvc" deviceset="FUSE" device=""/>
<part name="F1" library="igvc" deviceset="FUSE" device=""/>
<part name="F2" library="igvc" deviceset="FUSE" device=""/>
<part name="F3" library="igvc" deviceset="FUSE" device=""/>
<part name="F4" library="igvc" deviceset="FUSE" device=""/>
<part name="F5" library="igvc" deviceset="FUSE" device=""/>
<part name="F6" library="igvc" deviceset="FUSE" device=""/>
<part name="F7" library="igvc" deviceset="FUSE" device=""/>
<part name="F8" library="igvc" deviceset="FUSE" device=""/>
</parts>
<sheets>
<sheet>
<plain>
<text x="22.86" y="38.1" size="1.778" layer="91">LAPTOP-POWERSUPPLY</text>
<text x="22.86" y="45.72" size="1.778" layer="91">LIDAR</text>
<text x="22.86" y="53.34" size="1.778" layer="91">LIGHTS</text>
<text x="22.86" y="60.96" size="1.778" layer="91">STEREO-CAM</text>
<text x="93.98" y="60.96" size="1.778" layer="91">WIRELESS-ESTOP</text>
<text x="93.98" y="53.34" size="1.778" layer="91">ARDUINO</text>
<text x="93.98" y="45.72" size="1.778" layer="91">V+BATTERYMONITOR</text>
<text x="93.98" y="38.1" size="1.778" layer="91">V+BATTERYMONITOR</text>
<text x="22.86" y="22.86" size="1.778" layer="91">24V-12V_CONVERTER</text>
</plain>
<instances>
<instance part="FB1" gate="G$1" x="71.12" y="55.88"/>
<instance part="F10" gate="F1" x="53.34" y="25.4"/>
<instance part="F1" gate="F1" x="88.9" y="63.5"/>
<instance part="F2" gate="F1" x="88.9" y="55.88"/>
<instance part="F3" gate="F1" x="88.9" y="48.26"/>
<instance part="F4" gate="F1" x="88.9" y="40.64"/>
<instance part="F5" gate="F1" x="53.34" y="63.5"/>
<instance part="F6" gate="F1" x="53.34" y="55.88"/>
<instance part="F7" gate="F1" x="53.34" y="48.26"/>
<instance part="F8" gate="F1" x="53.34" y="40.64"/>
</instances>
<busses>
</busses>
<nets>
<net name="N$10" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V6"/>
<pinref part="F10" gate="F1" pin="P$2"/>
</segment>
</net>
<net name="N$5" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V7"/>
<pinref part="F1" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="N$6" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V8"/>
<pinref part="F2" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="N$7" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V9"/>
<pinref part="F3" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="N$8" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V10"/>
<pinref part="F4" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="N$9" class="0">
<segment>
<pinref part="F1" gate="F1" pin="P$2"/>
<wire x1="93.98" y1="63.5" x2="109.22" y2="63.5" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$11" class="0">
<segment>
<pinref part="F2" gate="F1" pin="P$2"/>
<wire x1="93.98" y1="55.88" x2="109.22" y2="55.88" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$12" class="0">
<segment>
<pinref part="F3" gate="F1" pin="P$2"/>
<wire x1="93.98" y1="48.26" x2="109.22" y2="48.26" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$13" class="0">
<segment>
<pinref part="F4" gate="F1" pin="P$2"/>
<wire x1="93.98" y1="40.64" x2="109.22" y2="40.64" width="0.1524" layer="91"/>
</segment>
</net>
<net name="LAPTOP-PS" class="0">
<segment>
<wire x1="48.26" y1="40.64" x2="30.48" y2="40.64" width="0.1524" layer="91"/>
<pinref part="F8" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="LIDAR" class="0">
<segment>
<wire x1="48.26" y1="48.26" x2="30.48" y2="48.26" width="0.1524" layer="91"/>
<pinref part="F7" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="LIGHTS" class="0">
<segment>
<wire x1="48.26" y1="55.88" x2="30.48" y2="55.88" width="0.1524" layer="91"/>
<pinref part="F6" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="STEREO-CAM" class="0">
<segment>
<wire x1="48.26" y1="63.5" x2="30.48" y2="63.5" width="0.1524" layer="91"/>
<pinref part="F5" gate="F1" pin="P$1"/>
</segment>
</net>
<net name="N$18" class="0">
<segment>
<pinref part="F10" gate="F1" pin="P$1"/>
<wire x1="48.26" y1="25.4" x2="30.48" y2="25.4" width="0.1524" layer="91"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V1"/>
<pinref part="F5" gate="F1" pin="P$2"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V2"/>
<pinref part="F6" gate="F1" pin="P$2"/>
</segment>
</net>
<net name="N$3" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V3"/>
<pinref part="F7" gate="F1" pin="P$2"/>
</segment>
</net>
<net name="N$4" class="0">
<segment>
<pinref part="FB1" gate="G$1" pin="V4"/>
<pinref part="F8" gate="F1" pin="P$2"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
