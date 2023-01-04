Alias: $us-core-race = http://hl7.org/fhir/us/core/StructureDefinition/us-core-race
Alias: $us-core-ethnicity = http://hl7.org/fhir/us/core/StructureDefinition/us-core-ethnicity
Alias: $us-core-birthsex = http://hl7.org/fhir/us/core/StructureDefinition/us-core-birthsex
Alias: $birthsex = http://hl7.org/fhir/us/core/ValueSet/birthsex
Alias: $us-core-usps-state = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state
Alias: $simple-language = http://hl7.org/fhir/us/core/ValueSet/simple-language

Profile: USCorePatient
Parent: Patient
Id: us-core-patient
Title: "US Core Patient Profile"
Description: "Defines constraints and extensions on the patient resource for the minimal set of data to query and retrieve patient demographic information."
* ^version = "3.1.1"
* ^experimental = false
* ^date = "2020-06-27"
* ^publisher = "HL7 US Realm Steering Committee"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.healthit.gov"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^definition = "The US Core Patient Profile is based upon the core FHIR Patient Resource and designed to meet the applicable patient demographic data elements from the 2015 Edition Common Clinical Data Set."
* . ^mustSupport = false
* extension contains
    $us-core-race named race 0..1 MS and
    $us-core-ethnicity named ethnicity 0..1 MS and
    $us-core-birthsex named birthsex 0..1 MS
* extension[birthsex].value[x] only code
* extension[birthsex].valueCode from $birthsex (required)
* extension[birthsex] ^binding.description = "Code for sex assigned at birth"
* identifier 1..* MS
* identifier only Identifier
* identifier.system 1..1 MS
* identifier.system only uri
* identifier.value 1..1 MS
* identifier.value only string
* identifier.value ^short = "The value that is unique within the system."
* name 1..* MS
* name only HumanName
* name obeys us-core-8
* name.family 0..1 MS
* name.family only string
* name.family ^condition = "us-core-8"
* name.given 0..* MS
* name.given only string
* name.given ^condition = "us-core-8"
* telecom 0..* MS
* telecom.system 1..1 MS
* telecom.system from ContactPointSystem (required)
* telecom.system ^binding.description = "Telecommunications form for contact point."
* telecom.value 1..1 MS
* telecom.use 0..1 MS
* telecom.use from ContactPointUse (required)
* gender 1..1 MS
* gender only code
* gender from AdministrativeGender (required)
* birthDate 0..1 MS
* birthDate only date
* address 0..* MS
* address.line 0..* MS
* address.city 0..1 MS
* address.state 0..1 MS
* address.state from $us-core-usps-state (extensible)
* address.state ^binding.description = "Two Letter USPS alphabetic codes."
* address.postalCode 0..1 MS
* address.postalCode ^short = "US Zip Codes"
* address.postalCode ^alias = "Zip Code"
* address.period 0..1 MS
* communication 0..* MS
* communication.language 1..1 MS
* communication.language only CodeableConcept
* communication.language from $simple-language (extensible)

Invariant: us-core-8
Description: "Either Patient.name.given and/or Patient.name.family SHALL be present or a Data Absent Reason Extension SHALL be present."
Severity: #error
Expression: "(family.exists() or given.exists()) xor extension.where(url='http://hl7.org/fhir/StructureDefinition/data-absent-reason').exists()"
XPath: "(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason' and not(/f:family or /f:given)) or (not(/f:extension/@url='http://hl7.org/fhir/StructureDefinition/data-absent-reason') and (/f:family or /f:given))"

// WARNING: The following Mapping may be incomplete since the original USCorePatientProfile
// StructureDefinition was missing the mapping entry for argonaut-dq-dstu2.
// Please review this and add the following properties as necessary: Target, Title, Description
Mapping: argonaut-dq-dstu2
Id: argonaut-dq-dstu2
Source: USCorePatient
* -> "Patient"
* extension[race] -> "Patient.extension"
* extension[ethnicity] -> "Patient.extension"
* extension[birthsex] -> "Patient.extension"
* identifier -> "Patient.identifier"
* identifier.system -> "Patient.identifier.system"
* identifier.value -> "Patient.identifier.value"
* name -> "Patient.name"
* name.family -> "Patient.name.family"
* name.given -> "Patient.name.given"
* telecom -> "NA"
* telecom.system -> "NA"
* telecom.value -> "NA"
* telecom.use -> "NA"
* gender -> "Patient.gender"
* birthDate -> "Patient.birthDate"
* address -> "Patient.birthDate"
* address.line -> "NA"
* address.city -> "NA"
* address.state -> "NA"
* address.postalCode -> "NA"
* address.period -> "NA"
* communication -> "Patient.communication"
* communication.language -> "Patient.communication.language"