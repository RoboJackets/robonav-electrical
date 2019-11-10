<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE eagle SYSTEM "eagle.dtd">
<eagle version="9.5.0">
<drawing>
<settings>
<setting alwaysvectorfont="no"/>
<setting verticaltext="up"/>
</settings>
<grid distance="1.27" unitdist="mm" unit="mm" style="lines" multiple="1" display="no" altdistance="0.01" altunitdist="inch" altunit="inch"/>
<layers>
<layer number="1" name="Top" color="4" fill="1" visible="no" active="no"/>
<layer number="2" name="Route2" color="16" fill="1" visible="no" active="no"/>
<layer number="3" name="Route3" color="17" fill="1" visible="no" active="no"/>
<layer number="4" name="Route4" color="18" fill="1" visible="no" active="no"/>
<layer number="5" name="Route5" color="19" fill="1" visible="no" active="no"/>
<layer number="6" name="Route6" color="25" fill="1" visible="no" active="no"/>
<layer number="7" name="Route7" color="26" fill="1" visible="no" active="no"/>
<layer number="8" name="Route8" color="27" fill="1" visible="no" active="no"/>
<layer number="9" name="Route9" color="28" fill="1" visible="no" active="no"/>
<layer number="10" name="Route10" color="29" fill="1" visible="no" active="no"/>
<layer number="11" name="Route11" color="30" fill="1" visible="no" active="no"/>
<layer number="12" name="Route12" color="20" fill="1" visible="no" active="no"/>
<layer number="13" name="Route13" color="21" fill="1" visible="no" active="no"/>
<layer number="14" name="Route14" color="22" fill="1" visible="no" active="no"/>
<layer number="15" name="Route15" color="23" fill="1" visible="no" active="no"/>
<layer number="16" name="Bottom" color="1" fill="1" visible="no" active="no"/>
<layer number="17" name="Pads" color="2" fill="1" visible="no" active="no"/>
<layer number="18" name="Vias" color="2" fill="1" visible="no" active="no"/>
<layer number="19" name="Unrouted" color="6" fill="1" visible="no" active="no"/>
<layer number="20" name="Dimension" color="24" fill="1" visible="no" active="no"/>
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
<library name="MastPanel">
<packages>
<package name="100A">
<smd name="1" x="-7.747" y="6" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="2" x="-7.747" y="5.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="3" x="-7.747" y="5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="4" x="-7.747" y="4.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="5" x="-7.747" y="4" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="6" x="-7.747" y="3.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="7" x="-7.747" y="3" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="8" x="-7.747" y="2.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="9" x="-7.747" y="2" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="10" x="-7.747" y="1.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="11" x="-7.747" y="1" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="12" x="-7.747" y="0.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="13" x="-7.747" y="0" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="14" x="-7.747" y="-0.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="15" x="-7.747" y="-1" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="16" x="-7.747" y="-1.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="17" x="-7.747" y="-2" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="18" x="-7.747" y="-2.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="19" x="-7.747" y="-3" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="20" x="-7.747" y="-3.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="21" x="-7.747" y="-4" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="22" x="-7.747" y="-4.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="23" x="-7.747" y="-5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="24" x="-7.747" y="-5.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="25" x="-7.747" y="-6" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="26" x="-6" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="27" x="-5.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="28" x="-5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="29" x="-4.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="30" x="-4" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="31" x="-3.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="32" x="-3" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="33" x="-2.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="34" x="-2" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="35" x="-1.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="36" x="-1" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="37" x="-0.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="39" x="0.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="40" x="1" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="41" x="1.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="42" x="2" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="43" x="2.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="44" x="3" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="45" x="3.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="46" x="4" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="47" x="4.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="48" x="5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="49" x="5.5" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="50" x="6" y="-7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="51" x="7.747" y="-6" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="52" x="7.747" y="-5.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="53" x="7.747" y="-5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="54" x="7.747" y="-4.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="55" x="7.747" y="-4" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="56" x="7.747" y="-3.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="57" x="7.747" y="-3" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="58" x="7.747" y="-2.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="59" x="7.747" y="-2" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="60" x="7.747" y="-1.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="61" x="7.747" y="-1" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="62" x="7.747" y="-0.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="63" x="7.747" y="0" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="64" x="7.747" y="0.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="65" x="7.747" y="1" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="66" x="7.747" y="1.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="67" x="7.747" y="2" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="68" x="7.747" y="2.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="69" x="7.747" y="3" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="70" x="7.747" y="3.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="71" x="7.747" y="4" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="72" x="7.747" y="4.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="73" x="7.747" y="5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="74" x="7.747" y="5.5" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="75" x="7.747" y="6" dx="0.2286" dy="1.4732" layer="1" rot="R270"/>
<smd name="76" x="6" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="77" x="5.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="78" x="5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="79" x="4.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="80" x="4" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="81" x="3.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="82" x="3" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="83" x="2.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="84" x="2" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="85" x="1.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="86" x="1" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="87" x="0.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="89" x="-0.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="90" x="-1" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="91" x="-1.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="92" x="-2" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="93" x="-2.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="94" x="-3" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="95" x="-3.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="96" x="-4" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="97" x="-4.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="98" x="-5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="99" x="-5.5" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<smd name="100" x="-6" y="7.747" dx="0.2286" dy="1.4732" layer="1" rot="R180"/>
<wire x1="-7.1628" y1="-7.1628" x2="-6.4516" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="-7.1628" x2="7.1628" y2="-6.4516" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="7.1628" x2="6.4516" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="7.1628" x2="-7.1628" y2="6.4516" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="-6.4516" x2="-7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="6.4516" y1="-7.1628" x2="7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="6.4516" x2="7.1628" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-6.4516" y1="7.1628" x2="-7.1628" y2="7.1628" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-8.9916" y="1.6905"/>
<vertex x="-8.9916" y="1.3095"/>
<vertex x="-8.7376" y="1.3095"/>
<vertex x="-8.7376" y="1.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-8.9916" y="-3.3095"/>
<vertex x="-8.9916" y="-3.6905"/>
<vertex x="-8.7376" y="-3.6905"/>
<vertex x="-8.7376" y="-3.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-4.1905" y="-8.7376"/>
<vertex x="-4.1905" y="-8.9916"/>
<vertex x="-3.8095" y="-8.9916"/>
<vertex x="-3.8095" y="-8.7376"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-8.7376"/>
<vertex x="0.8095" y="-8.9916"/>
<vertex x="1.1905" y="-8.9916"/>
<vertex x="1.1905" y="-8.7376"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="5.8095" y="-8.7376"/>
<vertex x="5.8095" y="-8.9916"/>
<vertex x="6.1905" y="-8.9916"/>
<vertex x="6.1905" y="-8.7376"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.9916" y="-1.3095"/>
<vertex x="8.9916" y="-1.6905"/>
<vertex x="8.7376" y="-1.6905"/>
<vertex x="8.7376" y="-1.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.9916" y="3.6905"/>
<vertex x="8.9916" y="3.3095"/>
<vertex x="8.7376" y="3.3095"/>
<vertex x="8.7376" y="3.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.8095" y="8.7376"/>
<vertex x="3.8095" y="8.9916"/>
<vertex x="4.1905" y="8.9916"/>
<vertex x="4.1905" y="8.7376"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="8.7376"/>
<vertex x="-1.1905" y="8.9916"/>
<vertex x="-0.8095" y="8.9916"/>
<vertex x="-0.8095" y="8.7376"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.1905" y="8.7376"/>
<vertex x="-6.1905" y="8.9916"/>
<vertex x="-5.8095" y="8.9916"/>
<vertex x="-5.8095" y="8.7376"/>
</polygon>
<text x="-9.7028" y="5.9944" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-7.3152" y1="-7.3152" x2="-7.3152" y2="-6.3754" width="0.1524" layer="39"/>
<wire x1="-7.3152" y1="-6.3754" x2="-8.7376" y2="-6.3754" width="0.1524" layer="39"/>
<wire x1="-8.7376" y1="-6.3754" x2="-8.7376" y2="6.3754" width="0.1524" layer="39"/>
<wire x1="-8.7376" y1="6.3754" x2="-7.3152" y2="6.3754" width="0.1524" layer="39"/>
<wire x1="-7.3152" y1="6.3754" x2="-7.3152" y2="7.3152" width="0.1524" layer="39"/>
<wire x1="7.3152" y1="-7.3152" x2="7.3152" y2="-6.3754" width="0.1524" layer="39"/>
<wire x1="7.3152" y1="-6.3754" x2="8.7376" y2="-6.3754" width="0.1524" layer="39"/>
<wire x1="8.7376" y1="-6.3754" x2="8.7376" y2="6.3754" width="0.1524" layer="39"/>
<wire x1="8.7376" y1="6.3754" x2="7.3152" y2="6.3754" width="0.1524" layer="39"/>
<wire x1="7.3152" y1="6.3754" x2="7.3152" y2="7.3152" width="0.1524" layer="39"/>
<wire x1="-7.3152" y1="7.3152" x2="-6.3754" y2="7.3152" width="0.1524" layer="39"/>
<wire x1="-6.3754" y1="7.3152" x2="-6.3754" y2="8.7376" width="0.1524" layer="39"/>
<wire x1="-6.3754" y1="8.7376" x2="6.3754" y2="8.7376" width="0.1524" layer="39"/>
<wire x1="6.3754" y1="8.7376" x2="6.3754" y2="7.3152" width="0.1524" layer="39"/>
<wire x1="6.3754" y1="7.3152" x2="7.3152" y2="7.3152" width="0.1524" layer="39"/>
<wire x1="-7.3152" y1="-7.3152" x2="-6.3754" y2="-7.3152" width="0.1524" layer="39"/>
<wire x1="-6.3754" y1="-7.3152" x2="-6.3754" y2="-8.7376" width="0.1524" layer="39"/>
<wire x1="-6.3754" y1="-8.7376" x2="6.3754" y2="-8.7376" width="0.1524" layer="39"/>
<wire x1="6.3754" y1="-8.7376" x2="6.3754" y2="-7.3152" width="0.1524" layer="39"/>
<wire x1="6.3754" y1="-7.3152" x2="7.3152" y2="-7.3152" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-7.3025" y="-7.3025"/>
<vertex x="-7.3025" y="-6.3683"/>
<vertex x="-8.7376" y="-6.3683"/>
<vertex x="-8.7376" y="6.3683"/>
<vertex x="-7.3025" y="6.3683"/>
<vertex x="-7.3025" y="7.3025"/>
<vertex x="-6.3683" y="7.3025"/>
<vertex x="-6.3683" y="8.7376"/>
<vertex x="6.3683" y="8.7376"/>
<vertex x="6.3683" y="7.3025"/>
<vertex x="7.3025" y="7.3025"/>
<vertex x="7.3025" y="6.3683"/>
<vertex x="8.7376" y="6.3683"/>
<vertex x="8.7376" y="-6.3683"/>
<vertex x="7.3025" y="-6.3683"/>
<vertex x="7.3025" y="-7.3025"/>
<vertex x="6.3683" y="-7.3025"/>
<vertex x="6.3683" y="-8.7376"/>
<vertex x="-6.3683" y="-8.7376"/>
<vertex x="-6.3683" y="-7.3025"/>
</polygon>
<wire x1="5.8674" y1="7.0612" x2="6.1468" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="7.0612" x2="6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="8.128" x2="5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="8.128" x2="5.8674" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="7.0612" x2="5.6388" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="7.0612" x2="5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="8.128" x2="5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="8.128" x2="5.3594" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="7.0358" x2="5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="7.0358" x2="5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="8.128" x2="4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="8.128" x2="4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="7.0358" x2="4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="7.0358" x2="4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="8.128" x2="4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="8.128" x2="4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="7.0358" x2="4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="7.0358" x2="4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="8.128" x2="3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="8.128" x2="3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="7.0358" x2="3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="7.0358" x2="3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="8.128" x2="3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="8.128" x2="3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="7.0358" x2="3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="7.0358" x2="3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="8.128" x2="2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="8.128" x2="2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="7.0358" x2="2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="7.0358" x2="2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="8.128" x2="2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="8.128" x2="2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="7.0358" x2="2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="7.0358" x2="2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="8.128" x2="1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="8.128" x2="1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="7.0358" x2="1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.651" y1="7.0358" x2="1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="8.128" x2="1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="8.128" x2="1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="7.0358" x2="1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.143" y1="7.0358" x2="1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="8.128" x2="0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="8.128" x2="0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="7.0358" x2="0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.635" y1="7.0358" x2="0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="8.128" x2="0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="8.128" x2="0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="7.0358" x2="0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="7.0358" x2="0.127" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.127" y1="8.128" x2="-0.1524" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="8.128" x2="-0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="7.0358" x2="-0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="7.0358" x2="-0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="8.128" x2="-0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="8.128" x2="-0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="7.0358" x2="-0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="7.0358" x2="-0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="8.128" x2="-1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="8.128" x2="-1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="7.0358" x2="-1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="7.0358" x2="-1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="8.128" x2="-1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.128" x2="-1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="7.0358" x2="-1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="7.0358" x2="-1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="8.128" x2="-2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="8.128" x2="-2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="7.0358" x2="-2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="7.0358" x2="-2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="8.128" x2="-2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="8.128" x2="-2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="7.0358" x2="-2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="7.0358" x2="-2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="8.128" x2="-3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="8.128" x2="-3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="7.0358" x2="-3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="7.0358" x2="-3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="8.128" x2="-3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="8.128" x2="-3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="7.0358" x2="-3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="7.0358" x2="-3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="8.128" x2="-4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="8.128" x2="-4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="7.0358" x2="-4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="7.0358" x2="-4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="8.128" x2="-4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="8.128" x2="-4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="7.0358" x2="-4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="7.0358" x2="-4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="8.128" x2="-5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="8.128" x2="-5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="7.0358" x2="-5.3594" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="7.0358" x2="-5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="8.128" x2="-5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="8.128" x2="-5.6388" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="7.0358" x2="-5.8674" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="7.0358" x2="-5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="8.128" x2="-6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="8.128" x2="-6.1468" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.8674" x2="-7.0612" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="6.1468" x2="-8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="6.1468" x2="-8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.8674" x2="-7.0612" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.3594" x2="-7.0612" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.6388" x2="-8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.6388" x2="-8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.3594" x2="-7.0612" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="4.8514" x2="-7.0612" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.1308" x2="-8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.1308" x2="-8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.8514" x2="-7.0612" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.3688" x2="-7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.6482" x2="-8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.6482" x2="-8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.3688" x2="-7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.8608" x2="-7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.1402" x2="-8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.1402" x2="-8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.8608" x2="-7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.3528" x2="-7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.6322" x2="-8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.6322" x2="-8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.3528" x2="-7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.8702" x2="-7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.1496" x2="-8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.1496" x2="-8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.8702" x2="-7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.3622" x2="-7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.6416" x2="-8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.6416" x2="-8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.3622" x2="-7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.8542" x2="-7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.1336" x2="-8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.1336" x2="-8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.8542" x2="-7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.3716" x2="-7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.651" x2="-8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.651" x2="-8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.3716" x2="-7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.8636" x2="-7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.143" x2="-8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.143" x2="-8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.8636" x2="-7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.3556" x2="-7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.635" x2="-8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.635" x2="-8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.3556" x2="-7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.1524" x2="-7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.1524" x2="-8.128" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.127" x2="-8.128" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.1524" x2="-7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.635" x2="-7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.3556" x2="-8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.3556" x2="-8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.635" x2="-7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.143" x2="-7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.8636" x2="-8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.8636" x2="-8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.143" x2="-7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.651" x2="-7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.3716" x2="-8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.3716" x2="-8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.651" x2="-7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.1336" x2="-7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.8542" x2="-8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.8542" x2="-8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.1336" x2="-7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.6416" x2="-7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.3622" x2="-8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.3622" x2="-8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.6416" x2="-7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.1496" x2="-7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.8702" x2="-8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.8702" x2="-8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.1496" x2="-7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.6322" x2="-7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.3528" x2="-8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.3528" x2="-8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.6322" x2="-7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.1402" x2="-7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.8608" x2="-8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.8608" x2="-8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.1402" x2="-7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.6482" x2="-7.0358" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.3688" x2="-8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.3688" x2="-8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.6482" x2="-7.0358" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.1308" x2="-7.0358" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.8514" x2="-8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.8514" x2="-8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.1308" x2="-7.0358" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.6388" x2="-7.0358" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.3594" x2="-8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.3594" x2="-8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.6388" x2="-7.0358" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-6.1468" x2="-7.0358" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.8674" x2="-8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.8674" x2="-8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-6.1468" x2="-7.0358" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-7.0612" x2="-6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-7.0612" x2="-6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-8.128" x2="-5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-8.128" x2="-5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-7.0612" x2="-5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-7.0612" x2="-5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-8.128" x2="-5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-8.128" x2="-5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-7.0612" x2="-5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-7.0612" x2="-5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-8.128" x2="-4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-8.128" x2="-4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-7.0612" x2="-4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-7.0612" x2="-4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-8.128" x2="-4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-8.128" x2="-4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-7.0612" x2="-4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-7.0612" x2="-4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-8.128" x2="-3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-8.128" x2="-3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-7.0612" x2="-3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-7.0612" x2="-3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-8.128" x2="-3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-8.128" x2="-3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-7.0612" x2="-3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-7.0612" x2="-3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-8.128" x2="-2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-8.128" x2="-2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-7.0612" x2="-2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-7.0612" x2="-2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-8.128" x2="-2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-8.128" x2="-2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-7.0612" x2="-2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-7.0612" x2="-2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-8.128" x2="-1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-8.128" x2="-1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-7.0612" x2="-1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-7.0612" x2="-1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-8.128" x2="-1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-8.128" x2="-1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-7.0612" x2="-1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-7.0612" x2="-1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-8.128" x2="-0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-8.128" x2="-0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-7.0612" x2="-0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-7.0612" x2="-0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-8.128" x2="-0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-8.128" x2="-0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-7.0612" x2="-0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-7.0612" x2="-0.127" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-8.128" x2="0.1524" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-8.128" x2="0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-7.0612" x2="0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-7.0612" x2="0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-8.128" x2="0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-8.128" x2="0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-7.0612" x2="0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-7.0612" x2="0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-8.128" x2="1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-8.128" x2="1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-7.0612" x2="1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-7.0612" x2="1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-8.128" x2="1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.128" x2="1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-7.0612" x2="1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-7.0612" x2="1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-8.128" x2="2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-8.128" x2="2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-7.0612" x2="2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-7.0612" x2="2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-8.128" x2="2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-8.128" x2="2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-7.0612" x2="2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-7.0612" x2="2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-8.128" x2="3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-8.128" x2="3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-7.0612" x2="3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-7.0612" x2="3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-8.128" x2="3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-8.128" x2="3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-7.0612" x2="3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-7.0612" x2="3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-8.128" x2="4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-8.128" x2="4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-7.0612" x2="4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-7.0612" x2="4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-8.128" x2="4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-8.128" x2="4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-7.0612" x2="4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-7.0612" x2="4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-8.128" x2="5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-8.128" x2="5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-7.0612" x2="5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-7.0612" x2="5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-8.128" x2="5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-8.128" x2="5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-7.0612" x2="5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-7.0612" x2="5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-8.128" x2="6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-8.128" x2="6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.8674" x2="7.0612" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-6.1468" x2="8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-6.1468" x2="8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.8674" x2="7.0612" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.3594" x2="7.0612" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.6388" x2="8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.6388" x2="8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.3594" x2="7.0612" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.8514" x2="7.0612" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.1308" x2="8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.1308" x2="8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.8514" x2="7.0612" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.3688" x2="7.0612" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.6482" x2="8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.6482" x2="8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.3688" x2="7.0612" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.8608" x2="7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-4.1402" x2="8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.1402" x2="8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.8608" x2="7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.3528" x2="7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.6322" x2="8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.6322" x2="8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.3528" x2="7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.8702" x2="7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.1496" x2="8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.1496" x2="8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.8702" x2="7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.3622" x2="7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.6416" x2="8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.6416" x2="8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.3622" x2="7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.8542" x2="7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.1336" x2="8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.1336" x2="8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.8542" x2="7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.3716" x2="7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.651" x2="8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.651" x2="8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.3716" x2="7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.8636" x2="7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.143" x2="8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.143" x2="8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.8636" x2="7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.3556" x2="7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.635" x2="8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.635" x2="8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.3556" x2="7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.1524" x2="7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.1524" x2="8.128" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.127" x2="8.128" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.1524" x2="7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.635" x2="7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.3556" x2="8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.3556" x2="8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.635" x2="7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.143" x2="7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.8636" x2="8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.8636" x2="8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.143" x2="7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.651" x2="7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.3716" x2="8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.3716" x2="8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.651" x2="7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.1336" x2="7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.8542" x2="8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.8542" x2="8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.1336" x2="7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.6416" x2="7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.3622" x2="8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.3622" x2="8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.6416" x2="7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.1496" x2="7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.8702" x2="8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.8702" x2="8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.1496" x2="7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.6322" x2="7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.3528" x2="8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.3528" x2="8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.6322" x2="7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.1402" x2="7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.8608" x2="8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.8608" x2="8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.1402" x2="7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.6482" x2="7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.3688" x2="8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.3688" x2="8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.6482" x2="7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.1308" x2="7.0358" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.8514" x2="8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.8514" x2="8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.1308" x2="7.0358" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.6388" x2="7.0358" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.3594" x2="8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.3594" x2="8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.6388" x2="7.0358" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="6.1468" x2="7.0358" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.8674" x2="8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.8674" x2="8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="6.1468" x2="7.0358" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.7912" x2="-5.7912" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="-7.0612" x2="7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-7.0612" x2="7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="7.0612" x2="-7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="7.0612" x2="-7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<text x="-7.239" y="5.6134" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="100A-M">
<smd name="1" x="-7.7978" y="6" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="2" x="-7.7978" y="5.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="3" x="-7.7978" y="5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="4" x="-7.7978" y="4.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="5" x="-7.7978" y="4" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="6" x="-7.7978" y="3.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="7" x="-7.7978" y="3" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="8" x="-7.7978" y="2.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="9" x="-7.7978" y="2" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="10" x="-7.7978" y="1.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="11" x="-7.7978" y="1" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="12" x="-7.7978" y="0.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="13" x="-7.7978" y="0" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="14" x="-7.7978" y="-0.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="15" x="-7.7978" y="-1" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="16" x="-7.7978" y="-1.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="17" x="-7.7978" y="-2" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="18" x="-7.7978" y="-2.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="19" x="-7.7978" y="-3" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="20" x="-7.7978" y="-3.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="21" x="-7.7978" y="-4" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="22" x="-7.7978" y="-4.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="23" x="-7.7978" y="-5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="24" x="-7.7978" y="-5.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="25" x="-7.7978" y="-6" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="26" x="-6" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="27" x="-5.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="28" x="-5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="29" x="-4.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="30" x="-4" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="31" x="-3.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="32" x="-3" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="33" x="-2.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="34" x="-2" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="35" x="-1.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="36" x="-1" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="37" x="-0.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="39" x="0.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="40" x="1" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="41" x="1.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="42" x="2" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="43" x="2.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="44" x="3" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="45" x="3.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="46" x="4" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="47" x="4.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="48" x="5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="49" x="5.5" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="50" x="6" y="-7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="51" x="7.7978" y="-6" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="52" x="7.7978" y="-5.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="53" x="7.7978" y="-5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="54" x="7.7978" y="-4.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="55" x="7.7978" y="-4" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="56" x="7.7978" y="-3.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="57" x="7.7978" y="-3" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="58" x="7.7978" y="-2.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="59" x="7.7978" y="-2" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="60" x="7.7978" y="-1.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="61" x="7.7978" y="-1" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="62" x="7.7978" y="-0.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="63" x="7.7978" y="0" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="64" x="7.7978" y="0.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="65" x="7.7978" y="1" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="66" x="7.7978" y="1.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="67" x="7.7978" y="2" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="68" x="7.7978" y="2.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="69" x="7.7978" y="3" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="70" x="7.7978" y="3.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="71" x="7.7978" y="4" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="72" x="7.7978" y="4.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="73" x="7.7978" y="5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="74" x="7.7978" y="5.5" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="75" x="7.7978" y="6" dx="0.2794" dy="1.778" layer="1" rot="R270"/>
<smd name="76" x="6" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="77" x="5.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="78" x="5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="79" x="4.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="80" x="4" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="81" x="3.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="82" x="3" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="83" x="2.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="84" x="2" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="85" x="1.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="86" x="1" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="87" x="0.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="89" x="-0.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="90" x="-1" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="91" x="-1.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="92" x="-2" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="93" x="-2.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="94" x="-3" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="95" x="-3.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="96" x="-4" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="97" x="-4.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="98" x="-5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="99" x="-5.5" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<smd name="100" x="-6" y="7.7978" dx="0.2794" dy="1.778" layer="1" rot="R180"/>
<wire x1="-7.1628" y1="-7.1628" x2="-6.477" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="-7.1628" x2="7.1628" y2="-6.477" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="7.1628" x2="6.477" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="7.1628" x2="-7.1628" y2="6.477" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="-6.477" x2="-7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="6.477" y1="-7.1628" x2="7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="6.477" x2="7.1628" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-6.477" y1="7.1628" x2="-7.1628" y2="7.1628" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-9.1948" y="1.6905"/>
<vertex x="-9.1948" y="1.3095"/>
<vertex x="-8.9408" y="1.3095"/>
<vertex x="-8.9408" y="1.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-9.1948" y="-3.3095"/>
<vertex x="-9.1948" y="-3.6905"/>
<vertex x="-8.9408" y="-3.6905"/>
<vertex x="-8.9408" y="-3.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-4.1905" y="-8.9408"/>
<vertex x="-4.1905" y="-9.1948"/>
<vertex x="-3.8095" y="-9.1948"/>
<vertex x="-3.8095" y="-8.9408"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-8.9408"/>
<vertex x="0.8095" y="-9.1948"/>
<vertex x="1.1905" y="-9.1948"/>
<vertex x="1.1905" y="-8.9408"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="5.8095" y="-8.9408"/>
<vertex x="5.8095" y="-9.1948"/>
<vertex x="6.1905" y="-9.1948"/>
<vertex x="6.1905" y="-8.9408"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="9.1948" y="-1.3095"/>
<vertex x="9.1948" y="-1.6905"/>
<vertex x="8.9408" y="-1.6905"/>
<vertex x="8.9408" y="-1.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="9.1948" y="3.6905"/>
<vertex x="9.1948" y="3.3095"/>
<vertex x="8.9408" y="3.3095"/>
<vertex x="8.9408" y="3.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.8095" y="8.9408"/>
<vertex x="3.8095" y="9.1948"/>
<vertex x="4.1905" y="9.1948"/>
<vertex x="4.1905" y="8.9408"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="8.9408"/>
<vertex x="-1.1905" y="9.1948"/>
<vertex x="-0.8095" y="9.1948"/>
<vertex x="-0.8095" y="8.9408"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.1905" y="8.9408"/>
<vertex x="-6.1905" y="9.1948"/>
<vertex x="-5.8095" y="9.1948"/>
<vertex x="-5.8095" y="8.9408"/>
</polygon>
<text x="-9.906" y="5.9944" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-7.5692" y1="-7.5692" x2="-7.5692" y2="-6.6548" width="0.1524" layer="39"/>
<wire x1="-7.5692" y1="-6.6548" x2="-9.1948" y2="-6.6548" width="0.1524" layer="39"/>
<wire x1="-9.1948" y1="-6.6548" x2="-9.1948" y2="6.6548" width="0.1524" layer="39"/>
<wire x1="-9.1948" y1="6.6548" x2="-7.5692" y2="6.6548" width="0.1524" layer="39"/>
<wire x1="-7.5692" y1="6.6548" x2="-7.5692" y2="7.5692" width="0.1524" layer="39"/>
<wire x1="7.5692" y1="-7.5692" x2="7.5692" y2="-6.6548" width="0.1524" layer="39"/>
<wire x1="7.5692" y1="-6.6548" x2="9.1948" y2="-6.6548" width="0.1524" layer="39"/>
<wire x1="9.1948" y1="-6.6548" x2="9.1948" y2="6.6548" width="0.1524" layer="39"/>
<wire x1="9.1948" y1="6.6548" x2="7.5692" y2="6.6548" width="0.1524" layer="39"/>
<wire x1="7.5692" y1="6.6548" x2="7.5692" y2="7.5692" width="0.1524" layer="39"/>
<wire x1="-7.5692" y1="7.5692" x2="-6.6548" y2="7.5692" width="0.1524" layer="39"/>
<wire x1="-6.6548" y1="7.5692" x2="-6.6548" y2="9.1948" width="0.1524" layer="39"/>
<wire x1="-6.6548" y1="9.1948" x2="6.6548" y2="9.1948" width="0.1524" layer="39"/>
<wire x1="6.6548" y1="9.1948" x2="6.6548" y2="7.5692" width="0.1524" layer="39"/>
<wire x1="6.6548" y1="7.5692" x2="7.5692" y2="7.5692" width="0.1524" layer="39"/>
<wire x1="-7.5692" y1="-7.5692" x2="-6.6548" y2="-7.5692" width="0.1524" layer="39"/>
<wire x1="-6.6548" y1="-7.5692" x2="-6.6548" y2="-9.1948" width="0.1524" layer="39"/>
<wire x1="-6.6548" y1="-9.1948" x2="6.6548" y2="-9.1948" width="0.1524" layer="39"/>
<wire x1="6.6548" y1="-9.1948" x2="6.6548" y2="-7.5692" width="0.1524" layer="39"/>
<wire x1="6.6548" y1="-7.5692" x2="7.5692" y2="-7.5692" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-7.5565" y="-7.5565"/>
<vertex x="-7.5565" y="-6.6477"/>
<vertex x="-9.1948" y="-6.6477"/>
<vertex x="-9.1948" y="6.6477"/>
<vertex x="-7.5565" y="6.6477"/>
<vertex x="-7.5565" y="7.5565"/>
<vertex x="-6.6477" y="7.5565"/>
<vertex x="-6.6477" y="9.1948"/>
<vertex x="6.6477" y="9.1948"/>
<vertex x="6.6477" y="7.5565"/>
<vertex x="7.5565" y="7.5565"/>
<vertex x="7.5565" y="6.6477"/>
<vertex x="9.1948" y="6.6477"/>
<vertex x="9.1948" y="-6.6477"/>
<vertex x="7.5565" y="-6.6477"/>
<vertex x="7.5565" y="-7.5565"/>
<vertex x="6.6477" y="-7.5565"/>
<vertex x="6.6477" y="-9.1948"/>
<vertex x="-6.6477" y="-9.1948"/>
<vertex x="-6.6477" y="-7.5565"/>
</polygon>
<wire x1="5.8674" y1="7.0612" x2="6.1468" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="7.0612" x2="6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="8.128" x2="5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="8.128" x2="5.8674" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="7.0612" x2="5.6388" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="7.0612" x2="5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="8.128" x2="5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="8.128" x2="5.3594" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="7.0358" x2="5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="7.0358" x2="5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="8.128" x2="4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="8.128" x2="4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="7.0358" x2="4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="7.0358" x2="4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="8.128" x2="4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="8.128" x2="4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="7.0358" x2="4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="7.0358" x2="4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="8.128" x2="3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="8.128" x2="3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="7.0358" x2="3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="7.0358" x2="3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="8.128" x2="3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="8.128" x2="3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="7.0358" x2="3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="7.0358" x2="3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="8.128" x2="2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="8.128" x2="2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="7.0358" x2="2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="7.0358" x2="2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="8.128" x2="2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="8.128" x2="2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="7.0358" x2="2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="7.0358" x2="2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="8.128" x2="1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="8.128" x2="1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="7.0358" x2="1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.651" y1="7.0358" x2="1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="8.128" x2="1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="8.128" x2="1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="7.0358" x2="1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.143" y1="7.0358" x2="1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="8.128" x2="0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="8.128" x2="0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="7.0358" x2="0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.635" y1="7.0358" x2="0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="8.128" x2="0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="8.128" x2="0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="7.0358" x2="0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="7.0358" x2="0.127" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.127" y1="8.128" x2="-0.1524" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="8.128" x2="-0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="7.0358" x2="-0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="7.0358" x2="-0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="8.128" x2="-0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="8.128" x2="-0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="7.0358" x2="-0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="7.0358" x2="-0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="8.128" x2="-1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="8.128" x2="-1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="7.0358" x2="-1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="7.0358" x2="-1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="8.128" x2="-1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.128" x2="-1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="7.0358" x2="-1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="7.0358" x2="-1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="8.128" x2="-2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="8.128" x2="-2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="7.0358" x2="-2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="7.0358" x2="-2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="8.128" x2="-2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="8.128" x2="-2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="7.0358" x2="-2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="7.0358" x2="-2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="8.128" x2="-3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="8.128" x2="-3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="7.0358" x2="-3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="7.0358" x2="-3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="8.128" x2="-3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="8.128" x2="-3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="7.0358" x2="-3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="7.0358" x2="-3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="8.128" x2="-4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="8.128" x2="-4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="7.0358" x2="-4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="7.0358" x2="-4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="8.128" x2="-4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="8.128" x2="-4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="7.0358" x2="-4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="7.0358" x2="-4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="8.128" x2="-5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="8.128" x2="-5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="7.0358" x2="-5.3594" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="7.0358" x2="-5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="8.128" x2="-5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="8.128" x2="-5.6388" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="7.0358" x2="-5.8674" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="7.0358" x2="-5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="8.128" x2="-6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="8.128" x2="-6.1468" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.8674" x2="-7.0612" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="6.1468" x2="-8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="6.1468" x2="-8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.8674" x2="-7.0612" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.3594" x2="-7.0612" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.6388" x2="-8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.6388" x2="-8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.3594" x2="-7.0612" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="4.8514" x2="-7.0612" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.1308" x2="-8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.1308" x2="-8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.8514" x2="-7.0612" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.3688" x2="-7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.6482" x2="-8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.6482" x2="-8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.3688" x2="-7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.8608" x2="-7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.1402" x2="-8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.1402" x2="-8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.8608" x2="-7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.3528" x2="-7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.6322" x2="-8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.6322" x2="-8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.3528" x2="-7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.8702" x2="-7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.1496" x2="-8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.1496" x2="-8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.8702" x2="-7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.3622" x2="-7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.6416" x2="-8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.6416" x2="-8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.3622" x2="-7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.8542" x2="-7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.1336" x2="-8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.1336" x2="-8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.8542" x2="-7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.3716" x2="-7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.651" x2="-8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.651" x2="-8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.3716" x2="-7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.8636" x2="-7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.143" x2="-8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.143" x2="-8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.8636" x2="-7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.3556" x2="-7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.635" x2="-8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.635" x2="-8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.3556" x2="-7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.1524" x2="-7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.1524" x2="-8.128" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.127" x2="-8.128" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.1524" x2="-7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.635" x2="-7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.3556" x2="-8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.3556" x2="-8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.635" x2="-7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.143" x2="-7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.8636" x2="-8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.8636" x2="-8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.143" x2="-7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.651" x2="-7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.3716" x2="-8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.3716" x2="-8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.651" x2="-7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.1336" x2="-7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.8542" x2="-8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.8542" x2="-8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.1336" x2="-7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.6416" x2="-7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.3622" x2="-8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.3622" x2="-8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.6416" x2="-7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.1496" x2="-7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.8702" x2="-8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.8702" x2="-8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.1496" x2="-7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.6322" x2="-7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.3528" x2="-8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.3528" x2="-8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.6322" x2="-7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.1402" x2="-7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.8608" x2="-8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.8608" x2="-8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.1402" x2="-7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.6482" x2="-7.0358" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.3688" x2="-8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.3688" x2="-8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.6482" x2="-7.0358" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.1308" x2="-7.0358" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.8514" x2="-8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.8514" x2="-8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.1308" x2="-7.0358" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.6388" x2="-7.0358" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.3594" x2="-8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.3594" x2="-8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.6388" x2="-7.0358" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-6.1468" x2="-7.0358" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.8674" x2="-8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.8674" x2="-8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-6.1468" x2="-7.0358" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-7.0612" x2="-6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-7.0612" x2="-6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-8.128" x2="-5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-8.128" x2="-5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-7.0612" x2="-5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-7.0612" x2="-5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-8.128" x2="-5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-8.128" x2="-5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-7.0612" x2="-5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-7.0612" x2="-5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-8.128" x2="-4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-8.128" x2="-4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-7.0612" x2="-4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-7.0612" x2="-4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-8.128" x2="-4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-8.128" x2="-4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-7.0612" x2="-4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-7.0612" x2="-4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-8.128" x2="-3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-8.128" x2="-3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-7.0612" x2="-3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-7.0612" x2="-3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-8.128" x2="-3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-8.128" x2="-3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-7.0612" x2="-3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-7.0612" x2="-3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-8.128" x2="-2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-8.128" x2="-2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-7.0612" x2="-2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-7.0612" x2="-2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-8.128" x2="-2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-8.128" x2="-2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-7.0612" x2="-2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-7.0612" x2="-2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-8.128" x2="-1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-8.128" x2="-1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-7.0612" x2="-1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-7.0612" x2="-1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-8.128" x2="-1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-8.128" x2="-1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-7.0612" x2="-1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-7.0612" x2="-1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-8.128" x2="-0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-8.128" x2="-0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-7.0612" x2="-0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-7.0612" x2="-0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-8.128" x2="-0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-8.128" x2="-0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-7.0612" x2="-0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-7.0612" x2="-0.127" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-8.128" x2="0.1524" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-8.128" x2="0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-7.0612" x2="0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-7.0612" x2="0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-8.128" x2="0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-8.128" x2="0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-7.0612" x2="0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-7.0612" x2="0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-8.128" x2="1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-8.128" x2="1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-7.0612" x2="1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-7.0612" x2="1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-8.128" x2="1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.128" x2="1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-7.0612" x2="1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-7.0612" x2="1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-8.128" x2="2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-8.128" x2="2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-7.0612" x2="2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-7.0612" x2="2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-8.128" x2="2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-8.128" x2="2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-7.0612" x2="2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-7.0612" x2="2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-8.128" x2="3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-8.128" x2="3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-7.0612" x2="3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-7.0612" x2="3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-8.128" x2="3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-8.128" x2="3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-7.0612" x2="3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-7.0612" x2="3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-8.128" x2="4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-8.128" x2="4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-7.0612" x2="4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-7.0612" x2="4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-8.128" x2="4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-8.128" x2="4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-7.0612" x2="4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-7.0612" x2="4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-8.128" x2="5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-8.128" x2="5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-7.0612" x2="5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-7.0612" x2="5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-8.128" x2="5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-8.128" x2="5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-7.0612" x2="5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-7.0612" x2="5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-8.128" x2="6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-8.128" x2="6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.8674" x2="7.0612" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-6.1468" x2="8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-6.1468" x2="8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.8674" x2="7.0612" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.3594" x2="7.0612" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.6388" x2="8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.6388" x2="8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.3594" x2="7.0612" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.8514" x2="7.0612" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.1308" x2="8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.1308" x2="8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.8514" x2="7.0612" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.3688" x2="7.0612" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.6482" x2="8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.6482" x2="8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.3688" x2="7.0612" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.8608" x2="7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-4.1402" x2="8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.1402" x2="8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.8608" x2="7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.3528" x2="7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.6322" x2="8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.6322" x2="8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.3528" x2="7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.8702" x2="7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.1496" x2="8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.1496" x2="8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.8702" x2="7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.3622" x2="7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.6416" x2="8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.6416" x2="8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.3622" x2="7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.8542" x2="7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.1336" x2="8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.1336" x2="8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.8542" x2="7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.3716" x2="7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.651" x2="8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.651" x2="8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.3716" x2="7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.8636" x2="7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.143" x2="8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.143" x2="8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.8636" x2="7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.3556" x2="7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.635" x2="8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.635" x2="8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.3556" x2="7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.1524" x2="7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.1524" x2="8.128" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.127" x2="8.128" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.1524" x2="7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.635" x2="7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.3556" x2="8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.3556" x2="8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.635" x2="7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.143" x2="7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.8636" x2="8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.8636" x2="8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.143" x2="7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.651" x2="7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.3716" x2="8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.3716" x2="8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.651" x2="7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.1336" x2="7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.8542" x2="8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.8542" x2="8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.1336" x2="7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.6416" x2="7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.3622" x2="8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.3622" x2="8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.6416" x2="7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.1496" x2="7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.8702" x2="8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.8702" x2="8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.1496" x2="7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.6322" x2="7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.3528" x2="8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.3528" x2="8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.6322" x2="7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.1402" x2="7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.8608" x2="8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.8608" x2="8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.1402" x2="7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.6482" x2="7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.3688" x2="8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.3688" x2="8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.6482" x2="7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.1308" x2="7.0358" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.8514" x2="8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.8514" x2="8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.1308" x2="7.0358" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.6388" x2="7.0358" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.3594" x2="8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.3594" x2="8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.6388" x2="7.0358" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="6.1468" x2="7.0358" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.8674" x2="8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.8674" x2="8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="6.1468" x2="7.0358" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.7912" x2="-5.7912" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="-7.0612" x2="7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-7.0612" x2="7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="7.0612" x2="-7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="7.0612" x2="-7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<text x="-7.239" y="5.6134" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="100A-L">
<smd name="1" x="-7.6962" y="6" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="2" x="-7.6962" y="5.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="3" x="-7.6962" y="5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="4" x="-7.6962" y="4.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="5" x="-7.6962" y="4" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="6" x="-7.6962" y="3.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="7" x="-7.6962" y="3" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="8" x="-7.6962" y="2.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="9" x="-7.6962" y="2" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="10" x="-7.6962" y="1.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="11" x="-7.6962" y="1" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="12" x="-7.6962" y="0.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="13" x="-7.6962" y="0" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="14" x="-7.6962" y="-0.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="15" x="-7.6962" y="-1" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="16" x="-7.6962" y="-1.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="17" x="-7.6962" y="-2" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="18" x="-7.6962" y="-2.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="19" x="-7.6962" y="-3" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="20" x="-7.6962" y="-3.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="21" x="-7.6962" y="-4" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="22" x="-7.6962" y="-4.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="23" x="-7.6962" y="-5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="24" x="-7.6962" y="-5.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="25" x="-7.6962" y="-6" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="26" x="-6" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="27" x="-5.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="28" x="-5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="29" x="-4.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="30" x="-4" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="31" x="-3.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="32" x="-3" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="33" x="-2.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="34" x="-2" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="35" x="-1.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="36" x="-1" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="37" x="-0.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="38" x="0" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="39" x="0.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="40" x="1" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="41" x="1.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="42" x="2" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="43" x="2.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="44" x="3" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="45" x="3.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="46" x="4" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="47" x="4.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="48" x="5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="49" x="5.5" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="50" x="6" y="-7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="51" x="7.6962" y="-6" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="52" x="7.6962" y="-5.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="53" x="7.6962" y="-5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="54" x="7.6962" y="-4.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="55" x="7.6962" y="-4" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="56" x="7.6962" y="-3.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="57" x="7.6962" y="-3" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="58" x="7.6962" y="-2.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="59" x="7.6962" y="-2" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="60" x="7.6962" y="-1.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="61" x="7.6962" y="-1" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="62" x="7.6962" y="-0.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="63" x="7.6962" y="0" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="64" x="7.6962" y="0.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="65" x="7.6962" y="1" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="66" x="7.6962" y="1.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="67" x="7.6962" y="2" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="68" x="7.6962" y="2.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="69" x="7.6962" y="3" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="70" x="7.6962" y="3.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="71" x="7.6962" y="4" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="72" x="7.6962" y="4.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="73" x="7.6962" y="5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="74" x="7.6962" y="5.5" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="75" x="7.6962" y="6" dx="0.1778" dy="1.1684" layer="1" rot="R270"/>
<smd name="76" x="6" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="77" x="5.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="78" x="5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="79" x="4.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="80" x="4" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="81" x="3.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="82" x="3" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="83" x="2.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="84" x="2" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="85" x="1.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="86" x="1" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="87" x="0.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="88" x="0" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="89" x="-0.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="90" x="-1" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="91" x="-1.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="92" x="-2" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="93" x="-2.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="94" x="-3" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="95" x="-3.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="96" x="-4" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="97" x="-4.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="98" x="-5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="99" x="-5.5" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<smd name="100" x="-6" y="7.6962" dx="0.1778" dy="1.1684" layer="1" rot="R180"/>
<wire x1="-7.1628" y1="-7.1628" x2="-6.4262" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="-7.1628" x2="7.1628" y2="-6.4262" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="7.1628" x2="6.4262" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="7.1628" x2="-7.1628" y2="6.4262" width="0.1524" layer="21"/>
<wire x1="-7.1628" y1="-6.4262" x2="-7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="6.4262" y1="-7.1628" x2="7.1628" y2="-7.1628" width="0.1524" layer="21"/>
<wire x1="7.1628" y1="6.4262" x2="7.1628" y2="7.1628" width="0.1524" layer="21"/>
<wire x1="-6.4262" y1="7.1628" x2="-7.1628" y2="7.1628" width="0.1524" layer="21"/>
<polygon width="0.0254" layer="21">
<vertex x="-8.7884" y="1.6905"/>
<vertex x="-8.7884" y="1.3095"/>
<vertex x="-8.5344" y="1.3095"/>
<vertex x="-8.5344" y="1.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-8.7884" y="-3.3095"/>
<vertex x="-8.7884" y="-3.6905"/>
<vertex x="-8.5344" y="-3.6905"/>
<vertex x="-8.5344" y="-3.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-4.1905" y="-8.5344"/>
<vertex x="-4.1905" y="-8.7884"/>
<vertex x="-3.8095" y="-8.7884"/>
<vertex x="-3.8095" y="-8.5344"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="0.8095" y="-8.5344"/>
<vertex x="0.8095" y="-8.7884"/>
<vertex x="1.1905" y="-8.7884"/>
<vertex x="1.1905" y="-8.5344"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="5.8095" y="-8.5344"/>
<vertex x="5.8095" y="-8.7884"/>
<vertex x="6.1905" y="-8.7884"/>
<vertex x="6.1905" y="-8.5344"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.7884" y="-1.3095"/>
<vertex x="8.7884" y="-1.6905"/>
<vertex x="8.5344" y="-1.6905"/>
<vertex x="8.5344" y="-1.3095"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="8.7884" y="3.6905"/>
<vertex x="8.7884" y="3.3095"/>
<vertex x="8.5344" y="3.3095"/>
<vertex x="8.5344" y="3.6905"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="3.8095" y="8.5344"/>
<vertex x="3.8095" y="8.7884"/>
<vertex x="4.1905" y="8.7884"/>
<vertex x="4.1905" y="8.5344"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-1.1905" y="8.5344"/>
<vertex x="-1.1905" y="8.7884"/>
<vertex x="-0.8095" y="8.7884"/>
<vertex x="-0.8095" y="8.5344"/>
</polygon>
<polygon width="0.0254" layer="21">
<vertex x="-6.1905" y="8.5344"/>
<vertex x="-6.1905" y="8.7884"/>
<vertex x="-5.8095" y="8.7884"/>
<vertex x="-5.8095" y="8.5344"/>
</polygon>
<text x="-9.4996" y="5.9944" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-7.1628" y1="-7.1628" x2="-7.1628" y2="-6.1976" width="0.1524" layer="39"/>
<wire x1="-7.1628" y1="-6.1976" x2="-8.382" y2="-6.1976" width="0.1524" layer="39"/>
<wire x1="-8.382" y1="-6.1976" x2="-8.382" y2="6.1976" width="0.1524" layer="39"/>
<wire x1="-8.382" y1="6.1976" x2="-7.1628" y2="6.1976" width="0.1524" layer="39"/>
<wire x1="-7.1628" y1="6.1976" x2="-7.1628" y2="7.1628" width="0.1524" layer="39"/>
<wire x1="7.1628" y1="-7.1628" x2="7.1628" y2="-6.1976" width="0.1524" layer="39"/>
<wire x1="7.1628" y1="-6.1976" x2="8.382" y2="-6.1976" width="0.1524" layer="39"/>
<wire x1="8.382" y1="-6.1976" x2="8.382" y2="6.1976" width="0.1524" layer="39"/>
<wire x1="8.382" y1="6.1976" x2="7.1628" y2="6.1976" width="0.1524" layer="39"/>
<wire x1="7.1628" y1="6.1976" x2="7.1628" y2="7.1628" width="0.1524" layer="39"/>
<wire x1="-7.1628" y1="7.1628" x2="-6.1976" y2="7.1628" width="0.1524" layer="39"/>
<wire x1="-6.1976" y1="7.1628" x2="-6.1976" y2="8.382" width="0.1524" layer="39"/>
<wire x1="-6.1976" y1="8.382" x2="6.1976" y2="8.382" width="0.1524" layer="39"/>
<wire x1="6.1976" y1="8.382" x2="6.1976" y2="7.1628" width="0.1524" layer="39"/>
<wire x1="6.1976" y1="7.1628" x2="7.1628" y2="7.1628" width="0.1524" layer="39"/>
<wire x1="-7.1628" y1="-7.1628" x2="-6.1976" y2="-7.1628" width="0.1524" layer="39"/>
<wire x1="-6.1976" y1="-7.1628" x2="-6.1976" y2="-8.382" width="0.1524" layer="39"/>
<wire x1="-6.1976" y1="-8.382" x2="6.1976" y2="-8.382" width="0.1524" layer="39"/>
<wire x1="6.1976" y1="-8.382" x2="6.1976" y2="-7.1628" width="0.1524" layer="39"/>
<wire x1="6.1976" y1="-7.1628" x2="7.1628" y2="-7.1628" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-7.1501" y="-7.1501"/>
<vertex x="-7.1501" y="-6.1905"/>
<vertex x="-8.382" y="-6.1905"/>
<vertex x="-8.382" y="6.1905"/>
<vertex x="-7.1501" y="6.1905"/>
<vertex x="-7.1501" y="7.1501"/>
<vertex x="-6.1905" y="7.1501"/>
<vertex x="-6.1905" y="8.382"/>
<vertex x="6.1905" y="8.382"/>
<vertex x="6.1905" y="7.1501"/>
<vertex x="7.1501" y="7.1501"/>
<vertex x="7.1501" y="6.1905"/>
<vertex x="8.382" y="6.1905"/>
<vertex x="8.382" y="-6.1905"/>
<vertex x="7.1501" y="-6.1905"/>
<vertex x="7.1501" y="-7.1501"/>
<vertex x="6.1905" y="-7.1501"/>
<vertex x="6.1905" y="-8.382"/>
<vertex x="-6.1905" y="-8.382"/>
<vertex x="-6.1905" y="-7.1501"/>
</polygon>
<wire x1="5.8674" y1="7.0612" x2="6.1468" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="7.0612" x2="6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="8.128" x2="5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="8.128" x2="5.8674" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="7.0612" x2="5.6388" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="7.0612" x2="5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="8.128" x2="5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="8.128" x2="5.3594" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="7.0358" x2="5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="7.0358" x2="5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="8.128" x2="4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="8.128" x2="4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="7.0358" x2="4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="7.0358" x2="4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="8.128" x2="4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="8.128" x2="4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="7.0358" x2="4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="7.0358" x2="4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="8.128" x2="3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="8.128" x2="3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="7.0358" x2="3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="7.0358" x2="3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="8.128" x2="3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="8.128" x2="3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="7.0358" x2="3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="7.0358" x2="3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="8.128" x2="2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="8.128" x2="2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="7.0358" x2="2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="7.0358" x2="2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="8.128" x2="2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="8.128" x2="2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="7.0358" x2="2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="7.0358" x2="2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="8.128" x2="1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="8.128" x2="1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="7.0358" x2="1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.651" y1="7.0358" x2="1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="8.128" x2="1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="8.128" x2="1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="7.0358" x2="1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="1.143" y1="7.0358" x2="1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="8.128" x2="0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="8.128" x2="0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="7.0358" x2="0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.635" y1="7.0358" x2="0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="8.128" x2="0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="8.128" x2="0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="7.0358" x2="0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="7.0358" x2="0.127" y2="8.128" width="0.1524" layer="51"/>
<wire x1="0.127" y1="8.128" x2="-0.1524" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="8.128" x2="-0.1524" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="7.0358" x2="-0.3556" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="7.0358" x2="-0.3556" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="8.128" x2="-0.635" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="8.128" x2="-0.635" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="7.0358" x2="-0.8636" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="7.0358" x2="-0.8636" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="8.128" x2="-1.143" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="8.128" x2="-1.143" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="7.0358" x2="-1.3716" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="7.0358" x2="-1.3716" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="8.128" x2="-1.651" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="8.128" x2="-1.651" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="7.0358" x2="-1.8542" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="7.0358" x2="-1.8542" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="8.128" x2="-2.1336" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="8.128" x2="-2.1336" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="7.0358" x2="-2.3622" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="7.0358" x2="-2.3622" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="8.128" x2="-2.6416" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="8.128" x2="-2.6416" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="7.0358" x2="-2.8702" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="7.0358" x2="-2.8702" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="8.128" x2="-3.1496" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="8.128" x2="-3.1496" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="7.0358" x2="-3.3528" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="7.0358" x2="-3.3528" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="8.128" x2="-3.6322" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="8.128" x2="-3.6322" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="7.0358" x2="-3.8608" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="7.0358" x2="-3.8608" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="8.128" x2="-4.1402" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="8.128" x2="-4.1402" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="7.0358" x2="-4.3688" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="7.0358" x2="-4.3688" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="8.128" x2="-4.6482" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="8.128" x2="-4.6482" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="7.0358" x2="-4.8514" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="7.0358" x2="-4.8514" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="8.128" x2="-5.1308" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="8.128" x2="-5.1308" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="7.0358" x2="-5.3594" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="7.0358" x2="-5.3594" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="8.128" x2="-5.6388" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="8.128" x2="-5.6388" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="7.0358" x2="-5.8674" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="7.0358" x2="-5.8674" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="8.128" x2="-6.1468" y2="8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="8.128" x2="-6.1468" y2="7.0358" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.8674" x2="-7.0612" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="6.1468" x2="-8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="6.1468" x2="-8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.8674" x2="-7.0612" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.3594" x2="-7.0612" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.6388" x2="-8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.6388" x2="-8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.3594" x2="-7.0612" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="4.8514" x2="-7.0612" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.1308" x2="-8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="5.1308" x2="-8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.8514" x2="-7.0612" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.3688" x2="-7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.6482" x2="-8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.6482" x2="-8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.3688" x2="-7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.8608" x2="-7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="4.1402" x2="-8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="4.1402" x2="-8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.8608" x2="-7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.3528" x2="-7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.6322" x2="-8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.6322" x2="-8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.3528" x2="-7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.8702" x2="-7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="3.1496" x2="-8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="3.1496" x2="-8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.8702" x2="-7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.3622" x2="-7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.6416" x2="-8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.6416" x2="-8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.3622" x2="-7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.8542" x2="-7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="2.1336" x2="-8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="2.1336" x2="-8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.8542" x2="-7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.3716" x2="-7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.651" x2="-8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.651" x2="-8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.3716" x2="-7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.8636" x2="-7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="1.143" x2="-8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="1.143" x2="-8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.8636" x2="-7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.3556" x2="-7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.635" x2="-8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.635" x2="-8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.3556" x2="-7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.1524" x2="-7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="0.1524" x2="-8.128" y2="0.127" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="0.127" x2="-8.128" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.1524" x2="-7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.635" x2="-7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.3556" x2="-8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.3556" x2="-8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.635" x2="-7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.143" x2="-7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-0.8636" x2="-8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-0.8636" x2="-8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.143" x2="-7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.651" x2="-7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.3716" x2="-8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.3716" x2="-8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.651" x2="-7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.1336" x2="-7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-1.8542" x2="-8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-1.8542" x2="-8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.1336" x2="-7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.6416" x2="-7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.3622" x2="-8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.3622" x2="-8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.6416" x2="-7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.1496" x2="-7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-2.8702" x2="-8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-2.8702" x2="-8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.1496" x2="-7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.6322" x2="-7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.3528" x2="-8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.3528" x2="-8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.6322" x2="-7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.1402" x2="-7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-3.8608" x2="-8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-3.8608" x2="-8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.1402" x2="-7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.6482" x2="-7.0358" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.3688" x2="-8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.3688" x2="-8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.6482" x2="-7.0358" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.1308" x2="-7.0358" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-4.8514" x2="-8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-4.8514" x2="-8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.1308" x2="-7.0358" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.6388" x2="-7.0358" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.3594" x2="-8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.3594" x2="-8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.6388" x2="-7.0358" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-6.1468" x2="-7.0358" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-7.0358" y1="-5.8674" x2="-8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-5.8674" x2="-8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-8.128" y1="-6.1468" x2="-7.0358" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-7.0612" x2="-6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-7.0612" x2="-6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-6.1468" y1="-8.128" x2="-5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.8674" y1="-8.128" x2="-5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-7.0612" x2="-5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-7.0612" x2="-5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.6388" y1="-8.128" x2="-5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.3594" y1="-8.128" x2="-5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-7.0612" x2="-5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-7.0612" x2="-5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-5.1308" y1="-8.128" x2="-4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.8514" y1="-8.128" x2="-4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-7.0612" x2="-4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-7.0612" x2="-4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.6482" y1="-8.128" x2="-4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.3688" y1="-8.128" x2="-4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-7.0612" x2="-4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-7.0612" x2="-4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-4.1402" y1="-8.128" x2="-3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.8608" y1="-8.128" x2="-3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-7.0612" x2="-3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-7.0612" x2="-3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.6322" y1="-8.128" x2="-3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.3528" y1="-8.128" x2="-3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-7.0612" x2="-3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-7.0612" x2="-3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-3.1496" y1="-8.128" x2="-2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.8702" y1="-8.128" x2="-2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-7.0612" x2="-2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-7.0612" x2="-2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.6416" y1="-8.128" x2="-2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.3622" y1="-8.128" x2="-2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-7.0612" x2="-2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-7.0612" x2="-2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-2.1336" y1="-8.128" x2="-1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.8542" y1="-8.128" x2="-1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-7.0612" x2="-1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-7.0612" x2="-1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.651" y1="-8.128" x2="-1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.3716" y1="-8.128" x2="-1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-7.0612" x2="-1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-7.0612" x2="-1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-1.143" y1="-8.128" x2="-0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.8636" y1="-8.128" x2="-0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-7.0612" x2="-0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-7.0612" x2="-0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.635" y1="-8.128" x2="-0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.3556" y1="-8.128" x2="-0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-7.0612" x2="-0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="-0.1524" y1="-7.0612" x2="-0.127" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="-0.127" y1="-8.128" x2="0.1524" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.1524" y1="-8.128" x2="0.1524" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-7.0612" x2="0.3556" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-7.0612" x2="0.3556" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.3556" y1="-8.128" x2="0.635" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.635" y1="-8.128" x2="0.635" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-7.0612" x2="0.8636" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-7.0612" x2="0.8636" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="0.8636" y1="-8.128" x2="1.143" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.143" y1="-8.128" x2="1.143" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-7.0612" x2="1.3716" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-7.0612" x2="1.3716" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.3716" y1="-8.128" x2="1.651" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.651" y1="-8.128" x2="1.651" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-7.0612" x2="1.8542" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-7.0612" x2="1.8542" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="1.8542" y1="-8.128" x2="2.1336" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.1336" y1="-8.128" x2="2.1336" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-7.0612" x2="2.3622" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-7.0612" x2="2.3622" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.3622" y1="-8.128" x2="2.6416" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.6416" y1="-8.128" x2="2.6416" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-7.0612" x2="2.8702" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-7.0612" x2="2.8702" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="2.8702" y1="-8.128" x2="3.1496" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.1496" y1="-8.128" x2="3.1496" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-7.0612" x2="3.3528" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-7.0612" x2="3.3528" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.3528" y1="-8.128" x2="3.6322" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.6322" y1="-8.128" x2="3.6322" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-7.0612" x2="3.8608" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-7.0612" x2="3.8608" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="3.8608" y1="-8.128" x2="4.1402" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.1402" y1="-8.128" x2="4.1402" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-7.0612" x2="4.3688" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-7.0612" x2="4.3688" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.3688" y1="-8.128" x2="4.6482" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.6482" y1="-8.128" x2="4.6482" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-7.0612" x2="4.8514" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-7.0612" x2="4.8514" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="4.8514" y1="-8.128" x2="5.1308" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.1308" y1="-8.128" x2="5.1308" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-7.0612" x2="5.3594" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-7.0612" x2="5.3594" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.3594" y1="-8.128" x2="5.6388" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.6388" y1="-8.128" x2="5.6388" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-7.0612" x2="5.8674" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-7.0612" x2="5.8674" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="5.8674" y1="-8.128" x2="6.1468" y2="-8.128" width="0.1524" layer="51"/>
<wire x1="6.1468" y1="-8.128" x2="6.1468" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.8674" x2="7.0612" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-6.1468" x2="8.128" y2="-6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-6.1468" x2="8.128" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.8674" x2="7.0612" y2="-5.8674" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.3594" x2="7.0612" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.6388" x2="8.128" y2="-5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.6388" x2="8.128" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.3594" x2="7.0612" y2="-5.3594" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.8514" x2="7.0612" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-5.1308" x2="8.128" y2="-5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-5.1308" x2="8.128" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.8514" x2="7.0612" y2="-4.8514" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.3688" x2="7.0612" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-4.6482" x2="8.128" y2="-4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.6482" x2="8.128" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.3688" x2="7.0612" y2="-4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.8608" x2="7.0358" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-4.1402" x2="8.128" y2="-4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-4.1402" x2="8.128" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.8608" x2="7.0358" y2="-3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.3528" x2="7.0358" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.6322" x2="8.128" y2="-3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.6322" x2="8.128" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.3528" x2="7.0358" y2="-3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.8702" x2="7.0358" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-3.1496" x2="8.128" y2="-3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-3.1496" x2="8.128" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.8702" x2="7.0358" y2="-2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.3622" x2="7.0358" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.6416" x2="8.128" y2="-2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.6416" x2="8.128" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.3622" x2="7.0358" y2="-2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.8542" x2="7.0358" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-2.1336" x2="8.128" y2="-2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-2.1336" x2="8.128" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.8542" x2="7.0358" y2="-1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.3716" x2="7.0358" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.651" x2="8.128" y2="-1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.651" x2="8.128" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.3716" x2="7.0358" y2="-1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.8636" x2="7.0358" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-1.143" x2="8.128" y2="-1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-1.143" x2="8.128" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.8636" x2="7.0358" y2="-0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.3556" x2="7.0358" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.635" x2="8.128" y2="-0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.635" x2="8.128" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.3556" x2="7.0358" y2="-0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.1524" x2="7.0358" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="-0.1524" x2="8.128" y2="-0.127" width="0.1524" layer="51"/>
<wire x1="8.128" y1="-0.127" x2="8.128" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.1524" x2="7.0358" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.635" x2="7.0358" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.3556" x2="8.128" y2="0.3556" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.3556" x2="8.128" y2="0.635" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.635" x2="7.0358" y2="0.635" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.143" x2="7.0358" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="0.8636" x2="8.128" y2="0.8636" width="0.1524" layer="51"/>
<wire x1="8.128" y1="0.8636" x2="8.128" y2="1.143" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.143" x2="7.0358" y2="1.143" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.651" x2="7.0358" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.3716" x2="8.128" y2="1.3716" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.3716" x2="8.128" y2="1.651" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.651" x2="7.0358" y2="1.651" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.1336" x2="7.0358" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="1.8542" x2="8.128" y2="1.8542" width="0.1524" layer="51"/>
<wire x1="8.128" y1="1.8542" x2="8.128" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.1336" x2="7.0358" y2="2.1336" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.6416" x2="7.0358" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.3622" x2="8.128" y2="2.3622" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.3622" x2="8.128" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.6416" x2="7.0358" y2="2.6416" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.1496" x2="7.0358" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="2.8702" x2="8.128" y2="2.8702" width="0.1524" layer="51"/>
<wire x1="8.128" y1="2.8702" x2="8.128" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.1496" x2="7.0358" y2="3.1496" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.6322" x2="7.0358" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.3528" x2="8.128" y2="3.3528" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.3528" x2="8.128" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.6322" x2="7.0358" y2="3.6322" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.1402" x2="7.0358" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="3.8608" x2="8.128" y2="3.8608" width="0.1524" layer="51"/>
<wire x1="8.128" y1="3.8608" x2="8.128" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.1402" x2="7.0358" y2="4.1402" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.6482" x2="7.0358" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.3688" x2="8.128" y2="4.3688" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.3688" x2="8.128" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.6482" x2="7.0358" y2="4.6482" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.1308" x2="7.0358" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="4.8514" x2="8.128" y2="4.8514" width="0.1524" layer="51"/>
<wire x1="8.128" y1="4.8514" x2="8.128" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.1308" x2="7.0358" y2="5.1308" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.6388" x2="7.0358" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.3594" x2="8.128" y2="5.3594" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.3594" x2="8.128" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.6388" x2="7.0358" y2="5.6388" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="6.1468" x2="7.0358" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="7.0358" y1="5.8674" x2="8.128" y2="5.8674" width="0.1524" layer="51"/>
<wire x1="8.128" y1="5.8674" x2="8.128" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="8.128" y1="6.1468" x2="7.0358" y2="6.1468" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="5.7912" x2="-5.7912" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="-7.0612" x2="7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="-7.0612" x2="7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="7.0612" y1="7.0612" x2="-7.0612" y2="7.0612" width="0.1524" layer="51"/>
<wire x1="-7.0612" y1="7.0612" x2="-7.0612" y2="-7.0612" width="0.1524" layer="51"/>
<text x="-7.239" y="5.6134" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="HRS-1B-14-GA">
<description>2057-HRS-1B-14-GA-ND</description>
<pad name="1" x="-8.255" y="0" drill="0.7" diameter="0.8128"/>
<pad name="2" x="-6.985" y="0" drill="0.7" diameter="0.8128"/>
<pad name="3" x="-5.715" y="0" drill="0.7" diameter="0.8128"/>
<pad name="4" x="-4.445" y="0" drill="0.7" diameter="0.8128"/>
<pad name="5" x="-3.175" y="0" drill="0.7" diameter="0.8128"/>
<pad name="6" x="-1.905" y="0" drill="0.7" diameter="0.8128"/>
<pad name="7" x="-0.635" y="0" drill="0.7" diameter="0.8128"/>
<pad name="8" x="0.635" y="0" drill="0.7" diameter="0.8128"/>
<pad name="9" x="1.905" y="0" drill="0.7" diameter="0.8128"/>
<pad name="10" x="3.175" y="0" drill="0.7" diameter="0.8128"/>
<pad name="11" x="4.445" y="0" drill="0.7" diameter="0.8128"/>
<pad name="12" x="5.715" y="0" drill="0.7" diameter="0.8128"/>
<pad name="13" x="6.985" y="0" drill="0.7" diameter="0.8128"/>
<pad name="14" x="8.255" y="0" drill="0.7" diameter="0.8128"/>
<wire x1="-8.89" y1="0.635" x2="-8.89" y2="-0.635" width="0.127" layer="51"/>
<wire x1="-8.89" y1="-0.635" x2="8.89" y2="-0.635" width="0.127" layer="51"/>
<wire x1="8.89" y1="-0.635" x2="8.89" y2="0.635" width="0.127" layer="51"/>
<wire x1="8.89" y1="0.635" x2="-8.89" y2="0.635" width="0.127" layer="51"/>
<text x="-8.89" y="1.27" size="1" layer="21">1</text>
<text x="-7.62" y="1.27" size="1" layer="25">&gt;NAME</text>
<text x="-8.89" y="-1.905" size="1" layer="27">&gt;VALUE</text>
<text x="7.62" y="1.27" size="1" layer="21">14</text>
</package>
<package name="PPTC201LFBN-RC">
<pad name="1" x="-24.13" y="0" drill="1.27" diameter="1.4224"/>
<pad name="2" x="-21.59" y="0" drill="1.27" diameter="1.4224"/>
<pad name="3" x="-19.05" y="0" drill="1.27" diameter="1.4224"/>
<pad name="4" x="-16.51" y="0" drill="1.27" diameter="1.4224"/>
<pad name="5" x="-13.97" y="0" drill="1.27" diameter="1.4224"/>
<pad name="6" x="-11.43" y="0" drill="1.27" diameter="1.4224"/>
<pad name="7" x="-8.89" y="0" drill="1.27" diameter="1.4224"/>
<pad name="8" x="-6.35" y="0" drill="1.27" diameter="1.4224"/>
<pad name="9" x="-3.81" y="0" drill="1.27" diameter="1.4224"/>
<pad name="10" x="-1.27" y="0" drill="1.27" diameter="1.4224"/>
<pad name="11" x="1.27" y="0" drill="1.27" diameter="1.4224"/>
<pad name="12" x="3.81" y="0" drill="1.27" diameter="1.4224"/>
<pad name="13" x="6.35" y="0" drill="1.27" diameter="1.4224"/>
<pad name="14" x="8.89" y="0" drill="1.27" diameter="1.4224"/>
<pad name="15" x="11.43" y="0" drill="1.27" diameter="1.4224"/>
<pad name="16" x="13.97" y="0" drill="1.27" diameter="1.4224"/>
<pad name="17" x="16.51" y="0" drill="1.27" diameter="1.4224"/>
<pad name="18" x="19.05" y="0" drill="1.27" diameter="1.4224"/>
<pad name="19" x="21.59" y="0" drill="1.27" diameter="1.4224"/>
<pad name="20" x="24.13" y="0" drill="1.27" diameter="1.4224"/>
<wire x1="-25.4" y1="1.27" x2="-25.4" y2="-1.27" width="0.127" layer="51"/>
<wire x1="-25.4" y1="-1.27" x2="25.4" y2="-1.27" width="0.127" layer="51"/>
<wire x1="25.4" y1="-1.27" x2="25.4" y2="1.27" width="0.127" layer="51"/>
<wire x1="25.4" y1="1.27" x2="-25.4" y2="1.27" width="0.127" layer="51"/>
<text x="-25" y="2" size="1" layer="21">1</text>
<text x="24" y="2" size="1" layer="21">20</text>
<text x="-23" y="2" size="1" layer="25">&gt;NAME</text>
<text x="-25" y="-3" size="1" layer="27">&gt;VALUE</text>
</package>
<package name="SC-70_C5">
<smd name="1" x="-1.0414" y="0.65" dx="1.016" dy="0.3556" layer="1"/>
<smd name="2" x="-1.0414" y="0" dx="1.016" dy="0.3556" layer="1"/>
<smd name="3" x="-1.0414" y="-0.65" dx="1.016" dy="0.3556" layer="1"/>
<smd name="4" x="1.0414" y="-0.65" dx="1.016" dy="0.3556" layer="1"/>
<smd name="5" x="1.0414" y="0.65" dx="1.016" dy="0.3556" layer="1"/>
<wire x1="-0.6604" y1="0.508" x2="-0.6858" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.8128" x2="-1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.8128" x2="-1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.508" x2="-0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.1524" x2="-0.6858" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.1524" x2="-1.1938" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.1524" x2="-1.1938" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.1524" x2="-0.6604" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.8128" x2="-0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.508" x2="-1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.508" x2="-1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.8128" x2="-0.6604" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-0.508" x2="0.6858" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.8128" x2="1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.8128" x2="1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.508" x2="0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.8128" x2="0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.508" x2="1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.508" x2="1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.8128" x2="0.6604" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-1.1176" x2="0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-1.1176" x2="0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="1.1176" x2="0.3048" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="1.1176" x2="-0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.3048" y2="1.0922" width="0.1524" layer="51" curve="-180"/>
<text x="-0.9906" y="-0.2032" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.9144" y1="-1.3716" x2="-0.9144" y2="-1.0414" width="0.1524" layer="39"/>
<wire x1="-0.9144" y1="-1.0414" x2="-1.7018" y2="-1.0414" width="0.1524" layer="39"/>
<wire x1="-1.7018" y1="-1.0414" x2="-1.7018" y2="1.0414" width="0.1524" layer="39"/>
<wire x1="-1.7018" y1="1.0414" x2="-0.9144" y2="1.0414" width="0.1524" layer="39"/>
<wire x1="-0.9144" y1="1.0414" x2="-0.9144" y2="1.3716" width="0.1524" layer="39"/>
<wire x1="-0.9144" y1="1.3716" x2="0.9144" y2="1.3716" width="0.1524" layer="39"/>
<wire x1="0.9144" y1="1.3716" x2="0.9144" y2="1.0414" width="0.1524" layer="39"/>
<wire x1="0.9144" y1="1.0414" x2="1.7018" y2="1.0414" width="0.1524" layer="39"/>
<wire x1="1.7018" y1="1.0414" x2="1.7018" y2="-1.0414" width="0.1524" layer="39"/>
<wire x1="1.7018" y1="-1.0414" x2="0.9144" y2="-1.0414" width="0.1524" layer="39"/>
<wire x1="0.9144" y1="-1.0414" x2="0.9144" y2="-1.3716" width="0.1524" layer="39"/>
<wire x1="0.9144" y1="-1.3716" x2="-0.9144" y2="-1.3716" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-0.9271" y="-1.3589"/>
<vertex x="-0.9271" y="-1.031"/>
<vertex x="-1.7018" y="-1.031"/>
<vertex x="-1.7018" y="1.031"/>
<vertex x="-0.9271" y="1.031"/>
<vertex x="-0.9271" y="1.3589"/>
<vertex x="0.9271" y="1.3589"/>
<vertex x="0.9271" y="1.031"/>
<vertex x="1.7018" y="1.031"/>
<vertex x="1.7018" y="-1.031"/>
<vertex x="0.9271" y="-1.031"/>
<vertex x="0.9271" y="-1.3589"/>
</polygon>
<wire x1="-0.8128" y1="-1.2192" x2="0.8128" y2="-1.2192" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="-0.127" x2="0.8128" y2="0.127" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="1.2192" x2="-0.8128" y2="1.2192" width="0.1524" layer="21"/>
<text x="-1.8796" y="0.889" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="SC-70_C5-M">
<smd name="1" x="-1.0922" y="0.65" dx="1.3208" dy="0.4064" layer="1"/>
<smd name="2" x="-1.0922" y="0" dx="1.3208" dy="0.4064" layer="1"/>
<smd name="3" x="-1.0922" y="-0.65" dx="1.3208" dy="0.4064" layer="1"/>
<smd name="4" x="1.0922" y="-0.65" dx="1.3208" dy="0.4064" layer="1"/>
<smd name="5" x="1.0922" y="0.65" dx="1.3208" dy="0.4064" layer="1"/>
<wire x1="-0.6604" y1="0.508" x2="-0.6858" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.8128" x2="-1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.8128" x2="-1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.508" x2="-0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.1524" x2="-0.6858" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.1524" x2="-1.1938" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.1524" x2="-1.1938" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.1524" x2="-0.6604" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.8128" x2="-0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.508" x2="-1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.508" x2="-1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.8128" x2="-0.6604" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-0.508" x2="0.6858" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.8128" x2="1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.8128" x2="1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.508" x2="0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.8128" x2="0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.508" x2="1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.508" x2="1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.8128" x2="0.6604" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-1.1176" x2="0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-1.1176" x2="0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="1.1176" x2="0.3048" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="1.1176" x2="-0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.3048" y2="1.0922" width="0.1524" layer="51" curve="-180"/>
<text x="-0.9906" y="-0.1524" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-1.1684" y1="-1.6256" x2="-1.1684" y2="-1.4224" width="0.1524" layer="39"/>
<wire x1="-1.1684" y1="-1.4224" x2="-2.2098" y2="-1.4224" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="-1.4224" x2="-2.2098" y2="1.4224" width="0.1524" layer="39"/>
<wire x1="-2.2098" y1="1.4224" x2="-1.1684" y2="1.4224" width="0.1524" layer="39"/>
<wire x1="-1.1684" y1="1.4224" x2="-1.1684" y2="1.6256" width="0.1524" layer="39"/>
<wire x1="-1.1684" y1="1.6256" x2="1.1684" y2="1.6256" width="0.1524" layer="39"/>
<wire x1="1.1684" y1="1.6256" x2="1.1684" y2="1.4224" width="0.1524" layer="39"/>
<wire x1="1.1684" y1="1.4224" x2="2.2098" y2="1.4224" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="1.4224" x2="2.2098" y2="-1.4224" width="0.1524" layer="39"/>
<wire x1="2.2098" y1="-1.4224" x2="1.1684" y2="-1.4224" width="0.1524" layer="39"/>
<wire x1="1.1684" y1="-1.4224" x2="1.1684" y2="-1.6256" width="0.1524" layer="39"/>
<wire x1="1.1684" y1="-1.6256" x2="-1.1684" y2="-1.6256" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-1.1811" y="-1.6129"/>
<vertex x="-1.1811" y="-1.412"/>
<vertex x="-2.2098" y="-1.412"/>
<vertex x="-2.2098" y="1.412"/>
<vertex x="-1.1811" y="1.412"/>
<vertex x="-1.1811" y="1.6129"/>
<vertex x="1.1811" y="1.6129"/>
<vertex x="1.1811" y="1.412"/>
<vertex x="2.2098" y="1.412"/>
<vertex x="2.2098" y="-1.412"/>
<vertex x="1.1811" y="-1.412"/>
<vertex x="1.1811" y="-1.6129"/>
</polygon>
<wire x1="-0.8128" y1="-1.2192" x2="0.8128" y2="-1.2192" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="-0.1016" x2="0.8128" y2="0.1016" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="1.2192" x2="-0.8128" y2="1.2192" width="0.1524" layer="21"/>
<text x="-1.9304" y="0.9398" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
<package name="SC-70_C5-L">
<smd name="1" x="-0.9906" y="0.65" dx="0.7112" dy="0.3048" layer="1"/>
<smd name="2" x="-0.9906" y="0" dx="0.7112" dy="0.3048" layer="1"/>
<smd name="3" x="-0.9906" y="-0.65" dx="0.7112" dy="0.3048" layer="1"/>
<smd name="4" x="0.9906" y="-0.65" dx="0.7112" dy="0.3048" layer="1"/>
<smd name="5" x="0.9906" y="0.65" dx="0.7112" dy="0.3048" layer="1"/>
<wire x1="-0.6604" y1="0.508" x2="-0.6858" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.8128" x2="-1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.8128" x2="-1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.508" x2="-0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.1524" x2="-0.6858" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6858" y1="0.1524" x2="-1.1938" y2="0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="0.1524" x2="-1.1938" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.1524" x2="-0.6604" y2="-0.1524" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.8128" x2="-0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-0.508" x2="-1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.508" x2="-1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="-1.1938" y1="-0.8128" x2="-0.6604" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-0.508" x2="0.6858" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="0.6858" y1="-0.8128" x2="1.1938" y2="-0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.8128" x2="1.1938" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="-0.508" x2="0.6604" y2="-0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.8128" x2="0.6604" y2="0.508" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="0.508" x2="1.1938" y2="0.508" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.508" x2="1.1938" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="1.1938" y1="0.8128" x2="0.6604" y2="0.8128" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="-1.1176" x2="0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="-1.1176" x2="0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.6604" y1="1.1176" x2="0.3048" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.6604" y2="1.1176" width="0.1524" layer="51"/>
<wire x1="-0.6604" y1="1.1176" x2="-0.6604" y2="-1.1176" width="0.1524" layer="51"/>
<wire x1="0.3048" y1="1.1176" x2="-0.3048" y2="1.0922" width="0.1524" layer="51" curve="-180"/>
<text x="-0.9906" y="-0.254" size="1.27" layer="51" ratio="6" rot="SR0">*</text>
<wire x1="-0.762" y1="-1.2192" x2="-0.762" y2="-0.8128" width="0.1524" layer="39"/>
<wire x1="-0.762" y1="-0.8128" x2="-1.397" y2="-0.8128" width="0.1524" layer="39"/>
<wire x1="-1.397" y1="-0.8128" x2="-1.397" y2="0.8128" width="0.1524" layer="39"/>
<wire x1="-1.397" y1="0.8128" x2="-0.762" y2="0.8128" width="0.1524" layer="39"/>
<wire x1="-0.762" y1="0.8128" x2="-0.762" y2="1.2192" width="0.1524" layer="39"/>
<wire x1="-0.762" y1="1.2192" x2="0.762" y2="1.2192" width="0.1524" layer="39"/>
<wire x1="0.762" y1="1.2192" x2="0.762" y2="0.8128" width="0.1524" layer="39"/>
<wire x1="0.762" y1="0.8128" x2="1.397" y2="0.8128" width="0.1524" layer="39"/>
<wire x1="1.397" y1="0.8128" x2="1.397" y2="-0.8128" width="0.1524" layer="39"/>
<wire x1="1.397" y1="-0.8128" x2="0.762" y2="-0.8128" width="0.1524" layer="39"/>
<wire x1="0.762" y1="-0.8128" x2="0.762" y2="-1.2192" width="0.1524" layer="39"/>
<wire x1="0.762" y1="-1.2192" x2="-0.762" y2="-1.2192" width="0.1524" layer="39"/>
<polygon width="0.1524" layer="39">
<vertex x="-0.7747" y="-1.2065"/>
<vertex x="-0.7747" y="-0.8024"/>
<vertex x="-1.397" y="-0.8024"/>
<vertex x="-1.397" y="0.8024"/>
<vertex x="-0.7747" y="0.8024"/>
<vertex x="-0.7747" y="1.2065"/>
<vertex x="0.7747" y="1.2065"/>
<vertex x="0.7747" y="0.8024"/>
<vertex x="1.397" y="0.8024"/>
<vertex x="1.397" y="-0.8024"/>
<vertex x="0.7747" y="-0.8024"/>
<vertex x="0.7747" y="-1.2065"/>
</polygon>
<wire x1="-0.8128" y1="-1.2192" x2="0.8128" y2="-1.2192" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="-0.1524" x2="0.8128" y2="0.1524" width="0.1524" layer="21"/>
<wire x1="0.8128" y1="1.2192" x2="-0.8128" y2="1.2192" width="0.1524" layer="21"/>
<text x="-1.8288" y="0.8382" size="1.27" layer="21" ratio="6" rot="SR0">*</text>
<wire x1="-0.254" y1="0" x2="0.254" y2="0" width="0.1524" layer="23"/>
<wire x1="0" y1="-0.254" x2="0" y2="0.254" width="0.1524" layer="23"/>
<text x="-3.2766" y="-0.635" size="1.27" layer="25" ratio="6" rot="SR0">&gt;Name</text>
</package>
</packages>
<symbols>
<symbol name="ATMEGA2560-16AU">
<pin name="(OC0B)_PG5" x="2.54" y="0" length="middle"/>
<pin name="(RXD0/PCINT8)_PE0" x="2.54" y="-2.54" length="middle"/>
<pin name="(TXD0)_PE1" x="2.54" y="-5.08" length="middle"/>
<pin name="(XCK0/AIN0)_PE2" x="2.54" y="-7.62" length="middle"/>
<pin name="(OC3A/AIN1)_PE3" x="2.54" y="-10.16" length="middle"/>
<pin name="(OC3B/INT4)_PE4" x="2.54" y="-12.7" length="middle"/>
<pin name="(OC3C/INT5)_PE5" x="2.54" y="-15.24" length="middle"/>
<pin name="(T3/INT6)_PE6" x="2.54" y="-17.78" length="middle"/>
<pin name="(CLKO/ICP3/INT7)_PE7" x="2.54" y="-20.32" length="middle"/>
<pin name="VCC_2" x="2.54" y="-22.86" length="middle" direction="pwr"/>
<pin name="GND_2" x="2.54" y="-25.4" length="middle" direction="pwr"/>
<pin name="(RXD2)_PH0" x="2.54" y="-27.94" length="middle"/>
<pin name="(TXD2)_PH1" x="2.54" y="-30.48" length="middle"/>
<pin name="(XCK2)_PH2" x="2.54" y="-33.02" length="middle"/>
<pin name="(OC4A)_PH3" x="2.54" y="-35.56" length="middle"/>
<pin name="(OC4B)_PH4" x="2.54" y="-38.1" length="middle"/>
<pin name="(OC4C)_PH5" x="2.54" y="-40.64" length="middle"/>
<pin name="(OC2B)_PH6" x="2.54" y="-43.18" length="middle"/>
<pin name="(SS/PCINT0)_PB0" x="2.54" y="-45.72" length="middle"/>
<pin name="(SCK/PCINT1)_PB1" x="2.54" y="-48.26" length="middle"/>
<pin name="MOSI/PCINT2)_PB2" x="2.54" y="-50.8" length="middle"/>
<pin name="(MISO/PCINT3)_PB3" x="2.54" y="-53.34" length="middle"/>
<pin name="(OC2A/PCINT4)_PB4" x="2.54" y="-55.88" length="middle"/>
<pin name="(OC1A/PCINT5)_PB5" x="2.54" y="-58.42" length="middle"/>
<pin name="(OC1B/PCINT6)_PB6" x="2.54" y="-60.96" length="middle"/>
<pin name="(OC0A/OC1C/PCINT7)_PB7" x="2.54" y="-63.5" length="middle"/>
<pin name="(T4)_PH7" x="2.54" y="-66.04" length="middle"/>
<pin name="(TOSC2)_PG3" x="2.54" y="-68.58" length="middle"/>
<pin name="(TOSC1)_PG4" x="2.54" y="-71.12" length="middle"/>
<pin name="!RESET" x="2.54" y="-73.66" length="middle" direction="in"/>
<pin name="VCC_3" x="2.54" y="-76.2" length="middle" direction="pwr"/>
<pin name="GND_3" x="2.54" y="-78.74" length="middle" direction="pwr"/>
<pin name="XTAL2" x="2.54" y="-81.28" length="middle" direction="out"/>
<pin name="XTAL1" x="2.54" y="-83.82" length="middle" direction="in"/>
<pin name="(ICP4)_PL0" x="2.54" y="-86.36" length="middle"/>
<pin name="(ICP5)_PL1" x="2.54" y="-88.9" length="middle"/>
<pin name="(T5)_PL2" x="2.54" y="-91.44" length="middle"/>
<pin name="(OC5A)_PL3" x="2.54" y="-93.98" length="middle"/>
<pin name="(OC5B)_PL4" x="2.54" y="-96.52" length="middle"/>
<pin name="(OC5C)_PL5" x="2.54" y="-99.06" length="middle"/>
<pin name="PL6" x="2.54" y="-101.6" length="middle"/>
<pin name="PL7" x="2.54" y="-104.14" length="middle"/>
<pin name="(SCL/INT0)_PD0" x="2.54" y="-106.68" length="middle"/>
<pin name="(SDA/INT1)_PD1" x="2.54" y="-109.22" length="middle"/>
<pin name="(RXD1/INT2)_PD2" x="2.54" y="-111.76" length="middle"/>
<pin name="(TXD1/INT3)_PD3" x="2.54" y="-114.3" length="middle"/>
<pin name="(ICP1)_PD4" x="2.54" y="-116.84" length="middle"/>
<pin name="(XCK1)_PD5" x="2.54" y="-119.38" length="middle"/>
<pin name="(T1)_PD6" x="2.54" y="-121.92" length="middle"/>
<pin name="(T0)_PD7" x="2.54" y="-124.46" length="middle"/>
<pin name="PG0_(!WR)" x="109.22" y="-124.46" length="middle" rot="R180"/>
<pin name="PG1_(!RD)" x="109.22" y="-121.92" length="middle" rot="R180"/>
<pin name="PC0_(A8)" x="109.22" y="-119.38" length="middle" rot="R180"/>
<pin name="PC1_(A9)" x="109.22" y="-116.84" length="middle" rot="R180"/>
<pin name="PC2_(A10)" x="109.22" y="-114.3" length="middle" rot="R180"/>
<pin name="PC3_(A11)" x="109.22" y="-111.76" length="middle" rot="R180"/>
<pin name="PC4_(A12)" x="109.22" y="-109.22" length="middle" rot="R180"/>
<pin name="PC5_(A13)" x="109.22" y="-106.68" length="middle" rot="R180"/>
<pin name="PC6_(A14)" x="109.22" y="-104.14" length="middle" rot="R180"/>
<pin name="PC7_(A15)" x="109.22" y="-101.6" length="middle" rot="R180"/>
<pin name="VCC_4" x="109.22" y="-99.06" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_4" x="109.22" y="-96.52" length="middle" direction="pwr" rot="R180"/>
<pin name="PJ0_(RXD3/PCINT9)" x="109.22" y="-93.98" length="middle" rot="R180"/>
<pin name="PJ1_(TXD3/PCINT10)" x="109.22" y="-91.44" length="middle" rot="R180"/>
<pin name="PJ2_(XCK3/PCINT11)" x="109.22" y="-88.9" length="middle" rot="R180"/>
<pin name="PJ3_(PCINT12)" x="109.22" y="-86.36" length="middle" rot="R180"/>
<pin name="PJ4_(PCINT13)" x="109.22" y="-83.82" length="middle" rot="R180"/>
<pin name="PJ5_(PCINT14)" x="109.22" y="-81.28" length="middle" rot="R180"/>
<pin name="PJ6_(PCINT15)" x="109.22" y="-78.74" length="middle" rot="R180"/>
<pin name="PG2_(ALE)" x="109.22" y="-76.2" length="middle" rot="R180"/>
<pin name="PA7_(AD7)" x="109.22" y="-73.66" length="middle" rot="R180"/>
<pin name="PA6_(AD6)" x="109.22" y="-71.12" length="middle" rot="R180"/>
<pin name="PA5_(AD5)" x="109.22" y="-68.58" length="middle" rot="R180"/>
<pin name="PA4_(AD4)" x="109.22" y="-66.04" length="middle" rot="R180"/>
<pin name="PA3_(AD3)" x="109.22" y="-63.5" length="middle" rot="R180"/>
<pin name="PA2_(AD2)" x="109.22" y="-60.96" length="middle" rot="R180"/>
<pin name="PA1_(AD1)" x="109.22" y="-58.42" length="middle" rot="R180"/>
<pin name="PA0_(AD0)" x="109.22" y="-55.88" length="middle" rot="R180"/>
<pin name="PJ7" x="109.22" y="-53.34" length="middle" rot="R180"/>
<pin name="VCC" x="109.22" y="-50.8" length="middle" direction="pwr" rot="R180"/>
<pin name="GND_5" x="109.22" y="-48.26" length="middle" direction="pwr" rot="R180"/>
<pin name="PK7_(ADC15/PCINT23)" x="109.22" y="-45.72" length="middle" rot="R180"/>
<pin name="PK6_(ADC14/PCINT22)" x="109.22" y="-43.18" length="middle" rot="R180"/>
<pin name="PK5_(ADC13/PCINT21)" x="109.22" y="-40.64" length="middle" rot="R180"/>
<pin name="PK4_(ADC12/PCINT20)" x="109.22" y="-38.1" length="middle" rot="R180"/>
<pin name="PK3_(ADC11/PCINT19)" x="109.22" y="-35.56" length="middle" rot="R180"/>
<pin name="PK2_(ADC10/PCINT18)" x="109.22" y="-33.02" length="middle" rot="R180"/>
<pin name="PK1_(ADC9/PCINT17)" x="109.22" y="-30.48" length="middle" rot="R180"/>
<pin name="PK0_(ADC8/PCINT16)" x="109.22" y="-27.94" length="middle" rot="R180"/>
<pin name="PF7_(ADC7/TDI)" x="109.22" y="-25.4" length="middle" rot="R180"/>
<pin name="PF6_(ADC6/TDO)" x="109.22" y="-22.86" length="middle" rot="R180"/>
<pin name="PF5_(ADC5/TMS)" x="109.22" y="-20.32" length="middle" direction="pwr" rot="R180"/>
<pin name="PF4_(ADC4/TCK)" x="109.22" y="-17.78" length="middle" direction="pwr" rot="R180"/>
<pin name="PF3_(ADC3)" x="109.22" y="-15.24" length="middle" direction="pas" rot="R180"/>
<pin name="PF2_(ADC2)" x="109.22" y="-12.7" length="middle" rot="R180"/>
<pin name="PF1_(ADC1)" x="109.22" y="-10.16" length="middle" rot="R180"/>
<pin name="PF0_(ADC0)" x="109.22" y="-7.62" length="middle" rot="R180"/>
<pin name="AREF" x="109.22" y="-5.08" length="middle" rot="R180"/>
<pin name="GND" x="109.22" y="-2.54" length="middle" rot="R180"/>
<pin name="AVCC" x="109.22" y="0" length="middle" rot="R180"/>
<wire x1="7.62" y1="7.62" x2="7.62" y2="-129.54" width="0.1524" layer="94"/>
<wire x1="7.62" y1="-129.54" x2="104.14" y2="-129.54" width="0.1524" layer="94"/>
<wire x1="104.14" y1="-129.54" x2="104.14" y2="7.62" width="0.1524" layer="94"/>
<wire x1="104.14" y1="7.62" x2="7.62" y2="7.62" width="0.1524" layer="94"/>
<text x="51.1556" y="11.6586" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="50.5206" y="9.1186" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
<symbol name="HRS-1B-14-GA">
<description>2057-HRS-1B-14-GA-ND</description>
<pin name="14" x="2.54" y="16.51" length="middle"/>
<pin name="8" x="2.54" y="1.27" length="middle"/>
<pin name="9" x="2.54" y="3.81" length="middle"/>
<pin name="10" x="2.54" y="6.35" length="middle"/>
<pin name="11" x="2.54" y="8.89" length="middle"/>
<pin name="12" x="2.54" y="11.43" length="middle"/>
<pin name="13" x="2.54" y="13.97" length="middle"/>
<pin name="7" x="2.54" y="-1.27" length="middle"/>
<pin name="6" x="2.54" y="-3.81" length="middle"/>
<pin name="5" x="2.54" y="-6.35" length="middle"/>
<pin name="4" x="2.54" y="-8.89" length="middle"/>
<pin name="3" x="2.54" y="-11.43" length="middle"/>
<pin name="2" x="2.54" y="-13.97" length="middle"/>
<pin name="1" x="2.54" y="-16.51" length="middle"/>
<wire x1="5.08" y1="19.05" x2="5.08" y2="-19.05" width="0.254" layer="94"/>
<wire x1="5.08" y1="-19.05" x2="0" y2="-19.05" width="0.254" layer="94"/>
<wire x1="0" y1="-19.05" x2="0" y2="19.05" width="0.254" layer="94"/>
<wire x1="0" y1="19.05" x2="5.08" y2="19.05" width="0.254" layer="94"/>
<text x="0" y="19.05" size="1.27" layer="95">&gt;NAME</text>
<text x="0" y="-21.59" size="1.27" layer="96">&gt;VALUE</text>
</symbol>
<symbol name="FE20-1">
<wire x1="3.81" y1="-27.94" x2="-1.27" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="1.905" y1="-19.685" x2="1.905" y2="-20.955" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-22.225" x2="1.905" y2="-23.495" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-24.765" x2="1.905" y2="-26.035" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-14.605" x2="1.905" y2="-15.875" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-17.145" x2="1.905" y2="-18.415" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-6.985" x2="1.905" y2="-8.255" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-9.525" x2="1.905" y2="-10.795" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-12.065" x2="1.905" y2="-13.335" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-1.905" x2="1.905" y2="-3.175" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="-4.445" x2="1.905" y2="-5.715" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="5.715" x2="1.905" y2="4.445" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="3.175" x2="1.905" y2="1.905" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="0.635" x2="1.905" y2="-0.635" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="10.795" x2="1.905" y2="9.525" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="8.255" x2="1.905" y2="6.985" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="18.415" x2="1.905" y2="17.145" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="15.875" x2="1.905" y2="14.605" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="13.335" x2="1.905" y2="12.065" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="-1.27" y1="25.4" x2="-1.27" y2="-27.94" width="0.4064" layer="94"/>
<wire x1="3.81" y1="-27.94" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="-1.27" y1="25.4" x2="3.81" y2="25.4" width="0.4064" layer="94"/>
<wire x1="1.905" y1="23.495" x2="1.905" y2="22.225" width="0.254" layer="94" curve="-180" cap="flat"/>
<wire x1="1.905" y1="20.955" x2="1.905" y2="19.685" width="0.254" layer="94" curve="-180" cap="flat"/>
<text x="-1.27" y="-30.48" size="1.778" layer="96">&gt;VALUE</text>
<text x="-1.27" y="26.162" size="1.778" layer="95">&gt;NAME</text>
<pin name="1" x="7.62" y="-25.4" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="2" x="7.62" y="-22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="3" x="7.62" y="-20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="4" x="7.62" y="-17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="5" x="7.62" y="-15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="6" x="7.62" y="-12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="7" x="7.62" y="-10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="8" x="7.62" y="-7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="9" x="7.62" y="-5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="10" x="7.62" y="-2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="11" x="7.62" y="0" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="12" x="7.62" y="2.54" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="13" x="7.62" y="5.08" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="14" x="7.62" y="7.62" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="15" x="7.62" y="10.16" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="16" x="7.62" y="12.7" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="17" x="7.62" y="15.24" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="18" x="7.62" y="17.78" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="19" x="7.62" y="20.32" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
<pin name="20" x="7.62" y="22.86" visible="pad" length="middle" direction="pas" swaplevel="1" rot="R180"/>
</symbol>
<symbol name="MIC5365-3.0YC5">
<pin name="VIN" x="2.54" y="0" length="middle" direction="in"/>
<pin name="GND" x="2.54" y="-2.54" length="middle" direction="pwr"/>
<pin name="EN" x="2.54" y="-5.08" length="middle" direction="in"/>
<pin name="NC" x="53.34" y="-5.08" length="middle" direction="nc" rot="R180"/>
<pin name="VOUT" x="53.34" y="-2.54" length="middle" direction="out" rot="R180"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="0.508" width="0.2032" layer="94"/>
<wire x1="7.112" y1="0" x2="6.0452" y2="-0.508" width="0.2032" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-4.572" width="0.2032" layer="94"/>
<wire x1="7.112" y1="-5.08" x2="6.0452" y2="-5.588" width="0.2032" layer="94"/>
<wire x1="48.768" y1="-2.032" x2="49.8348" y2="-2.54" width="0.2032" layer="94"/>
<wire x1="48.768" y1="-3.048" x2="49.8348" y2="-2.54" width="0.2032" layer="94"/>
<wire x1="7.62" y1="5.08" x2="7.62" y2="-10.16" width="0.2032" layer="94"/>
<wire x1="7.62" y1="-10.16" x2="48.26" y2="-10.16" width="0.2032" layer="94"/>
<wire x1="48.26" y1="-10.16" x2="48.26" y2="5.08" width="0.2032" layer="94"/>
<wire x1="48.26" y1="5.08" x2="7.62" y2="5.08" width="0.2032" layer="94"/>
<text x="23.2156" y="9.1186" size="2.0828" layer="95" ratio="6" rot="SR0">&gt;Name</text>
<text x="22.5806" y="6.5786" size="2.0828" layer="96" ratio="6" rot="SR0">&gt;Value</text>
</symbol>
</symbols>
<devicesets>
<deviceset name="ATMEGA2560-16AUR" prefix="U">
<description>ATMEGA2560-16AURCT-ND</description>
<gates>
<gate name="A" symbol="ATMEGA2560-16AU" x="0" y="0"/>
</gates>
<devices>
<device name="" package="100A">
<connects>
<connect gate="A" pin="!RESET" pad="30"/>
<connect gate="A" pin="(CLKO/ICP3/INT7)_PE7" pad="9"/>
<connect gate="A" pin="(ICP1)_PD4" pad="47"/>
<connect gate="A" pin="(ICP4)_PL0" pad="35"/>
<connect gate="A" pin="(ICP5)_PL1" pad="36"/>
<connect gate="A" pin="(MISO/PCINT3)_PB3" pad="22"/>
<connect gate="A" pin="(OC0A/OC1C/PCINT7)_PB7" pad="26"/>
<connect gate="A" pin="(OC0B)_PG5" pad="1"/>
<connect gate="A" pin="(OC1A/PCINT5)_PB5" pad="24"/>
<connect gate="A" pin="(OC1B/PCINT6)_PB6" pad="25"/>
<connect gate="A" pin="(OC2A/PCINT4)_PB4" pad="23"/>
<connect gate="A" pin="(OC2B)_PH6" pad="18"/>
<connect gate="A" pin="(OC3A/AIN1)_PE3" pad="5"/>
<connect gate="A" pin="(OC3B/INT4)_PE4" pad="6"/>
<connect gate="A" pin="(OC3C/INT5)_PE5" pad="7"/>
<connect gate="A" pin="(OC4A)_PH3" pad="15"/>
<connect gate="A" pin="(OC4B)_PH4" pad="16"/>
<connect gate="A" pin="(OC4C)_PH5" pad="17"/>
<connect gate="A" pin="(OC5A)_PL3" pad="38"/>
<connect gate="A" pin="(OC5B)_PL4" pad="39"/>
<connect gate="A" pin="(OC5C)_PL5" pad="40"/>
<connect gate="A" pin="(RXD0/PCINT8)_PE0" pad="2"/>
<connect gate="A" pin="(RXD1/INT2)_PD2" pad="45"/>
<connect gate="A" pin="(RXD2)_PH0" pad="12"/>
<connect gate="A" pin="(SCK/PCINT1)_PB1" pad="20"/>
<connect gate="A" pin="(SCL/INT0)_PD0" pad="43"/>
<connect gate="A" pin="(SDA/INT1)_PD1" pad="44"/>
<connect gate="A" pin="(SS/PCINT0)_PB0" pad="19"/>
<connect gate="A" pin="(T0)_PD7" pad="50"/>
<connect gate="A" pin="(T1)_PD6" pad="49"/>
<connect gate="A" pin="(T3/INT6)_PE6" pad="8"/>
<connect gate="A" pin="(T4)_PH7" pad="27"/>
<connect gate="A" pin="(T5)_PL2" pad="37"/>
<connect gate="A" pin="(TOSC1)_PG4" pad="29"/>
<connect gate="A" pin="(TOSC2)_PG3" pad="28"/>
<connect gate="A" pin="(TXD0)_PE1" pad="3"/>
<connect gate="A" pin="(TXD1/INT3)_PD3" pad="46"/>
<connect gate="A" pin="(TXD2)_PH1" pad="13"/>
<connect gate="A" pin="(XCK0/AIN0)_PE2" pad="4"/>
<connect gate="A" pin="(XCK1)_PD5" pad="48"/>
<connect gate="A" pin="(XCK2)_PH2" pad="14"/>
<connect gate="A" pin="AREF" pad="98"/>
<connect gate="A" pin="AVCC" pad="100"/>
<connect gate="A" pin="GND" pad="99"/>
<connect gate="A" pin="GND_2" pad="11"/>
<connect gate="A" pin="GND_3" pad="32"/>
<connect gate="A" pin="GND_4" pad="62"/>
<connect gate="A" pin="GND_5" pad="81"/>
<connect gate="A" pin="MOSI/PCINT2)_PB2" pad="21"/>
<connect gate="A" pin="PA0_(AD0)" pad="78"/>
<connect gate="A" pin="PA1_(AD1)" pad="77"/>
<connect gate="A" pin="PA2_(AD2)" pad="76"/>
<connect gate="A" pin="PA3_(AD3)" pad="75"/>
<connect gate="A" pin="PA4_(AD4)" pad="74"/>
<connect gate="A" pin="PA5_(AD5)" pad="73"/>
<connect gate="A" pin="PA6_(AD6)" pad="72"/>
<connect gate="A" pin="PA7_(AD7)" pad="71"/>
<connect gate="A" pin="PC0_(A8)" pad="53"/>
<connect gate="A" pin="PC1_(A9)" pad="54"/>
<connect gate="A" pin="PC2_(A10)" pad="55"/>
<connect gate="A" pin="PC3_(A11)" pad="56"/>
<connect gate="A" pin="PC4_(A12)" pad="57"/>
<connect gate="A" pin="PC5_(A13)" pad="58"/>
<connect gate="A" pin="PC6_(A14)" pad="59"/>
<connect gate="A" pin="PC7_(A15)" pad="60"/>
<connect gate="A" pin="PF0_(ADC0)" pad="97"/>
<connect gate="A" pin="PF1_(ADC1)" pad="96"/>
<connect gate="A" pin="PF2_(ADC2)" pad="95"/>
<connect gate="A" pin="PF3_(ADC3)" pad="94"/>
<connect gate="A" pin="PF4_(ADC4/TCK)" pad="93"/>
<connect gate="A" pin="PF5_(ADC5/TMS)" pad="92"/>
<connect gate="A" pin="PF6_(ADC6/TDO)" pad="91"/>
<connect gate="A" pin="PF7_(ADC7/TDI)" pad="90"/>
<connect gate="A" pin="PG0_(!WR)" pad="51"/>
<connect gate="A" pin="PG1_(!RD)" pad="52"/>
<connect gate="A" pin="PG2_(ALE)" pad="70"/>
<connect gate="A" pin="PJ0_(RXD3/PCINT9)" pad="63"/>
<connect gate="A" pin="PJ1_(TXD3/PCINT10)" pad="64"/>
<connect gate="A" pin="PJ2_(XCK3/PCINT11)" pad="65"/>
<connect gate="A" pin="PJ3_(PCINT12)" pad="66"/>
<connect gate="A" pin="PJ4_(PCINT13)" pad="67"/>
<connect gate="A" pin="PJ5_(PCINT14)" pad="68"/>
<connect gate="A" pin="PJ6_(PCINT15)" pad="69"/>
<connect gate="A" pin="PJ7" pad="79"/>
<connect gate="A" pin="PK0_(ADC8/PCINT16)" pad="89"/>
<connect gate="A" pin="PK1_(ADC9/PCINT17)" pad="88"/>
<connect gate="A" pin="PK2_(ADC10/PCINT18)" pad="87"/>
<connect gate="A" pin="PK3_(ADC11/PCINT19)" pad="86"/>
<connect gate="A" pin="PK4_(ADC12/PCINT20)" pad="85"/>
<connect gate="A" pin="PK5_(ADC13/PCINT21)" pad="84"/>
<connect gate="A" pin="PK6_(ADC14/PCINT22)" pad="83"/>
<connect gate="A" pin="PK7_(ADC15/PCINT23)" pad="82"/>
<connect gate="A" pin="PL6" pad="41"/>
<connect gate="A" pin="PL7" pad="42"/>
<connect gate="A" pin="VCC" pad="80"/>
<connect gate="A" pin="VCC_2" pad="10"/>
<connect gate="A" pin="VCC_3" pad="31"/>
<connect gate="A" pin="VCC_4" pad="61"/>
<connect gate="A" pin="XTAL1" pad="34"/>
<connect gate="A" pin="XTAL2" pad="33"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATMEGA256016AUR" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="100A-M" package="100A-M">
<connects>
<connect gate="A" pin="!RESET" pad="30"/>
<connect gate="A" pin="(CLKO/ICP3/INT7)_PE7" pad="9"/>
<connect gate="A" pin="(ICP1)_PD4" pad="47"/>
<connect gate="A" pin="(ICP4)_PL0" pad="35"/>
<connect gate="A" pin="(ICP5)_PL1" pad="36"/>
<connect gate="A" pin="(MISO/PCINT3)_PB3" pad="22"/>
<connect gate="A" pin="(OC0A/OC1C/PCINT7)_PB7" pad="26"/>
<connect gate="A" pin="(OC0B)_PG5" pad="1"/>
<connect gate="A" pin="(OC1A/PCINT5)_PB5" pad="24"/>
<connect gate="A" pin="(OC1B/PCINT6)_PB6" pad="25"/>
<connect gate="A" pin="(OC2A/PCINT4)_PB4" pad="23"/>
<connect gate="A" pin="(OC2B)_PH6" pad="18"/>
<connect gate="A" pin="(OC3A/AIN1)_PE3" pad="5"/>
<connect gate="A" pin="(OC3B/INT4)_PE4" pad="6"/>
<connect gate="A" pin="(OC3C/INT5)_PE5" pad="7"/>
<connect gate="A" pin="(OC4A)_PH3" pad="15"/>
<connect gate="A" pin="(OC4B)_PH4" pad="16"/>
<connect gate="A" pin="(OC4C)_PH5" pad="17"/>
<connect gate="A" pin="(OC5A)_PL3" pad="38"/>
<connect gate="A" pin="(OC5B)_PL4" pad="39"/>
<connect gate="A" pin="(OC5C)_PL5" pad="40"/>
<connect gate="A" pin="(RXD0/PCINT8)_PE0" pad="2"/>
<connect gate="A" pin="(RXD1/INT2)_PD2" pad="45"/>
<connect gate="A" pin="(RXD2)_PH0" pad="12"/>
<connect gate="A" pin="(SCK/PCINT1)_PB1" pad="20"/>
<connect gate="A" pin="(SCL/INT0)_PD0" pad="43"/>
<connect gate="A" pin="(SDA/INT1)_PD1" pad="44"/>
<connect gate="A" pin="(SS/PCINT0)_PB0" pad="19"/>
<connect gate="A" pin="(T0)_PD7" pad="50"/>
<connect gate="A" pin="(T1)_PD6" pad="49"/>
<connect gate="A" pin="(T3/INT6)_PE6" pad="8"/>
<connect gate="A" pin="(T4)_PH7" pad="27"/>
<connect gate="A" pin="(T5)_PL2" pad="37"/>
<connect gate="A" pin="(TOSC1)_PG4" pad="29"/>
<connect gate="A" pin="(TOSC2)_PG3" pad="28"/>
<connect gate="A" pin="(TXD0)_PE1" pad="3"/>
<connect gate="A" pin="(TXD1/INT3)_PD3" pad="46"/>
<connect gate="A" pin="(TXD2)_PH1" pad="13"/>
<connect gate="A" pin="(XCK0/AIN0)_PE2" pad="4"/>
<connect gate="A" pin="(XCK1)_PD5" pad="48"/>
<connect gate="A" pin="(XCK2)_PH2" pad="14"/>
<connect gate="A" pin="AREF" pad="98"/>
<connect gate="A" pin="AVCC" pad="100"/>
<connect gate="A" pin="GND" pad="99"/>
<connect gate="A" pin="GND_2" pad="11"/>
<connect gate="A" pin="GND_3" pad="32"/>
<connect gate="A" pin="GND_4" pad="62"/>
<connect gate="A" pin="GND_5" pad="81"/>
<connect gate="A" pin="MOSI/PCINT2)_PB2" pad="21"/>
<connect gate="A" pin="PA0_(AD0)" pad="78"/>
<connect gate="A" pin="PA1_(AD1)" pad="77"/>
<connect gate="A" pin="PA2_(AD2)" pad="76"/>
<connect gate="A" pin="PA3_(AD3)" pad="75"/>
<connect gate="A" pin="PA4_(AD4)" pad="74"/>
<connect gate="A" pin="PA5_(AD5)" pad="73"/>
<connect gate="A" pin="PA6_(AD6)" pad="72"/>
<connect gate="A" pin="PA7_(AD7)" pad="71"/>
<connect gate="A" pin="PC0_(A8)" pad="53"/>
<connect gate="A" pin="PC1_(A9)" pad="54"/>
<connect gate="A" pin="PC2_(A10)" pad="55"/>
<connect gate="A" pin="PC3_(A11)" pad="56"/>
<connect gate="A" pin="PC4_(A12)" pad="57"/>
<connect gate="A" pin="PC5_(A13)" pad="58"/>
<connect gate="A" pin="PC6_(A14)" pad="59"/>
<connect gate="A" pin="PC7_(A15)" pad="60"/>
<connect gate="A" pin="PF0_(ADC0)" pad="97"/>
<connect gate="A" pin="PF1_(ADC1)" pad="96"/>
<connect gate="A" pin="PF2_(ADC2)" pad="95"/>
<connect gate="A" pin="PF3_(ADC3)" pad="94"/>
<connect gate="A" pin="PF4_(ADC4/TCK)" pad="93"/>
<connect gate="A" pin="PF5_(ADC5/TMS)" pad="92"/>
<connect gate="A" pin="PF6_(ADC6/TDO)" pad="91"/>
<connect gate="A" pin="PF7_(ADC7/TDI)" pad="90"/>
<connect gate="A" pin="PG0_(!WR)" pad="51"/>
<connect gate="A" pin="PG1_(!RD)" pad="52"/>
<connect gate="A" pin="PG2_(ALE)" pad="70"/>
<connect gate="A" pin="PJ0_(RXD3/PCINT9)" pad="63"/>
<connect gate="A" pin="PJ1_(TXD3/PCINT10)" pad="64"/>
<connect gate="A" pin="PJ2_(XCK3/PCINT11)" pad="65"/>
<connect gate="A" pin="PJ3_(PCINT12)" pad="66"/>
<connect gate="A" pin="PJ4_(PCINT13)" pad="67"/>
<connect gate="A" pin="PJ5_(PCINT14)" pad="68"/>
<connect gate="A" pin="PJ6_(PCINT15)" pad="69"/>
<connect gate="A" pin="PJ7" pad="79"/>
<connect gate="A" pin="PK0_(ADC8/PCINT16)" pad="89"/>
<connect gate="A" pin="PK1_(ADC9/PCINT17)" pad="88"/>
<connect gate="A" pin="PK2_(ADC10/PCINT18)" pad="87"/>
<connect gate="A" pin="PK3_(ADC11/PCINT19)" pad="86"/>
<connect gate="A" pin="PK4_(ADC12/PCINT20)" pad="85"/>
<connect gate="A" pin="PK5_(ADC13/PCINT21)" pad="84"/>
<connect gate="A" pin="PK6_(ADC14/PCINT22)" pad="83"/>
<connect gate="A" pin="PK7_(ADC15/PCINT23)" pad="82"/>
<connect gate="A" pin="PL6" pad="41"/>
<connect gate="A" pin="PL7" pad="42"/>
<connect gate="A" pin="VCC" pad="80"/>
<connect gate="A" pin="VCC_2" pad="10"/>
<connect gate="A" pin="VCC_3" pad="31"/>
<connect gate="A" pin="VCC_4" pad="61"/>
<connect gate="A" pin="XTAL1" pad="34"/>
<connect gate="A" pin="XTAL2" pad="33"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATMEGA256016AUR" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
<device name="100A-L" package="100A-L">
<connects>
<connect gate="A" pin="!RESET" pad="30"/>
<connect gate="A" pin="(CLKO/ICP3/INT7)_PE7" pad="9"/>
<connect gate="A" pin="(ICP1)_PD4" pad="47"/>
<connect gate="A" pin="(ICP4)_PL0" pad="35"/>
<connect gate="A" pin="(ICP5)_PL1" pad="36"/>
<connect gate="A" pin="(MISO/PCINT3)_PB3" pad="22"/>
<connect gate="A" pin="(OC0A/OC1C/PCINT7)_PB7" pad="26"/>
<connect gate="A" pin="(OC0B)_PG5" pad="1"/>
<connect gate="A" pin="(OC1A/PCINT5)_PB5" pad="24"/>
<connect gate="A" pin="(OC1B/PCINT6)_PB6" pad="25"/>
<connect gate="A" pin="(OC2A/PCINT4)_PB4" pad="23"/>
<connect gate="A" pin="(OC2B)_PH6" pad="18"/>
<connect gate="A" pin="(OC3A/AIN1)_PE3" pad="5"/>
<connect gate="A" pin="(OC3B/INT4)_PE4" pad="6"/>
<connect gate="A" pin="(OC3C/INT5)_PE5" pad="7"/>
<connect gate="A" pin="(OC4A)_PH3" pad="15"/>
<connect gate="A" pin="(OC4B)_PH4" pad="16"/>
<connect gate="A" pin="(OC4C)_PH5" pad="17"/>
<connect gate="A" pin="(OC5A)_PL3" pad="38"/>
<connect gate="A" pin="(OC5B)_PL4" pad="39"/>
<connect gate="A" pin="(OC5C)_PL5" pad="40"/>
<connect gate="A" pin="(RXD0/PCINT8)_PE0" pad="2"/>
<connect gate="A" pin="(RXD1/INT2)_PD2" pad="45"/>
<connect gate="A" pin="(RXD2)_PH0" pad="12"/>
<connect gate="A" pin="(SCK/PCINT1)_PB1" pad="20"/>
<connect gate="A" pin="(SCL/INT0)_PD0" pad="43"/>
<connect gate="A" pin="(SDA/INT1)_PD1" pad="44"/>
<connect gate="A" pin="(SS/PCINT0)_PB0" pad="19"/>
<connect gate="A" pin="(T0)_PD7" pad="50"/>
<connect gate="A" pin="(T1)_PD6" pad="49"/>
<connect gate="A" pin="(T3/INT6)_PE6" pad="8"/>
<connect gate="A" pin="(T4)_PH7" pad="27"/>
<connect gate="A" pin="(T5)_PL2" pad="37"/>
<connect gate="A" pin="(TOSC1)_PG4" pad="29"/>
<connect gate="A" pin="(TOSC2)_PG3" pad="28"/>
<connect gate="A" pin="(TXD0)_PE1" pad="3"/>
<connect gate="A" pin="(TXD1/INT3)_PD3" pad="46"/>
<connect gate="A" pin="(TXD2)_PH1" pad="13"/>
<connect gate="A" pin="(XCK0/AIN0)_PE2" pad="4"/>
<connect gate="A" pin="(XCK1)_PD5" pad="48"/>
<connect gate="A" pin="(XCK2)_PH2" pad="14"/>
<connect gate="A" pin="AREF" pad="98"/>
<connect gate="A" pin="AVCC" pad="100"/>
<connect gate="A" pin="GND" pad="99"/>
<connect gate="A" pin="GND_2" pad="11"/>
<connect gate="A" pin="GND_3" pad="32"/>
<connect gate="A" pin="GND_4" pad="62"/>
<connect gate="A" pin="GND_5" pad="81"/>
<connect gate="A" pin="MOSI/PCINT2)_PB2" pad="21"/>
<connect gate="A" pin="PA0_(AD0)" pad="78"/>
<connect gate="A" pin="PA1_(AD1)" pad="77"/>
<connect gate="A" pin="PA2_(AD2)" pad="76"/>
<connect gate="A" pin="PA3_(AD3)" pad="75"/>
<connect gate="A" pin="PA4_(AD4)" pad="74"/>
<connect gate="A" pin="PA5_(AD5)" pad="73"/>
<connect gate="A" pin="PA6_(AD6)" pad="72"/>
<connect gate="A" pin="PA7_(AD7)" pad="71"/>
<connect gate="A" pin="PC0_(A8)" pad="53"/>
<connect gate="A" pin="PC1_(A9)" pad="54"/>
<connect gate="A" pin="PC2_(A10)" pad="55"/>
<connect gate="A" pin="PC3_(A11)" pad="56"/>
<connect gate="A" pin="PC4_(A12)" pad="57"/>
<connect gate="A" pin="PC5_(A13)" pad="58"/>
<connect gate="A" pin="PC6_(A14)" pad="59"/>
<connect gate="A" pin="PC7_(A15)" pad="60"/>
<connect gate="A" pin="PF0_(ADC0)" pad="97"/>
<connect gate="A" pin="PF1_(ADC1)" pad="96"/>
<connect gate="A" pin="PF2_(ADC2)" pad="95"/>
<connect gate="A" pin="PF3_(ADC3)" pad="94"/>
<connect gate="A" pin="PF4_(ADC4/TCK)" pad="93"/>
<connect gate="A" pin="PF5_(ADC5/TMS)" pad="92"/>
<connect gate="A" pin="PF6_(ADC6/TDO)" pad="91"/>
<connect gate="A" pin="PF7_(ADC7/TDI)" pad="90"/>
<connect gate="A" pin="PG0_(!WR)" pad="51"/>
<connect gate="A" pin="PG1_(!RD)" pad="52"/>
<connect gate="A" pin="PG2_(ALE)" pad="70"/>
<connect gate="A" pin="PJ0_(RXD3/PCINT9)" pad="63"/>
<connect gate="A" pin="PJ1_(TXD3/PCINT10)" pad="64"/>
<connect gate="A" pin="PJ2_(XCK3/PCINT11)" pad="65"/>
<connect gate="A" pin="PJ3_(PCINT12)" pad="66"/>
<connect gate="A" pin="PJ4_(PCINT13)" pad="67"/>
<connect gate="A" pin="PJ5_(PCINT14)" pad="68"/>
<connect gate="A" pin="PJ6_(PCINT15)" pad="69"/>
<connect gate="A" pin="PJ7" pad="79"/>
<connect gate="A" pin="PK0_(ADC8/PCINT16)" pad="89"/>
<connect gate="A" pin="PK1_(ADC9/PCINT17)" pad="88"/>
<connect gate="A" pin="PK2_(ADC10/PCINT18)" pad="87"/>
<connect gate="A" pin="PK3_(ADC11/PCINT19)" pad="86"/>
<connect gate="A" pin="PK4_(ADC12/PCINT20)" pad="85"/>
<connect gate="A" pin="PK5_(ADC13/PCINT21)" pad="84"/>
<connect gate="A" pin="PK6_(ADC14/PCINT22)" pad="83"/>
<connect gate="A" pin="PK7_(ADC15/PCINT23)" pad="82"/>
<connect gate="A" pin="PL6" pad="41"/>
<connect gate="A" pin="PL7" pad="42"/>
<connect gate="A" pin="VCC" pad="80"/>
<connect gate="A" pin="VCC_2" pad="10"/>
<connect gate="A" pin="VCC_3" pad="31"/>
<connect gate="A" pin="VCC_4" pad="61"/>
<connect gate="A" pin="XTAL1" pad="34"/>
<connect gate="A" pin="XTAL2" pad="33"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="ATMEGA256016AUR" constant="no"/>
<attribute name="VENDOR" value="Atmel" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="HRS-1B-14-GA" prefix="J">
<description>14 Position Receptacle Connector Through Hole 
&lt;p&gt;http://adam-tech.com/downloader.php?p=HRS-1B-XX-GA.pdf&lt;/p&gt;</description>
<gates>
<gate name="HRS-1B-14-GA" symbol="HRS-1B-14-GA" x="0" y="0"/>
</gates>
<devices>
<device name="" package="HRS-1B-14-GA">
<connects>
<connect gate="HRS-1B-14-GA" pin="1" pad="1"/>
<connect gate="HRS-1B-14-GA" pin="10" pad="10"/>
<connect gate="HRS-1B-14-GA" pin="11" pad="11"/>
<connect gate="HRS-1B-14-GA" pin="12" pad="12"/>
<connect gate="HRS-1B-14-GA" pin="13" pad="13"/>
<connect gate="HRS-1B-14-GA" pin="14" pad="14"/>
<connect gate="HRS-1B-14-GA" pin="2" pad="2"/>
<connect gate="HRS-1B-14-GA" pin="3" pad="3"/>
<connect gate="HRS-1B-14-GA" pin="4" pad="4"/>
<connect gate="HRS-1B-14-GA" pin="5" pad="5"/>
<connect gate="HRS-1B-14-GA" pin="6" pad="6"/>
<connect gate="HRS-1B-14-GA" pin="7" pad="7"/>
<connect gate="HRS-1B-14-GA" pin="8" pad="8"/>
<connect gate="HRS-1B-14-GA" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="2057-HRS-1B-14-GA-ND" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="PPTC201LFBN-RC" prefix="J">
<description>20 Position Header Connector Through Hole
&lt;p&gt;https://media.digikey.com/pdf/Data%20Sheets/Sullins%20PDFs/Female_Headers.100_DS.pdf&lt;/p&gt;</description>
<gates>
<gate name="PPTC201LFBN-RC" symbol="FE20-1" x="0" y="0"/>
</gates>
<devices>
<device name="" package="PPTC201LFBN-RC">
<connects>
<connect gate="PPTC201LFBN-RC" pin="1" pad="1"/>
<connect gate="PPTC201LFBN-RC" pin="10" pad="10"/>
<connect gate="PPTC201LFBN-RC" pin="11" pad="11"/>
<connect gate="PPTC201LFBN-RC" pin="12" pad="12"/>
<connect gate="PPTC201LFBN-RC" pin="13" pad="13"/>
<connect gate="PPTC201LFBN-RC" pin="14" pad="14"/>
<connect gate="PPTC201LFBN-RC" pin="15" pad="15"/>
<connect gate="PPTC201LFBN-RC" pin="16" pad="16"/>
<connect gate="PPTC201LFBN-RC" pin="17" pad="17"/>
<connect gate="PPTC201LFBN-RC" pin="18" pad="18"/>
<connect gate="PPTC201LFBN-RC" pin="19" pad="19"/>
<connect gate="PPTC201LFBN-RC" pin="2" pad="2"/>
<connect gate="PPTC201LFBN-RC" pin="20" pad="20"/>
<connect gate="PPTC201LFBN-RC" pin="3" pad="3"/>
<connect gate="PPTC201LFBN-RC" pin="4" pad="4"/>
<connect gate="PPTC201LFBN-RC" pin="5" pad="5"/>
<connect gate="PPTC201LFBN-RC" pin="6" pad="6"/>
<connect gate="PPTC201LFBN-RC" pin="7" pad="7"/>
<connect gate="PPTC201LFBN-RC" pin="8" pad="8"/>
<connect gate="PPTC201LFBN-RC" pin="9" pad="9"/>
</connects>
<technologies>
<technology name="">
<attribute name="S7018-ND" value="" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="MIC5365-3.0YC5-TR" prefix="U">
<description>576-3191-1-ND Voltage Regulator</description>
<gates>
<gate name="A" symbol="MIC5365-3.0YC5" x="0" y="0"/>
</gates>
<devices>
<device name="" package="SC-70_C5">
<connects>
<connect gate="A" pin="EN" pad="3"/>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="NC" pad="4"/>
<connect gate="A" pin="VIN" pad="1"/>
<connect gate="A" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MIC53653.0YC5TR" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
<device name="SC-70_C5-M" package="SC-70_C5-M">
<connects>
<connect gate="A" pin="EN" pad="3"/>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="NC" pad="4"/>
<connect gate="A" pin="VIN" pad="1"/>
<connect gate="A" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MIC53653.0YC5TR" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
<device name="SC-70_C5-L" package="SC-70_C5-L">
<connects>
<connect gate="A" pin="EN" pad="3"/>
<connect gate="A" pin="GND" pad="2"/>
<connect gate="A" pin="NC" pad="4"/>
<connect gate="A" pin="VIN" pad="1"/>
<connect gate="A" pin="VOUT" pad="5"/>
</connects>
<technologies>
<technology name="">
<attribute name="MANUFACTURER_PART_NUMBER" value="MIC53653.0YC5TR" constant="no"/>
<attribute name="VENDOR" value="Microchip" constant="no"/>
</technology>
</technologies>
</device>
</devices>
</deviceset>
</devicesets>
</library>
<library name="supply1" urn="urn:adsk.eagle:library:371">
<description>&lt;b&gt;Supply Symbols&lt;/b&gt;&lt;p&gt;
 GND, VCC, 0V, +5V, -5V, etc.&lt;p&gt;
 Please keep in mind, that these devices are necessary for the
 automatic wiring of the supply signals.&lt;p&gt;
 The pin name defined in the symbol is identical to the net which is to be wired automatically.&lt;p&gt;
 In this library the device names are the same as the pin names of the symbols, therefore the correct signal names appear next to the supply symbols in the schematic.&lt;p&gt;
 &lt;author&gt;Created by librarian@cadsoft.de&lt;/author&gt;</description>
