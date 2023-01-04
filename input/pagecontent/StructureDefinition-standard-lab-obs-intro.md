### Scope

The Standard Lab Observation profile is an abstract base profile used to inform its subtypes.  This profile contains all of the common extensions and constraints that apply to all of the specfic subtypes, coded, narrative, ordinal, quantitative, and titer.

#### A word about document type of lab tests

There are many LOINC codes that describe lab tests who's results or values are reported within an attached document.  These tests will not use a profile derived from this base.  This is due to the fact that the Observation resource does not allow the *attachement* data type within the value element.  These tests will use a profile of teh DiagnosticReport resource, further explained on that page.

#### Observation.code

This element is not constrained in this profile but is consstrained by its subtypes.

#### Observaiton.value

This will also be constrained by the subtypes.

#### Example

Since this is an abstract base type and not inted for instantiating data, there is no example for this.