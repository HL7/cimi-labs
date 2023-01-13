---
title: Standard Lab Obs Coded
layout: default
active: standard-lab-obs-coded
---

### Scope

The Standard Lab Coded Observation profile is intended to be used for laboratory tests where the results could be describes as terms in a coding system, with displays and identifiers. This profile excludes ordinal types of results which may also be described by a coding system.

#### Observation.code

This element is constrained to a set of LOINC codes that have a LOINC scale of Nominal (Nom).

#### Observaiton.value

This element is constrained to the CodeableConcept data type.

#### Example

The following example is provided to illustrate conformant resource content to this profile

[Standard Lab Obs Coded example](Observation-CodedLab-example.html)

#### Value Sets

<div>
	<table class="grid">
		<thead>
			<tr>
			  <th width="20%">Value Set</th>
			  <th width="40%">Purpose</th>
			</tr>
		</thead>
		<tbody>
			<tr>
			  <td><a href="ValueSet-StdLabobsCoded-value-set.html">Standard Lab Obs Coded value set</a></td>
			  <td>This is a subset of lab LOINC where the scale is Nom.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-lab-result-code-value-set.html">Coded Lab Result value set</a></td>
			  <td>This value set contains terms that are used as values for lab tests that have coded results.  It is not complete.  There are thousand of lab tests with coded results.  It will take time to identify all of the possible values for this set. It will possibly have overlap with some of the values in the Coded Ordinal Result value set.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>