Profile: StandardLabObsCoded
Parent: StandardLabObs
Id: standard-lab-obs-coded 
Title: "Standard Lab Obs Coded"
Description: "The base profile for all lab tests with coded results (excluding ordinal)."
* code from StdLabObsCodedVS (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept from LabResultCodeVS (extensible)
* interpretation from AbnmlIntpCodeVS (extensible)
* referenceRange.extension contains RefRangeNominal 0..1

Extension: RefRangeNominal
Id: ref-range-nominal 
Title: "Reference Range Nominal"
Description: "This is an extension for the Reference Range element in Observation and is used to capture coded types of reference ranges."
* value[x] only CodeableConcept
* valueCodeableConcept from RefRangeNomVS (preferred)