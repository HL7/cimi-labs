Profile: USCorePractitioner
Parent: Practitioner
Id: us-core-practitioner
Title: "US Core Practitioner Profile"
Description: "The practitioner(s) referenced in US Core profiles."
* ^version = "3.1.1"
* ^status = #active
* ^experimental = false
* ^date = "2019-09-02"
* ^publisher = "HL7 US Realm Steering Committee"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.healthit.gov"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^definition = "This is basic constraint on provider for use in US Core resources."
* . ^alias = "Provider"
* . ^mustSupport = false
* identifier 1..* MS
* identifier only Identifier
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^comment = "NPI must be supported as the identifier system in the US, Tax id is allowed, Local id is allowed in addition to an another identifier supplied by a jurisdictional authority such as a practitioner's *Drug Enforcement Administration (DEA)* number."
* identifier.system 1..1 MS
* identifier.system only uri
* identifier.value 1..1 MS
* identifier.value only string
* identifier contains NPI 0..1 MS
* identifier[NPI] only Identifier
* identifier[NPI] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-npi"
* name 1..* MS
* name only HumanName
* name.family 1..1 MS
* name.family only string