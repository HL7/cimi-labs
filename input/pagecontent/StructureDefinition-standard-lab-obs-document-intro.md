### Scope

The Standard Document Lab Profile is intended to be used for lab tests who's values are reported using an attached document.  This profile is based on the DiagnosticReport resource

This profile is **not** based on the Standard Lab Observation base profile because the Observation resource (the basis for the Standard Lab Observation profile) does not allow the attachement data type to be used for the value element.

#### DiagnosticReport.code

This element is constrained to a set of LOINC codes that have a scale of Document (Doc).

#### presentedForm

This is the element in which the lab result document will be placed.

#### Elements constrained to a cardinality of 0

The imagingStudy, result, and media elements have been constrained to a cardinality of 0..0.  The result of Doc types of lab tests will be within the text of the attached document and the others are not pertinent to lab tests.

### Example

The following example is provided to illustrate conformant resource content for this profile.

-[Standard Document Lab Observation](DiagnosticReport-DocuemntLab-example.html)

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
			  <td><a href="ValueSet-abnormal-interpretation-value-set.html">Abnormal Interpretation value set</a></td>
			  <td>This value set contains coded terms that are used to identify the level of abnormality of a lab test.</td>
			</tr>
		</tbody>
	</table>
</div>