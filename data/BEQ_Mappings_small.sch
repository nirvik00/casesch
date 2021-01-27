<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <sch:ns prefix="auc" uri="http://buildingsync.net/schemas/bedes-auc/2019"/>
  <sch:phase id="phase_title4" see="phase see4">
    <sch:active pattern="document_structure_prerequisites_pattern_title4"/>
    <sch:active pattern="pattern_title4"/>
  </sch:phase>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title4">
    <sch:title>Document Structure Prerequisites pattern title4</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Address" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Address</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see4" id="pattern_title4">
    <sch:title>pattern title4</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Address">
      <sch:assert test="auc:City" role="">auc:City</sch:assert>
      <sch:assert test="auc:State" role="">auc:State</sch:assert>
      <sch:assert test="auc:Continent" role="WARNING">auc:Continent</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
