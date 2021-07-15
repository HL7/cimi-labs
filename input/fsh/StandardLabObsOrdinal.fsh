Profile: StandardLabObsOrdinal
Parent: StandardLabObs
Id: standard-lab-obs-ordinal 
Title: "Standard Lab Obs Ordinal"
Description: "The base profile for all LOINC lab tests that have ordinal results."
* code from StdLabObsOrdCodeVS
* value[x] only CodeableConcept
* valueCodeableConcept from OrdinalValueCodeVS (extensible)
* interpretation from AbnmlIntpCodeVS (extensible)
* referenceRange.extension contains RefRangeNominal 0..1