Profile: StandardLabObs
Parent: USCoreLab
Id: standard-lab-obs
Title: "Standard Laboratory Observation Base profile"
Description: "An abstract base profile on which other sub-types will be built."
* ^abstract = true
//slicing rules for identifier
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
//slicing rules for performer
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
* dataAbsentReason from NullFlavor_VSET (extensible)
