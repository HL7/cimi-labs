### Scope

The Standard Lab Coded Observation profile is intended to be used for laboratory tests where the results could be describes as terms in a coding system, with displays and identifiers. This profile excludes ordinal types of results which may also be described by a coding system.

#### Observation.code

This element is constrained to a set of LOINC codes that have a LOINC scale of Nominal (Nom).

#### Observaiton.value

This element is constrained to the CodeableConcept data type.

#### Example

The following example is provided to illustrate conformant resource content to this profile

-[Standard Lab Coded Observation](Observation-CodedLab-example.html)