<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron">
  <sch:ns prefix="auc" uri="http://buildingsync.net/schemas/bedes-auc/2019"/>
  <sch:phase id="facility_description" see="ASHRAE 211 6.1.1">
    <sch:active pattern="document_structure_prerequisites_misc_building_info"/>
    <sch:active pattern="misc_building_info"/>
  </sch:phase>
  <sch:phase id="phase_title2" see="phase see2">
    <sch:active pattern="document_structure_prerequisites_pattern_title2"/>
    <sch:active pattern="pattern_title2"/>
  </sch:phase>
  <sch:phase id="phase_title3" see="phase see3">
    <sch:active pattern="document_structure_prerequisites_pattern_title3"/>
    <sch:active pattern="pattern_title3"/>
  </sch:phase>
  <sch:phase id="phase_title4" see="phase see4">
    <sch:active pattern="document_structure_prerequisites_pattern_title4"/>
    <sch:active pattern="pattern_title4"/>
  </sch:phase>
  <sch:phase id="phase_title5" see="phase see5">
    <sch:active pattern="document_structure_prerequisites_pattern_title5"/>
    <sch:active pattern="pattern_title5"/>
  </sch:phase>
  <sch:phase id="phase_title6" see="phase see6">
    <sch:active pattern="document_structure_prerequisites_pattern_title6"/>
    <sch:active pattern="pattern_title6"/>
  </sch:phase>
  <sch:phase id="phase_title7" see="phase see7">
    <sch:active pattern="document_structure_prerequisites_pattern_title7"/>
    <sch:active pattern="pattern_title7"/>
  </sch:phase>
  <sch:phase id="phase_title8" see="phase see8">
    <sch:active pattern="document_structure_prerequisites_pattern_title8"/>
    <sch:active pattern="pattern_title8"/>
  </sch:phase>
  <sch:phase id="phase_title9" see="phase see9">
    <sch:active pattern="document_structure_prerequisites_pattern_title9"/>
    <sch:active pattern="pattern_title9"/>
  </sch:phase>
  <sch:phase id="phase_title10" see="phase see10">
    <sch:active pattern="document_structure_prerequisites_pattern_title10"/>
    <sch:active pattern="pattern_title10"/>
  </sch:phase>
  <sch:phase id="phase_title11" see="phase see11">
    <sch:active pattern="document_structure_prerequisites_pattern_title11"/>
    <sch:active pattern="pattern_title11"/>
  </sch:phase>
  <sch:phase id="phase_title12" see="phase see12">
    <sch:active pattern="document_structure_prerequisites_pattern_title12"/>
    <sch:active pattern="pattern_title12"/>
  </sch:phase>
  <sch:pattern see="" id="document_structure_prerequisites_misc_building_info">
    <sch:title>Document Structure Prerequisites Misc Building Info</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Contacts/auc:Contact" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Contacts/auc:Contact</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="ASHRAE 211 6.1.1.1 and 6.1.1.2" id="misc_building_info">
    <sch:title>Misc Building Info</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Contacts/auc:Contact">
      <sch:assert test="auc:Address/auc:State" role="">auc:Address/auc:State</sch:assert>
      <sch:assert test="auc:Address_PostalCode" role="">auc:Address_PostalCode</sch:assert>
      <sch:assert test="auc:ContactCompany" role="">auc:ContactCompany</sch:assert>
      <sch:assert test="auc:ContactEmailAddresses/auc:ContactEmailAddress/auc:EmailAddress" role="">auc:ContactEmailAddresses/auc:ContactEmailAddress/auc:EmailAddress</sch:assert>
      <sch:assert test="auc:ContactName" role="">auc:ContactName</sch:assert>
      <sch:assert test="auc:ContactTelephoneNumbers/auc:ContactTelephoneNumber/auc:TelephoneNumber" role="">auc:ContactTelephoneNumbers/auc:ContactTelephoneNumber/auc:TelephoneNumber</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title2">
    <sch:title>Document Structure Prerequisites pattern title2</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Reports/auc:Report/auc:Scenarios/auc:Scenario" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Reports/auc:Report/auc:Scenarios/auc:Scenario</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see2" id="pattern_title2">
    <sch:title>pattern title2</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Reports/auc:Report/auc:Scenarios/auc:Scenario">
      <sch:assert test="auc:ResourceUses/auc:ResourceUse/auc:EnergyResource" role="WARNING">auc:ResourceUses/auc:ResourceUse/auc:EnergyResource</sch:assert>
      <sch:assert test="auc:ScenarioType/auc:Benchmark/auc:BenchmarkYear" role="WARNING">auc:ScenarioType/auc:Benchmark/auc:BenchmarkYear</sch:assert>
      <sch:assert test="auc:ScenarioType/auc:CalculationMethod/auc:Modeled/auc:SoftwareProgramUsed" role="WARNING">auc:ScenarioType/auc:CalculationMethod/auc:Modeled/auc:SoftwareProgramUsed</sch:assert>
      <sch:assert test="auc:ScenarioType/auc:CurrentBuilding/auc:ENERGYSTARScore" role="WARNING">auc:ScenarioType/auc:CurrentBuilding/auc:ENERGYSTARScore</sch:assert>
      <sch:assert test="auc:TimeSeriesData/auc:TimeSeries/auc:IntervalFrequency/auc:CoolingDegreeDays" role="">auc:TimeSeriesData/auc:TimeSeries/auc:IntervalFrequency/auc:CoolingDegreeDays</sch:assert>
      <sch:assert test="auc:TimeSeriesData/auc:TimeSeries/auc:IntervalFrequency/auc:HeatingDegreeDays" role="">auc:TimeSeriesData/auc:TimeSeries/auc:IntervalFrequency/auc:HeatingDegreeDays</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title3">
    <sch:title>Document Structure Prerequisites pattern title3</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:ASHRAE" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:ASHRAE</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see3" id="pattern_title3">
    <sch:title>pattern title3</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:ASHRAE">
      <sch:assert test="auc:ClimateZone" role="">auc:ClimateZone</sch:assert>
    </sch:rule>
  </sch:pattern>
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
      <sch:assert test="auc:PostalCode" role="">auc:PostalCode</sch:assert>
      <sch:assert test="auc:State" role="">auc:State</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title5">
    <sch:title>Document Structure Prerequisites pattern title5</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see5" id="pattern_title5">
    <sch:title>pattern title5</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building">
      <sch:assert test="auc:ConditionedFloorsAboveGrade" role="WARNING">auc:ConditionedFloorsAboveGrade</sch:assert>
      <sch:assert test="auc:ConditionedFloorsBelowGrade" role="WARNING">auc:ConditionedFloorsBelowGrade</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title6">
    <sch:title>Document Structure Prerequisites pattern title6</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:FloorAreas/auc:FloorArea" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:FloorAreas/auc:FloorArea</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see6" id="pattern_title6">
    <sch:title>pattern title6</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:FloorAreas/auc:FloorArea">
      <sch:assert test="auc:FloorAreaType" role="">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
      <sch:assert test="auc:FloorAreaType" role="WARNING">auc:FloorAreaType</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title7">
    <sch:title>Document Structure Prerequisites pattern title7</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see7" id="pattern_title7">
    <sch:title>pattern title7</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building">
      <sch:assert test="auc:HistoricalLandmark" role="WARNING">auc:HistoricalLandmark</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title8">
    <sch:title>Document Structure Prerequisites pattern title8</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see8" id="pattern_title8">
    <sch:title>pattern title8</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings">
      <sch:assert test="auc:Building/auc:PremisesName" role="">auc:Building/auc:PremisesName</sch:assert>
      <sch:assert test="auc:Building/auc:PremisesNotes" role="">auc:Building/auc:PremisesNotes</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title9">
    <sch:title>Document Structure Prerequisites pattern title9</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see9" id="pattern_title9">
    <sch:title>pattern title9</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section">
      <sch:assert test="auc:OccupancyClassification" role="">auc:OccupancyClassification</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title10">
    <sch:title>Document Structure Prerequisites pattern title10</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section/auc:TypicalOccupantUsages/auc:TypicalOccupantUsage" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section/auc:TypicalOccupantUsages/auc:TypicalOccupantUsage</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see10" id="pattern_title10">
    <sch:title>pattern title10</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings/auc:Building/auc:Sections/auc:Section/auc:TypicalOccupantUsages/auc:TypicalOccupantUsage">
      <sch:assert test="auc:TypicalOccupantUsageUnits" role="">auc:TypicalOccupantUsageUnits</sch:assert>
      <sch:assert test="auc:TypicalOccupantUsageValue" role="">auc:TypicalOccupantUsageValue</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title11">
    <sch:title>Document Structure Prerequisites pattern title11</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see11" id="pattern_title11">
    <sch:title>pattern title11</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site/auc:Buildings">
      <sch:assert test="auc:Building/auc:YearOfConstruction" role="WARNING">auc:Building/auc:YearOfConstruction</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="" id="document_structure_prerequisites_pattern_title12">
    <sch:title>Document Structure Prerequisites pattern title12</sch:title>
    <sch:rule context="/">
      <sch:assert test="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site" role="ERROR">/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern see="pattern see12" id="pattern_title12">
    <sch:title>pattern title12</sch:title>
    <sch:rule context="/auc:BuildingSync/auc:Facilities/auc:Facility/auc:Sites/auc:Site">
      <sch:assert test="auc:WeatherStationName" role="WARNING">auc:WeatherStationName</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
