Instance: patient-example
InstanceOf: USCorePatient
Description: "Patient example"
Usage: #example
* meta.security = EX#HTEST "test health data"
* extension[0].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-race"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2106-3 "White"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#1002-5 "American Indian or Alaska Native"
* extension[=].extension[+].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2028-9 "Asian"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Mixed"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity"
* extension[=].extension[0].url = "ombCategory"
* extension[=].extension[=].valueCoding = urn:oid:2.16.840.1.113883.6.238#2135-2 "Hispanic or Latino"
* extension[=].extension[+].url = "text"
* extension[=].extension[=].valueString = "Hispanic or Latino"
* extension[+].url = "http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex"
* extension[=].valueCode = #F
* identifier.use = #usual
* identifier.type = EX#MR "Medical record number"
* identifier.type.text = "Medical Record Number"
* identifier.system = "http://hospital.smarthealthit.org"
* identifier.value = "1032702"
* active = true
* name.family = "Shaw"
* name.given[0] = "Amy"
* name.given[+] = "V."
* telecom[0].system = #phone
* telecom[=].value = "555-555-5555"
* telecom[=].use = #home
* telecom[+].system = #email
* telecom[=].value = "amy.shaw@example.com"
* gender = #female
* birthDate = "1954-02-20"
* address.line = "49 Meadow St"
* address.city = "Mounds"
* address.state = "OK"
* address.postalCode = "74047"
* address.country = "US"

Instance: practitioner-example
InstanceOf: USCorePractitioner
Description: "Practitioner example"
Usage: #example
* meta.security = EX#HTEST "test health data"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339108"
* name.family = "Bone"
* name.given = "Ronald"
* name.prefix = "Dr"
* address.use = #home
* address.line = "1003 Healthcare Drive"
* address.city = "Amherst"
* address.state = "MA"
* address.postalCode = "01002"

Instance: practitioner-example2
InstanceOf: USCorePractitioner
Description: "Practitioner example 2"
Usage: #example
* meta.security = EX#HTEST "test health data"
* identifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier.value = "9941339108"
* name.family = "Example"
* name.given = "Sheila"
* name.prefix = "Ms"
* address.use = #home
* address.line = "1003 Healthcare Drive"
* address.city = "Salt Lake City"
* address.state = "UT"
* address.postalCode = "84010"

Instance: organization-example
InstanceOf: Organization
Description: "Organization example"
Usage: #example
* identifier.value = "1234765"
* name = "Acme Clinical Labs"
* telecom.value = "1-800-spe-cimn"
* address.line = "1 Infinity Loop"
* address.city = "Anytown"
* address.state = "Allstates"
* address.country = "USA"

Instance: QuantitativeLab-example
InstanceOf: StandardLabObsQuantitative
Description: "An example of a quantitative lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#2345-7
* code.text = "Glucose [Mass/volume] in Serum or Plasma"
* subject = Reference(patient-example)
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 103 'mg/dL' "mg/dL"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)

Instance: CodedLab-example
InstanceOf: StandardLabObsCoded
Description: "An example of a coded lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#58437-5
* code.text = "Microorganisms seen [Type] in Urine sediment by Light microscopy"
* subject = Reference(patient-example)
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueCodeableConcept.coding.code = SCT#3764006
* valueCodeableConcept.coding.display = "Trichomonas species"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)

Instance: OrdinalLab-example
InstanceOf: StandardLabObsOrdinal
Description: "An example of an ordinal lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#87829-8
* code.text = "Bacteria [Presence] in Urine"
* subject = Reference(patient-example)
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueCodeableConcept.coding.code = SCT#260348001
* valueCodeableConcept.coding.display = "Present ++ out of ++++ (qualifier value)"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)

Instance: NarrativeLab-example
InstanceOf: StandardLabObsNarrative
Description: "An example of a narrative lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#53974-2
* code.text = "Erythrocyte morphology [Interpretation] in Urine sediment by Light microscopy Narrative"
* subject = Reference(patient-example)
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueString = "Red cells are mostly normochromic/nomrocytic with 10% having siderotic granule inclusions."
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)

Instance: TiterLab-example
InstanceOf: StandardLabObsTiter
Description: "An example of a titer lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#87925-4
* code.text = "Reagin Ab [Titer] in Cerebral spinal fluid by RPR"
* subject = Reference(patient-example)
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueRatio.numerator.value = 1
* valueRatio.denominator.value = 512
* interpretation = SCT#10828004 "Positive"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)

Instance: DocumentLab-example
InstanceOf: StandardLabObsDocument
Description: "An example of a lab test where the rsults are reported using a document."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#33721-2
* code.text = "Bone marrow Pathology biopsy report"
* subject = Reference(patient-example)
* encounter.display = "Hemeoncology Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(practitioner-example2)
* performer[performingLaboratory] = Reference(organization-example)
* performer[performingOrganizationMedicalDirector] = Reference(practitioner-example)
* presentedForm.contentType = #PDF 
* presentedForm.url = "http://example.org/PatientBoneMarrowReport"