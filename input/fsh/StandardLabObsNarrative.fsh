Profile: StandardLabObsNarrative
Parent: StandardLabObs
Id: standard-lab-obs-narrative 
Title: "Standard Lab Obs Narrative"
Description: "The base profile for all LOINC lab tests that have textual results in a string format."
* code from StandardLabObsNarrative_VSET (extensible)
* value[x] only string
* dataAbsentReason from NullFlavor_VSET (extensible)
* interpretation from AbnormalInterpretation_VSET (extensible)
* referenceRange.extension contains 
    RefRangeNominal named RefRangeNominal 0..1 MS