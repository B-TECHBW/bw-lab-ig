// Instance: BTPatient
// InstanceOf: StructureDefinition
// Description: "Logical Model of Botswana Patient"
// Title: "Botswana Patient" // user-friendly name
// Usage: #definition

// * insert PublisherContextInstance
// * name = "BTPatient" // computer ready name
// * url = "http://https://b-techbw.github.io/emr-lis-bw-ig/StructureDefinition/BTPatient"
// * version = "0.1.0"
// * kind = #logical
// * abstract = false
// * type = "BTPatient"
// * baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
// * derivation = #specialization


// * mapping[0].identity = "PIMS"
// * mapping[0].name = "PIMS 2 V4 Data Model"
// // * mapping[1].identity = "LOINC"
// // * mapping[1].uri = $LNC
// // * mapping[1].name = "Logical Observation Identifiers Names and Codes"

// * differential.element[0].id = "BTPatient"
// * differential.element[0].path = "BTPatient"
// * differential.element[0].definition = "BT Patient Instance"
// * differential.element[0].min = 0
// * differential.element[0].max = "*"

// * differential.element[1].id = "BTPatient.IDno"
// * differential.element[1].path = "BTPatient.IDno"
// * differential.element[1].short = "BT Patient ID"
// * differential.element[1].definition = "Patient ID"
// * differential.element[1].type.code = #string
// * differential.element[1].min = 0
// * differential.element[1].max = "1"
// * differential.element[1].mapping[0].identity = "PIMS"
// * differential.element[1].mapping[0].map = "Patient.tblPatient.IDno"
// * differential.element[1].mapping[1].identity = "LOINC"
// * differential.element[1].mapping[1].map = TODO

// * differential.element[2].id = "BTPatient.IDType"
// * differential.element[2].path = "BTPatient.IDType"
// * differential.element[1].short = "BT Patient ID Type"
// * differential.element[1].definition = "ID Type for BTPatient.IDno"
// * differential.element[2].type.code = #Coding
// * differential.element[2].min = 0
// * differential.element[2].max = "1"
// * differential.element[2].mapping[0].identity = "PIMS"
// * differential.element[2].mapping[0].map = "Patient.tblPatient.IDType"
// // * differential.element[8].binding.valueSet = Canonical(PimsIdentifierType)
// // * differential.element[8].binding.strength = #required

// * differential.element[3].id = "BTPatient.Active"
// * differential.element[3].path = "BTPatient.Active"
// * differential.element[3].short = "Active Flag"
// * differential.element[3].definition = "Active Flag for Patient"
// * differential.element[3].type.code = #boolean
// * differential.element[3].min = 0
// * differential.element[3].max = "1"
// * differential.element[3].mapping[0].identity = "PIMS"
// * differential.element[3].mapping[0].map = "Patient.tblPatient.Active"

// * differential.element[4].id = "BTPatient.MaritalStatusID"
// * differential.element[4].path = "BTPatient.MaritalStatusID"
// * differential.element[4].short = "PIMS Patient Marital Status"
// * differential.element[4].definition = "Marital Status for PIMS Patient"
// * differential.element[4].type.code = #Coding
// * differential.element[4].min = 0
// * differential.element[4].max = "1"
// * differential.element[3].mapping[0].identity = "PIMS"
// * differential.element[3].mapping[0].map = "Patient.tblPatient.MaritalStatusID"

// * differential.element[2].id = "BTPatient.GenderID"
// * differential.element[2].path = "BTPatient.GenderID"
// * differential.element[1].short = "Gender"
// * differential.element[1].definition = "Gender"
// * differential.element[2].type.code = #Coding
// * differential.element[2].min = 0
// * differential.element[2].max = "1"
// * differential.element[3].mapping[0].identity = "PIMS"
// * differential.element[3].mapping[0].map = "Patient.tblPatient.GenderID"


