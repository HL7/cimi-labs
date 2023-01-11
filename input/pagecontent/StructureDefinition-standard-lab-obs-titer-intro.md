### Scope

The Standard Lab Titer Observation profile is intended to be used for labratory tests who's values could be reported using a numerator and denominator, or in otherwords a ratio of a constituent to a whole volume.  These results are numeric but do not typically have units of measure however, LOINC provides example units of measure of "{titer}".

#### Observation.code

This element is constrained to LOINC codes that have example units of measure of "{titer}".

#### Observaiton.value

This element is constrained to the Ratio data type.

#### Example

The following example is provided to illustrate conformant resource content to this profile

-[Standard Lab Coded Observation](Observation-TiterLab-example.html)

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
			  <td><a href="ValueSet-titer-lab-codes-value-set.html">Standard Lab Obs Coded value set</a></td>
			  <td>This is a subset of lab LOINC where the Porperty is Ratio.  This set wil most likely be modified with use, the filter of "LOINC codes where Property = Ratio" may be either too broad or too narrow.</td>
			</tr>
			<tr>
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>