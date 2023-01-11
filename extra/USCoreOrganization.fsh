Alias: $us-core-usps-state = http://hl7.org/fhir/us/core/ValueSet/us-core-usps-state

Profile: USCoreOrganization
Parent: Organization
Id: us-core-organization
Title: "US Core Organization Profile"
Description: "Defines basic constraints and extensions on the Organization resource for use with other US Core resources"
* ^version = "3.1.1"
* ^status = #active
* ^experimental = false
* ^date = "2020-06-29"
* ^publisher = "HL7 US Realm Steering Committee"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://www.healthit.gov"
* ^jurisdiction = urn:iso:std:iso:3166#US "United States of America"
* . ^mustSupport = false
* identifier ..* MS
* identifier only Identifier
* identifier ^slicing.discriminator.type = #pattern
* identifier ^slicing.discriminator.path = "$this"
* identifier ^slicing.rules = #open
* identifier ^comment = "NPI preferred."
* identifier.system 0..1 MS
* identifier.system only uri
* identifier.value 0..1 MS
* identifier.value only string
* identifier contains
    NPI 0..1 MS and
    CLIA 0..1
* identifier[NPI] only Identifier
* identifier[NPI] ^short = "National Provider Identifier (NPI)"
* identifier[NPI] ^patternIdentifier.system = "http://hl7.org/fhir/sid/us-npi"
* identifier[CLIA] only Identifier
* identifier[CLIA] ^short = "Clinical Laboratory Improvement Amendments (CLIA) Number for laboratories"
* identifier[CLIA] ^patternIdentifier.system = "urn:oid:2.16.840.1.113883.4.7"
* identifier[CLIA] ^mustSupport = false
* active 1..1 MS
* active only boolean
* name 1..1 MS
* name only string
* telecom 0..* MS
* telecom only ContactPoint
* address 0..* MS
* address only Address
* address.line 0..4 MS
* address.line only string
* address.city 0..1 MS
* address.city only string
* address.state 0..1 MS
* address.state only string
* address.state from $us-core-usps-state (extensible)
* address.state ^binding.description = "Two letter USPS alphabetic codes."
* address.postalCode 0..1 MS
* address.postalCode only string
* address.postalCode ^short = "US Zip Codes"
* address.country 0..1 MS
* address.country only string

Mapping: servd
Id: servd
Title: "ServD"
Source: USCoreOrganization
Target: "http://www.omg.org/spec/ServD/1.0/"
* identifier -> "n/a"
* identifier[NPI] -> "n/a"
* identifier[CLIA] -> "n/a"
* name -> "./PrimaryAddress and ./OtherAddresses"
* address -> "n/a"
* address.state -> "./Sites"