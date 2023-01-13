---
title: Standard Lab Obs Quantitative
layout: default
active: standard-lab-obs-quant
---

### Scope

The Standard Lab Quantitative profile is intended to be used for laboratory tests where the results are numeric, with varying levels of precision.  Many lab tests have numeric results that are whole integers only, e.g. serum glucose.  others are more precise, e.g. serum potassium of 5.2.

These numeric lab tests may or may not have units of measure.  Serum glucose uses mg/dL, serum potassium uses mmol/L.  International Normalization Ratio (INR) is unit-less.

#### Observation.code

This element is constrained to a set of LOINC codes that have a LOINC scale of quantitative (Qn).

#### Observaiton.value

This element is constrained to the quantity data type.  Due to the possibility of unit-less values, the quantity.code (the coded form of the unit of measure) is *not* constrained in this profile.

#### Example

The following example is provided to illustrate conformant resource content to this profile

-[Standard Lab Coded Observation](Observation-QuantitativeLab-example.html)

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
			  <td><a href="ValueSet-standard-lab-obs-quantitative-value-set.html">Standard Lab Obs Quantitative value set</a></td>
			  <td>This is a subset of lab LOINC where the scale is Qn.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-units-of-measure-value-set.html">Units of Measure value set</a></td>
			  <td>This si currently the entire UCUm code system. It will be pared down at a later date to represent only those terms needed for lab tests.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>