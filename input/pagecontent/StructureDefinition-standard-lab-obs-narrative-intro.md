---
title: Standard Lab Obs Narrative
layout: default
active: standard-lab-obs-narrative
---

### Scope

The Standard Lab Coded Narrative profile is intended to be used for laboratory tests where the results are reported using strings of text.

#### Observation.code

This element is constrained to a set of LOINC codes that have a LOINC scale of Narrative (Nar).

#### Observaiton.value

This element is constrained to the string data type.

#### Example

The following example is provided to illustrate conformant resource content to this profile

-[Standard Lab Coded Observation](Observation-NarrativeLab-example.html)

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
			  <td><a href="ValueSet-standard-lab-obs-narrative-value-set.html">Standard Lab Obs Narrative value set</a></td>
			  <td>This is a subset of lab LOINC where the scale is Nar.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-null-flavor-value-set.html">Null Flavor value set</a></td>
			  <td>This value set contains terms that are used for the dataAbsentReason element.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>