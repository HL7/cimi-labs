Instance: QuantitativeLab-example
InstanceOf: StandardLabObsQuantitative
Description: "An example of a quantitative lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#2345-7
* code.text = "Glucose [Mass/volume] in Serum or Plasma"
* subject.display = "Young, Female 2345"
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueQuantity = 103 'mg/dL' "mg/dL"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(LabTech)
* performer[performingLaboratory] = Reference(ACMELab)
* performer[performingOrganizationMedicalDirector] = Reference(DrDr)

Instance: CodedLab-example
InstanceOf: StandardLabObsCoded
Description: "An example of a coded lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#58437-5
* code.text = "Microorganisms seen [Type] in Urine sediment by Light microscopy"
* subject.display = "Young, Female 2345"
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueCodeableConcept.coding.code = SCT#3764006
* valueCodeableConcept.coding.display = "Trichomonas species"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(LabTech)
* performer[performingLaboratory] = Reference(ACMELab)
* performer[performingOrganizationMedicalDirector] = Reference(DrDr)

Instance: OrdinalLab-example
InstanceOf: StandardLabObsOrdinal
Description: "An example of an ordinal lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#87829-8
* code.text = "Bacteria [Presence] in Urine"
* subject.display = "Young, Female 2345"
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueCodeableConcept.coding.code = SCT#260348001
* valueCodeableConcept.coding.display = "Present ++ out of ++++ (qualifier value)"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(LabTech)
* performer[performingLaboratory] = Reference(ACMELab)
* performer[performingOrganizationMedicalDirector] = Reference(DrDr)

Instance: NarrativeLab-example
InstanceOf: StandardLabObsNarrative
Description: "An example of a narrative lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#53974-2
* code.text = "Erythrocyte morphology [Interpretation] in Urine sediment by Light microscopy Narrative"
* subject.display = "Young, Female 2345"
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueString = "Red cells are mostly normochromic/nomrocytic with 10% having siderotic granule inclusions."
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(LabTech)
* performer[performingLaboratory] = Reference(ACMELab)
* performer[performingOrganizationMedicalDirector] = Reference(DrDr)

Instance: TiterLab-example
InstanceOf: StandardLabObsTiter
Description: "An example of a titer lab test."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* code = LNC#87925-4
* code.text = "Reagin Ab [Titer] in Cerebral spinal fluid by RPR"
* subject.display = "Young, Female 2345"
* encounter.display = "GP Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* valueRatio.numerator.value = 1
* valueRatio.denominator.value = 512
* interpretation = SCT#10828004 "Positive"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver] = Reference(LabTech)
* performer[performingLaboratory] = Reference(ACMELab)
* performer[performingOrganizationMedicalDirector] = Reference(DrDr)

/* Instance: DocumentLab-example
InstanceOf: StandardLabObsDocument
Description: "An example of a lab test where the rsults are reported using a document."
Usage: #example
* status = #final
* category = ObsCat#laboratory
* category.text = "Laboratory"
* code = LNC#33721-2
* code.text = "Bone marrow Pathology biopsy report"
* subject.display = "Young, Female 2345"
* encounter.display = "Hemeoncology Visit"
* effectiveDateTime = "2019-10-16T12:12:29-09:00"
* identifier[accessionIdentifier].value = "TH56231"
* identifier[fillerOrderNumber].value = "12093785"
* identifier[placerOrderNumber].value = "58739021"
* performer[responsibleObserver].display = "LabTech 007"
* performer[performingLaboratory].display = "Acme Psuedo Lab"
* performer[performingOrganizationMedicalDirector].display = "Dr. Dre"
* extension[lab-document].extension[document-url].value = "http://example.org/PatientBoneMarrowReport" */

Instance: LabTech
InstanceOf: Practitioner
Description: "An example of a clinical laboratorian practitioner."
Usage: #example
* identifier.value = "2376"
* name.text = "Sally LabTech"
* qualification.code = Cert#CER 
* qualification.issuer = Reference(ASCP)

Instance: DrDr
InstanceOf: Practitioner
Description: "An example of a physician practitioner"
Usage: #example
* identifier.value = "1357924"
* name.text = "Dr. Doctor"
* qualification.code = Cert#MD 

Instance: ASCP
InstanceOf: Organization
Description: "An example of an organization using the American Society for Clinical Pathology"
Usage: #example
* name = "American Society for Clinical Pathology"

Instance: ACMELab
InstanceOf: Organization
Description: "An example of a performing laboratory"
Usage: #example
* name = "ACME Clinical Laboratories"
* alias = "ACME Lab"
* address.line = "101 South Main St."
* address.city = "Anytown"
* address.state = "MyState"
* address.postalCode = "10101"
* address.country = "USA"
