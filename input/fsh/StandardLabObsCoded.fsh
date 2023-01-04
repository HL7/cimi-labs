Profile: StandardLabObsCoded
Parent: StandardLabObs
Id: standard-lab-obs-coded 
Title: "Standard Lab Obs Coded"
Description: "The base profile for all lab tests with coded results (excluding ordinal)."
* code from StdLabObsCoded_VSET (extensible)
* value[x] only CodeableConcept
* valueCodeableConcept from LabResutlCode_VSET (extensible)
* interpretation from AbnormalInterpretation_VSET (extensible)
* referenceRange.extension contains 
    RefRangeNominal named RefRangeNominal 0..1 MS