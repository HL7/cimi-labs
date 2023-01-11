### Scope

The Standard Lab Ordinal profile is intended to be used for laboratory tests where the results could be described as terms in a coding system, with displays and identifiers. This is similar to the Standard Lab Coded profile but is constrained to ordinal lab tests only.

#### Observation.code

This element is constrained to a set of LOINC codes that have a LOINC scale of Ordinal (Ord).

#### Observaiton.value

This element is constrained to the CodeableConcept data type.

#### Example

The following example is provided to illustrate conformant resource content to this profile

-[Standard Lab Coded Observation](Observation-OrdinalLab-example.html)

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
			  <td><a href="ValueSet-StdLabObsOrdinal-value-set.html">Standard Lab Obs Ordinal value set</a></td>
			  <td>This is a subset of lab LOINC where the scale is Ord.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-ordinal-value-code-value-set.html">Coded ordinal Lab Result value set</a></td>
			  <td>This value set contains coded terms that are used specifically for ordinal type lab tests.  These are values such as 1+, 2+, Trace, Moderate, Large, etc.  This value set is not complete and will be augmented when new or missing values are identified.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>