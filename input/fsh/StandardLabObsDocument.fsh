Profile: StandardLabObsDocument
Parent: DiagnosticReport
Id: standard-lab-obs-document 
Title: "Standard Lab Obs Document"
Description: "A base profile for all LOINC lab tests that have an attached document or structured text as the result."
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "type"
* identifier ^slicing.rules = #open
* identifier ^slicing.description = "slice for specific, named identifiers"
* identifier MS
* identifier contains 
    accessionIdentifier 0..1 and
    fillerOrderNumber 0..1 and
    placerOrderNumber 0..1
* identifier[accessionIdentifier].type = IDTYPE#ACSN
* identifier[fillerOrderNumber].type = IDTYPE#FILL 
* identifier[placerOrderNumber].type = IDTYPE#PLAC
* performer only Reference(Practitioner or Organization)
* performer ^slicing.discriminator.type = #value
* performer ^slicing.discriminator.path = "Observation.performer"
* performer ^slicing.rules = #open
* performer MS
* performer contains
    responsibleObserver 0..1 and
    performingLaboratory 0..1 and
    performingOrganizationMedicalDirector 0..1
* performer[responsibleObserver] only Reference(Practitioner)
* performer[performingLaboratory] only Reference(Organization)
* performer[performingOrganizationMedicalDirector] only Reference(Practitioner)
* media 0..0
* imagingStudy 0..0
* result 0..0
* code from LOINCDoc_VSET (extensible)
* conclusionCode from AbnormalInterpretation_VSET (extensible)