<packages>
</packages>
<symbols>
<symbol name="+5V" urn="urn:adsk.eagle:symbol:26929/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+5V" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
<symbol name="GND" urn="urn:adsk.eagle:symbol:26925/1" library_version="1">
<wire x1="-1.905" y1="0" x2="1.905" y2="0" width="0.254" layer="94"/>
<text x="-2.54" y="-2.54" size="1.778" layer="96">&gt;VALUE</text>
<pin name="GND" x="0" y="2.54" visible="off" length="short" direction="sup" rot="R270"/>
</symbol>
<symbol name="+3V3" urn="urn:adsk.eagle:symbol:26950/1" library_version="1">
<wire x1="1.27" y1="-1.905" x2="0" y2="0" width="0.254" layer="94"/>
<wire x1="0" y1="0" x2="-1.27" y2="-1.905" width="0.254" layer="94"/>
<text x="-2.54" y="-5.08" size="1.778" layer="96" rot="R90">&gt;VALUE</text>
<pin name="+3V3" x="0" y="-2.54" visible="off" length="short" direction="sup" rot="R90"/>
</symbol>
</symbols>
<devicesets>
<deviceset name="+5V" urn="urn:adsk.eagle:component:26963/1" prefix="P+" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="+5V" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="GND" urn="urn:adsk.eagle:component:26954/1" prefix="GND" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="1" symbol="GND" x="0" y="0"/>
</gates>
<devices>
<device name="">
<technologies>
<technology name=""/>
</technologies>
</device>
</devices>
</deviceset>
<deviceset name="+3V3" urn="urn:adsk.eagle:component:26981/1" prefix="+3V3" library_version="1">
<description>&lt;b&gt;SUPPLY SYMBOL&lt;/b&gt;</description>
<gates>
<gate name="G$1" symbol="+3V3" x="0" y="0"/>
</gates>
<devices>
<device name="">
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
<part name="U1" library="MastPanel" deviceset="ATMEGA2560-16AUR" device=""/>
<part name="J1" library="MastPanel" deviceset="HRS-1B-14-GA" device=""/>
<part name="J2" library="MastPanel" deviceset="PPTC201LFBN-RC" device=""/>
<part name="J3" library="MastPanel" deviceset="PPTC201LFBN-RC" device=""/>
<part name="U2" library="MastPanel" deviceset="MIC5365-3.0YC5-TR" device=""/>
<part name="P+3" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="GND1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="GND" device=""/>
<part name="P+1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="P+2" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+5V" device=""/>
<part name="+3V1" library="supply1" library_urn="urn:adsk.eagle:library:371" deviceset="+3V3" device=""/>
</parts>
<sheets>
<sheet>
<plain>
</plain>
<instances>
<instance part="U1" gate="A" x="-55.88" y="55.88" smashed="yes">
<attribute name="NAME" x="-4.7244" y="67.5386" size="2.0828" layer="95" ratio="6" rot="SR0"/>
<attribute name="VALUE" x="-5.3594" y="64.9986" size="2.0828" layer="96" ratio="6" rot="SR0"/>
</instance>
<instance part="J1" gate="HRS-1B-14-GA" x="-93.98" y="-33.02" smashed="yes" rot="R180">
<attribute name="NAME" x="-93.98" y="-52.07" size="1.27" layer="95" rot="R180"/>
<attribute name="VALUE" x="-93.98" y="-11.43" size="1.27" layer="96" rot="R180"/>
</instance>
<instance part="J2" gate="PPTC201LFBN-RC" x="71.12" y="5.08" smashed="yes">
<attribute name="VALUE" x="69.85" y="-25.4" size="1.778" layer="96"/>
<attribute name="NAME" x="69.85" y="31.242" size="1.778" layer="95"/>
</instance>
<instance part="J3" gate="PPTC201LFBN-RC" x="73.66" y="-58.42" smashed="yes">
<attribute name="VALUE" x="72.39" y="-88.9" size="1.778" layer="96"/>
<attribute name="NAME" x="72.39" y="-32.258" size="1.778" layer="95"/>
</instance>
<instance part="U2" gate="A" x="-68.58" y="7.62" smashed="yes" rot="R180">
<attribute name="NAME" x="-91.7956" y="-1.4986" size="2.0828" layer="95" ratio="6" rot="SR180"/>
<attribute name="VALUE" x="-91.1606" y="1.0414" size="2.0828" layer="96" ratio="6" rot="SR180"/>
</instance>
<instance part="P+3" gate="1" x="-55.88" y="-20.32" smashed="yes" rot="R90">
<attribute name="VALUE" x="-50.8" y="-22.86" size="1.778" layer="96" rot="R180"/>
</instance>
<instance part="GND1" gate="1" x="-55.88" y="-22.86" smashed="yes" rot="R270">
<attribute name="VALUE" x="-58.42" y="-20.32" size="1.778" layer="96" rot="R270"/>
</instance>
<instance part="P+1" gate="1" x="-68.58" y="7.62" smashed="yes" rot="R270">
<attribute name="VALUE" x="-73.66" y="10.16" size="1.778" layer="96"/>
</instance>
<instance part="P+2" gate="1" x="-93.98" y="-16.51" smashed="yes" rot="R270">
<attribute name="VALUE" x="-99.06" y="-13.97" size="1.778" layer="96"/>
</instance>
<instance part="+3V1" gate="G$1" x="-93.98" y="-21.59" smashed="yes" rot="R270">
<attribute name="VALUE" x="-99.06" y="-19.05" size="1.778" layer="96"/>
</instance>
</instances>
<busses>
</busses>
<nets>
<net name="+5V" class="0">
<segment>
<pinref part="U1" gate="A" pin="VCC_3"/>
<pinref part="P+3" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="U2" gate="A" pin="VIN"/>
<pinref part="P+1" gate="1" pin="+5V"/>
</segment>
<segment>
<pinref part="J1" gate="HRS-1B-14-GA" pin="1"/>
<pinref part="P+2" gate="1" pin="+5V"/>
</segment>
</net>
<net name="GND" class="0">
<segment>
<pinref part="U1" gate="A" pin="GND_3"/>
<pinref part="GND1" gate="1" pin="GND"/>
</segment>
</net>
<net name="N$1" class="0">
<segment>
<pinref part="U2" gate="A" pin="VOUT"/>
<wire x1="-121.92" y1="10.16" x2="-124.46" y2="10.16" width="0.1524" layer="91"/>
</segment>
</net>
<net name="BUTTON" class="0">
<segment>
<pinref part="J1" gate="HRS-1B-14-GA" pin="2"/>
<wire x1="-96.52" y1="-19.05" x2="-92.71" y2="-19.05" width="0.1524" layer="91"/>
<label x="-92.71" y="-19.05" size="1.778" layer="95" xref="yes"/>
</segment>
</net>
<net name="+3V3" class="0">
<segment>
<pinref part="J1" gate="HRS-1B-14-GA" pin="3"/>
<pinref part="+3V1" gate="G$1" pin="+3V3"/>
</segment>
</net>
</nets>
</sheet>
</sheets>
</schematic>
</drawing>
<compatibility>
<note version="8.2" severity="warning">
Since Version 8.2, EAGLE supports online libraries. The ids
of those online libraries will not be understood (or retained)
with this version.
</note>
<note version="8.3" severity="warning">
Since Version 8.3, EAGLE supports URNs for individual library
assets (packages, symbols, and devices). The URNs of those assets
will not be understood (or retained) with this version.
</note>
</compatibility>
</eagle>
