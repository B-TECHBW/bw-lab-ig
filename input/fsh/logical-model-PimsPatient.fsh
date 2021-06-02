Instance: PIMSPatient
InstanceOf: StructureDefinition
Description: "Logical Model of PIMS patient"
Title: "PIMS Patient" // user-friendly name
Usage: #definition

* insert PublisherContextInstance
* name = "PIMSPatient" // computer ready name
* url = "http://https://b-techbw.github.io/emr-lis-bw-ig/StructureDefinition/PIMSPatient"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "PIMSPatient"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

* differential.element[0].id = "PIMSPatient"
* differential.element[0].path = "PIMSPatient"
* differential.element[0].definition = "PIMS Patient Instance"
* differential.element[0].min = 0
* differential.element[0].max = "*"

* differential.element[1].id = "PIMSPatient.IDno"
* differential.element[1].path = "PIMSPatient.IDno"
* differential.element[1].short = "PIMS Patient ID"
* differential.element[1].definition = "Patient ID number for PIMS"
* differential.element[1].type.code = #string
* differential.element[1].min = 0
* differential.element[1].max = "1"

* differential.element[2].id = "PIMSPatient.IDType"
* differential.element[2].path = "PIMSPatient.IDType"
* differential.element[1].short = "PIMS Patient ID Type"
* differential.element[1].definition = "ID Type for PIMSPatient.IDno"
* differential.element[2].type.code = #Coding
* differential.element[2].min = 0
* differential.element[2].max = "1"
// * differential.element[8].binding.valueSet = Canonical(PimsIdentifierType)
// * differential.element[8].binding.strength = #required

* differential.element[2].id = "PIMSPatient.Active"
* differential.element[2].path = "PIMSPatient.Active"
* differential.element[1].short = "Active Flag"
* differential.element[1].definition = "Active Flag for PIMS Patient"
* differential.element[2].type.code = #boolean
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[2].id = "PIMSPatient.MaritalStatusID"
* differential.element[2].path = "PIMSPatient.MaritalStatusID"
* differential.element[1].short = "PIMS Patient Marital Status"
* differential.element[1].definition = "Marital Status for PIMS Patient"
* differential.element[2].type.code = #boolean
* differential.element[2].min = 0
* differential.element[2].max = "1"

* differential.element[2].id = "PIMSPatient.GenderID"
* differential.element[2].path = "PIMSPatient.Active"
* differential.element[1].short = "Active Flag"
* differential.element[1].definition = "Active Flag for PIMS Patient"
* differential.element[2].type.code = #boolean
* differential.element[2].min = 0
* differential.element[2].max = "1"


* differential.element[2].id = "PIMSPatient.Active"
* differential.element[2].path = "PIMSPatient.Active"
* differential.element[1].short = "Active Flag"
* differential.element[1].definition = "Active Flag for PIMS Patient"
* differential.element[2].type.code = #boolean
* differential.element[2].min = 0
* differential.element[2].max = "1"

