Instance: BwLabDataDictionary
InstanceOf: StructureDefinition
Description: "Botswana Laboratory Data Dictionary - Logical Model"
Title: "Botswana Lab Data Dictionary" // user-friendly name
Usage: #definition

* insert PublisherContextInstance
* name = "BwLabDataDictionary" // computer ready name
* url = "http://b-techbw.github.io//StructureDefinition/BwLabDataDictionary"
* version = "0.1.0"
* kind = #logical
* abstract = false
* type = "EmrLisDataDictionary"
* baseDefinition = "http://hl7.org/fhir/StructureDefinition/Element"
* derivation = #specialization

// Systems To Map
* mapping[+].identity = "PIMS"
* mapping[=].name = "PIMS 2 V4"
* mapping[+].identity = "FHIR-R4"
* mapping[=].name = "FHIR Release 4"

/**
    Definitions & Mappings
*/ 
* differential.element[+].id = "EmrLisDataDictionary"
* differential.element[=].path = "EmrLisDataDictionary"
* differential.element[=].definition = "EmrLisDataDictionary"
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = ""
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = ""

// Patient
* differential.element[+].id = "EmrLisDataDictionary.Patient"
* differential.element[=].path = "EmrLisDataDictionary.Patient"
* differential.element[=].short = "EMR-LIS Patient Logical Model"
* differential.element[=].definition = "Logical model of EMR-LIS Patient"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient"

* differential.element[+].id = "EmrLisDataDictionary.Patient.NationalID"
* differential.element[=].path = "EmrLisDataDictionary.Patient.NationalID"
* differential.element[=].short = "National Patient Identification Number"
* differential.element[=].definition = "Main national-level identification number (Omang or Passport)"
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.IDNo; Patient.tblPatient.IDNoType"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.identifier"

* differential.element[+].id = "EmrLisDataDictionary.Patient.Active"
* differential.element[=].path = "EmrLisDataDictionary.Patient.Active"
* differential.element[=].short = "Patient Active Flag"
* differential.element[=].definition = "Flag for distinguishing between active and not active Patients"
* differential.element[=].type.code = #CodeableConcept
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatientProgramActivity"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.active"

* differential.element[+].id = "EmrLisDataDictionary.Patient.MaritalStatus"
* differential.element[=].path = "EmrLisDataDictionary.Patient.MaritalStatus"
* differential.element[=].short = "Marital Status"
* differential.element[=].definition = "Marital Status"
* differential.element[=].type.code = #CodeableConcept
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.MartitalStatusID; Patient.tblkMaritalStatus"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.maritalStatus"

* differential.element[+].id = "EmrLisDataDictionary.Patient.Address"
* differential.element[=].path = "EmrLisDataDictionary.Patient.Address"
* differential.element[=].short = "Patient Address"
* differential.element[=].definition = "Patient Address"
* differential.element[=].type.code = #Address
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblAddress; Patient.tblkAddressType"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.address"

* differential.element[+].id = "EmrLisDataDictionary.Patient.birthDate"
* differential.element[=].path = "EmrLisDataDictionary.Patient.birthDate"
* differential.element[=].short = "Patient Date of Birth"
* differential.element[=].definition = "Patient Date of Birth"
* differential.element[=].type.code = #date
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.DOB"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.birthDate"

* differential.element[+].id = "EmrLisDataDictionary.Patient.birthDateType"
* differential.element[=].path = "EmrLisDataDictionary.Patient.birthDateType"
* differential.element[=].short = "Birth Date Type"
* differential.element[=].definition = "Type of Birth Date"
* differential.element[=].type.code = #CodeableConcept
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.DOBType"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "TODO"

* differential.element[+].id = "EmrLisDataDictionary.Patient.Contact"
* differential.element[=].path = "EmrLisDataDictionary.Patient.Contact"
* differential.element[=].short = "Patient Contact Information"
* differential.element[=].definition = "Patient Contact Information"
* differential.element[=].type.code = #ContactPoint
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblContactDetail"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.telecom"

* differential.element[+].id = "EmrLisDataDictionary.Patient.Name"
* differential.element[=].path = "EmrLisDataDictionary.Patient.Name"
* differential.element[=].short = "Patient Name"
* differential.element[=].definition = "Patient Name"
* differential.element[=].type.code = #HumanName
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.Surname; Patient.tblPatient.Firstname; Patient.tblPatient.Middlename"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.name"

* differential.element[+].id = "EmrLisDataDictionary.Patient.GenderID"
* differential.element[=].path = "EmrLisDataDictionary.Patient.GenderID"
* differential.element[=].short = "Gender"
* differential.element[=].definition = "Gender"
* differential.element[=].type.code = #CodeableConcept
// * differential.element[=].binding.valueSet = TODO
* differential.element[=].binding.strength = #extensible
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Patient.tblPatient.GenderID; Patient.tblkGender"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Patient.gender"

