Extension: RefRangeNominal
Id: ref-range-nominal 
Title: "Reference Range Nominal"
Description: "This is an extension for the Reference Range element in Observation and is used to capture coded types of reference ranges."
* value[x] only CodeableConcept
//* valueCodeableConcept from RefRangeNom_VSET (preferred)

Extension: LabDocument
Id: lab-document
Title: "Lab Document extension"
Description: "This extension is to create a means by which a laboratory test that has been reported using an attached document may be done."
* extension contains
    AttachedDocument named attachedDocument 0..1 and
    DocumentURL named documentURL 0..1

Extension: AttachedDocument
Id: attached-document
Title: "Attached Document"
Description: "An extension for attaching a document to an observation"
* value[x] only Attachment 

Extension: DocumentURL
Id: document-url
Title: "Document URL"
Description: "An extension that records the URL for an attached document."
* value[x] only uri 