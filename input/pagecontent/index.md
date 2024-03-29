---
title: Home
layout: default
active: index
---

_For previous release notes, see the [history page](history.html)_

### Introduction

Clinical laboratory assessments (lab tests) are observations made about an individual based on a specimen or specimens collected from the subject and analyzed by clinical laboratory scientists, physicians, or other qualified personnel, using highly complex, moderately complex, or simple instrumentation.  Lab tests result in quantitative, qualitative, narrative, ratios, titration, and othere types of values.

### Scope

This Laboratory Results Implementation guide was created to more fully describe the standard elements needed to support both semantic and syntactic exchange of laboratory information, to include subtypes of lab tests such as quantitative, ordinal, titer, narrative, coded, and other typs of lab tests.

Microbiology lab tests are not included in this implementation guide.  The elements of microbiology tests are different from the others listed and require further specialization of the FHIR resources and a separate implementation guide.

#### Realm

Currently this IG falls within the US Realm.

#### Must Support

All elements flagged as *"must support"* within profiles in this implementation guide must abide the following rules:

* The system must be able to store and retrieve the element.
* The system must display the element to the user.
* The system must allow the user to capture the element.
* The element must appear in an output report if present.

##### Each Observation must have

1. a status (Observation.status)
2. a category code of 'laboratory' (Observation.category)
3. an observation code (Observation.code) that defines what is being measured.
    * LOINC was the system chosen for the observation code to align with Untied States Core Data for Interoperabiltiy (USCDI). Implementers that need to use a different code system should map to LOINC accordingly.
4. a patient (Observation.subject)
5. a time (Observation.effective, a dateTime with at least Year, Month, Day, Hour, and minutes. Seconds may be zero filled.  A time zone must be provided.) or time period (start dateTime and end dateTime) indicating when the measurement was taken or over which period it was taken.
6. in accordance with the Observation base resource, the Observation.dataAbsentReason field may have a value **only when** there is **not** a value in the Observation.value field.

### Acknowledgements

**This Implementation Guide was made possible by the thoughtful contributions of the following people:**

*The [HL7 CIMI Work Group](https://confluence.hl7.org/display/CIMI/Clinical+Information+Modeling+Initiative)*

*The [HL7 Orders and Observations Work Group](https://confluence.hl7.org/display/OO/Orders+and+Observations)*

* *Nathan Davis, Graphite Health*
* *Patrick Langford, Graphite Health*

### Publisher

This implementation guide was edited and published by the HL7 Clinical Information Modeling Initiative.  Contact information is provided on [this Confluence page](https://confluence.hl7.org/display/CIMI/Clinical+Information+Modeling+Initiative).

{% include link-list.md %}