// Lab Order
* differential.element[+].id = "EmrLisDataDictionary.LabOrder"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder"
* differential.element[=].short = "EMR-LIS Lab Order Logical Model"
* differential.element[=].definition = "Logical model of EMR-LIS LabOrder"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder; Laboratory.tblLabOrderProfile"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task; ServiceRequest"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.Patient"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.Patient"
* differential.element[=].short = "Lab Order Patient"
* differential.element[=].definition = "The subject of the lab order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.PatientID"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.for, ServiceRequest.subject"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.Requester"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.Requester"
* differential.element[=].short = "Lab Order Requester"
* differential.element[=].definition = "The requester of the lab order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.RequesterID"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.owner, ServiceRequest.requester"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.OrderDate"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.OrderDate"
* differential.element[=].short = "Lab Order Date"
* differential.element[=].definition = "Date Lab Order was authored on"
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.LabOrderDate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.authoredOn, ServiceRequest.authoredOn"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.SampleDate"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.SampleDate"
* differential.element[=].short = "Scheduled Sample Date"
* differential.element[=].definition = "Date sample collection is scheduled for."
* differential.element[=].type.code = #date
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.SampleDate"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "ServiceRequest.occurance"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.RequestingFacility"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.RequestingFacility"
* differential.element[=].short = "Requesting Facility"
* differential.element[=].definition = "Requesting Facility"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.RequestingFacilityID"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.owner, ServiceRequest.requester"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.OrderNumber"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.OrderNumber"
* differential.element[=].short = "National Order Identifier"
* differential.element[=].definition = "National Order Identifier"
* differential.element[=].type.code = #Identifier
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrder.LabOrderNo"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "ServiceRequest.identifier"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.Profile"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.Profile"
* differential.element[=].short = "Order Profile for Lab Order"
* differential.element[=].definition = "Reference to Order Profile for Lab Order"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfile"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.basedOn"

* differential.element[+].id = "EmrLisDataDictionary.LabOrder.Result"
* differential.element[=].path = "EmrLisDataDictionary.LabOrder.Result"
* differential.element[=].short = "Lab Order Result"
* differential.element[=].definition = "Lab Order Result"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfileTest"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Task.output"

* differential.element[+].id = "EmrLisDataDictionary.Profile"
* differential.element[=].path = "EmrLisDataDictionary.Profile"
* differential.element[=].short = "Ordering Profile for Lab Orders"
* differential.element[=].definition = "Ordering Profile for Lab Orders"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfile"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "ServiceRequest"

* differential.element[+].id = "EmrLisDataDictionary.Profile.LabTest"
* differential.element[=].path = "EmrLisDataDictionary.Profile.LabTest"
* differential.element[=].short = "Reference to Lab Test"
* differential.element[=].definition = "Reference to Lab Test"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 1
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfile.LabTestID"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "ServiceRequest.code"

* differential.element[+].id = "EmrLisDataDictionary.Result"
* differential.element[=].path = "EmrLisDataDictionary.Result"
* differential.element[=].short = "Result for Lab Orders"
* differential.element[=].definition = "Result for Lab Orders"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 0
* differential.element[=].max = "*"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfile; Laboratory.tblLabOrderProfileTest; Laboratory.tblLabOrderProfileTestParameter"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "DiagnosticReport"

* differential.element[+].id = "EmrLisDataDictionary.Result.LabTest"
* differential.element[=].path = "EmrLisDataDictionary.Result.LabTest"
* differential.element[=].short = "Lab Test for Result"
* differential.element[=].definition = "Lab Test for Result"
* differential.element[=].type.code = #Reference
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfile"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "DiagnosticReport.code"

* differential.element[+].id = "EmrLisDataDictionary.Result.Value"
* differential.element[=].path = "EmrLisDataDictionary.Result.Value"
* differential.element[=].short = "Value for Result"
* differential.element[=].definition = "Value for Result"
* differential.element[=].type.code = #BackboneElement
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfileTest.Result; Laboratory.tblLabOrderProfileTestParameter.Result"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.value"

* differential.element[+].id = "EmrLisDataDictionary.Result.ValueType"
* differential.element[=].path = "EmrLisDataDictionary.Result.ValueType"
* differential.element[=].short = "Type of Value for Result"
* differential.element[=].definition = "Type of Value for Result"
* differential.element[=].type.code = #CodeableConcept
* differential.element[=].min = 1
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "??"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.value[x]"

* differential.element[+].id = "EmrLisDataDictionary.Result.Unit"
* differential.element[=].path = "EmrLisDataDictionary.Result.Unit"
* differential.element[=].short = "Unit for Result"
* differential.element[=].definition = "Unit for Result"
* differential.element[=].type.code = #string
* differential.element[=].min = 0
* differential.element[=].max = "1"
* differential.element[=].mapping[+].identity = "PIMS"
* differential.element[=].mapping[=].map = "Laboratory.tblLabOrderProfileTest.LabTestUnitID"
* differential.element[=].mapping[+].identity = "FHIR-R4"
* differential.element[=].mapping[=].map = "Observation.value[Quantity]; Quantity.unit"
