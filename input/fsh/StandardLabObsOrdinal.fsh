Profile: StandardLabObsOrdinal
Parent: StandardLabObs
Id: standard-lab-obs-ordinal 
Title: "Standard Lab Obs Ordinal"
Description: "The base profile for all LOINC lab tests that have ordinal results."
* code from StdLabObsOrdCode_VSET
* value[x] only CodeableConcept
* valueCodeableConcept from OrdinalValueCode_VSET (extensible)
* interpretation from AbnormalInterpretation_VSET (extensible)
* referenceRange.extension contains 
    RefRangeNominal named RefRangeNominal 0..1 MS