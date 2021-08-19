Profile:        BwPatient
Parent:         PatientUvIps
Id:             bw-patient
Title:          "Botswana Patient"
Description:    "A patient in a Botswana Health System"
* name 1..*
* identifier 1..*

Profile:        PimsPatient
Parent:         BwPatient
Id:             pims-patient
Title:          "PIMS Patient"
Description:    "A patient in a PIMS instance"
* name 1..*
* identifier 1..*
* managingOrganization 1..1
* managingOrganization only Reference(Organization)