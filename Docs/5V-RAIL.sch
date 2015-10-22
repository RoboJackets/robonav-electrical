<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="7.4.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="0.1" unitdist="inch" unit="inch" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
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
<package name="FUSEBLOCK-6PT">
<wire x1="-2.54" y1="-3.81" x2="2.54" y2="-3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="-3.81" x2="2.54" y2="3.81" width="0.127" layer="21"/>
<wire x1="2.54" y1="3.81" x2="-2.54" y2="3.81" width="0.127" layer="21"/>
<wire x1="-2.54" y1="3.81" x2="-2.54" y2="-3.81" width="0.127" layer="21"/>
<smd name="V1" x="-1.27" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="V2" x="-1.27" y="-1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="V3" x="-1.27" y="-2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="V4" x="1.27" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="V5" x="1.27" y="-1.27" dx="1.27" dy="0.635" layer="1"/>
<smd name="V6" x="1.27" y="-2.54" dx="1.27" dy="0.635" layer="1"/>
<smd name="GND" x="1.27" y="2.54" dx="1.27" dy="0.635" layer="1"/>
</package>
<package name="FUSE">
<rectangle x1="-2.54" y1="-1.27" x2="2.54" y2="1.27" layer="21"/>
<smd name="P$1" x="-2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
<smd name="P$2" x="2.54" y="0" dx="1.27" dy="0.635" layer="1"/>
</package>
</packages>
<symbols>
<symbol name="FUSEBLOCK-6PT">
<wire x1="-7.62" y1="7.62" x2="7.62" y2="7.62" width="0.254" layer="94"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="7.62" y1="-15.24" x2="-7.62" y2="-15.24" width="0.254" layer="94"/>
<wire x1="-7.62" y1="-15.24" x2="-7.62" y2="7.62" width="0.254" layer="94"/>
<pin name="V1" x="-12.7" y="2.54" length="middle" direction="pwr"/>
<pin name="V2" x="-12.7" y="-5.08" length="middle" direction="pwr"/>
<pin name="V3" x="-12.7" y="-12.7" length="middle" direction="pwr"/>
<pin name="V4" x="12.7" y="2.54" length="middle" direction="pwr" rot="R180"/>
<pin name="V5" x="12.7" y="-5.08" length="middle" direction="pwr" rot="R180"/>
<pin name="V6" x="12.7" y="-12.7" length="middle" direction="pwr" rot="R180"/>
<pin name="GND" x="0" y="12.7" length="middle" direction="pwr" rot="R270"/>
<text x="-7.62" y="-17.78" size="1.778" layer="94">&gt;NAME</text>
<text x="2.54" y="-17.78" size="1.778" layer="94">&gt;VALUE</text>
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
<deviceset name="FUSEBLOCK-6" prefix="FB" uservalue="yes">
<gates>
<gate name="G$1" symbol="FUSEBLOCK-6PT" x="0" y="0"/>
</gates>
<devices>
<device name="" package="FUSEBLOCK-6PT">
<connects>
<connect gate="G$1" pin="GND" pad="GND"/>
<connect gate="G$1" pin="V1" pad="V1"/>
<connect gate="G$1" pin="V2" pad="V2"/>
<connect gate="G$1" pin="V3" pad="V3"/>
<connect gate="G$1" pin="V4" pad="V4"/>
<connect gate="G$1" pin="V5" pad="V5"/>
<connect gate="G$1" pin="V6" pad="V6"/>
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
<part name="5V-RAIL" library="igvc" deviceset="FUSEBLOCK-6" device=""/>
<part name="F1" library="igvc" deviceset="FUSE" device="" value="1A"/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="5V-RAIL" gate="G$1" x="68.58" y="55.88"/>
<instance part="F1" gate="F1" x="86.36" y="43.18"/>
</instances>
<busses>
</busses>
<nets>
<net name="SOLENOID" class="0">
<segment>
<pinref part="F1" gate="F1" pin="P$2"/>
<wire x1="91.44" y1="43.18" x2="96.52" y2="43.18" width="0.1524" layer="91"/>
<label x="96.52" y="43.18" size="1.778" layer="95"/>
</segment>
</net>
<net name="N$2" class="0">
<segment>
<pinref part="5V-RAIL" gate="G$1" pin="V6"/>
<pinref part="F1" gate="F1" pin="P$1"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
</eagle>
