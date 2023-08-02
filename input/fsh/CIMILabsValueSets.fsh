ValueSet: StdLabObsCoded_VSET
Id: StdLabObsCoded-value-set 
Title: "Standard Coded Lab Observation Code value set"
Description: "A set of LOINC codes that describe lab tests that are nominal."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where CLASSTYPE = "1" and SCALE_TYP = #Nom

ValueSet: StdLabObsOrdCode_VSET
Id: StdLabObsOrdinal-value-set 
Title: "Standard Coded Ordinal Lab Observation Code value set"
Description: "A set of LOINC codes that describe lab tests that are nominal."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where SCALE_TYP = #Ord and CLASSTYPE = "1"

ValueSet: NullFlavor_VSET
Id: null-flavor-value-set
Title: "Null Flavor value set"
Description: "A set of Snomed CT codes that describe when a test result would not have a value."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true
* SCT#89925002 "Canceled"
* SCT#62604006 "Contaminated"
* SCT#183665006 "Discharged from hospital"
* SCT#723510000 "Entered in error"
* SCT#397933008 "Equipment error/failure"
* SCT#397839006 "Equipment malfunction"
* SCT#125154007 "specimen unsatisfactory for evaluation"
* include codes from system SCT where concept is-a "125154007"

ValueSet: LabResutlCode_VSET
Id: lab-result-code-value-set
Title: "Lab Result Code value set"
Description: "A set of LOINC codes that describe laboratory tests."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true
* include codes from system SCT where concept is-a "46800005"
* include codes from system SCT where concept is-a "167239007"
* include codes from system SCT where concept is-a "115940004"
* SCT#52101004 "Present (qualifier value)"
* SCT#10828004 "Positive (qualifier value)"
* SCT#2667000 "Absent (qualifier value)"
* SCT#260385009 "Negative (qualifier value)"

ValueSet: AbnormalInterpretation_VSET
Id: abnormal-interpretation-value-set
Title: "Abnmormal Interpretation value set"
Description: "A set of Snomed CT codes that describe the abnormality of a lab test result."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true
* SCT#263654008 "Abnormal"
* SCT#371879000 "Abnormally high"
* SCT#371880002 "Abnormally low"
* SCT#24651000205108 "Very abnormal"
* SCT#260360000 "Very high"
* SCT#260362008 "Very low"

ValueSet: LOINCDoc_VSET
Id: loinc-doc-value-set
Title: "LOINC Document class value set"
Description: "A set of LOINC codes that are used for lab tests that are reported using attachments (documents, reports, etc.)"
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where CLASS = "ATTACH.LAB"

ValueSet: StandardLabObsNarrative_VSET
Id: standard-lab-obs-narrative-value-set
Title: "Standard Lab Obs Narrative value set"
Description: "A set of LOINC codes that are used for lab tests with tex-based results."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where SCALE_TYP = #Nar and CLASSTYPE = "1"

ValueSet: OrdinalValueCode_VSET
Id: ordinal-value-code-value-set
Title: "Ordinal Value Code value set"
Description: "A set of Snomed CT codes that are used to describe lab test results that are of an ordinal nature."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true
* SCT#260347006 "+"
* SCT#260348001 "++"
* SCT#260349009 "+++"
* SCT#260350009 "++++"
* SCT#260385009 "Negative"
* SCT#260405006 "Trace (qualifier value)"
* SCT#255507004 "Small (qualifier value)"
* SCT#255508009 "Medium (qualifier value)"
* SCT#255509001 "Large (qualifier value)"

ValueSet: StndLabObsQnCode_VSET
Id: standard-lab-obs-quantitative-value-set
Title: "Standard Lab Obs Quantitative Code value set"
Description: "A set of LOINC codes that are used to identify quantitative types of lab tests."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where SCALE_TYP = #Qn and CLASSTYPE = "1"

ValueSet: UnitsOfMeasure_VSET
Id: units-of-measure-value-set
Title: "Units of Measure value set"
Description: "A set of codes from the UCUM codes system."
* ^experimental = true
* include codes from system UCUM 

ValueSet: AbnmIntNumbericNom_VSET
Id: abnml-int-numeric-nom-value-set
Title: "Abnormal Interpretation Numeric Nominal value set"
Description: "A set of Snomed CT terms that describe the abnormality of numeric laboratory tests, when applicable."
* ^copyright = "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement"
* ^experimental = true
* SCT#263654008 "Abnormal"
* SCT#371879000 "Abnormally high"
* SCT#371880002 "Abnormally low"
* SCT#24651000205108 "Very abnormal"
* SCT#260360000 "Very high"
* SCT#260362008 "Very low"
* SCT#17621005 "Normal"

ValueSet: TiterLabCodes_VSET
Id: titer-lab-codes-value-set
Title: "Titer Lab Codes value set"
Description: "A set of LOINC codes used to identify titer laboratory tests."
* ^copyright = "This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc"
* ^experimental = true
* include codes from system LNC where PROPERTY = #Ratio and CLASSTYPE = "1"

/* ValueSet: RefRangeNom_VSET
Id: reference-range-nom-value-set
Title: "Reference Range Nominal value set"
Description: "A set of Snomed CT terms that describe reference ranges."
* ^experimental = true
 */