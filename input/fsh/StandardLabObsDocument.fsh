Profile: StandardLabObsDocument
Parent: StandardLabObs
Id: standard-lab-obs-document 
Title: "Standard Lab Obs Document"
Description: "A base profile for all LOINC lab tests that have an attached document or structured text as the result."
* extension contains
    LabDocument named labDocument 0..1
* code from LOINCDoc_VSET (extensible)