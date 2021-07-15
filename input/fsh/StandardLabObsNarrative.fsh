Profile: StandardLabObsNarrative
Parent: StandardLabObs
Id: standard-lab-obs-narrative 
Title: "Standard Lab Obs Narrative"
Description: "The base profile for all LOINC lab tests that have textual results in a string format."
* code from StndLabObsNarCodeVS (extensible)
* value[x] only string
* dataAbsentReason from NullFlavorVS (extensible)
* interpretation from AbnmlIntpCodeVS (extensible)
* referenceRange.extension contains RefRangeNominal 0..1