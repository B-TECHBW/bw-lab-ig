/* 
========================================================== EXAMPLES ==========================================================
==============================================================================================================================
*/

Instance: example-bw-patient
InstanceOf: BwPatient 
Usage: #example 
Description: "Example Botswana Patient"
Title:   "BW Patient"
* name.text = "Bw TestPatient"
* gender = #female
* birthDate = "1988-03-02"
* identifier[+].value = "urn:uuid:<Pims-specific Patient ID>"
* identifier[=].system = "urn:ietf:rfc:3986"
* identifier[=].type = #MR
* identifier.value = "<OmangNumber>"
* identifier.system = "http://moh.bw.org/ext/identifier/omang"

Instance: example-bw-patient-international
InstanceOf: BwPatient 
Usage: #example 
Description: "Example International Botswana Patient"
Title:   "BW Patient"
* name.text = "Bw TestPatient"
* gender = #female
* birthDate = "1988-03-02"
* identifier.value = "urn:uuid:<Pims-specific Patient ID>"
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "<PassportNumber>"
* identifier.type = #PPN

Instance: example-bw-task-requested
InstanceOf: BwLabTask 
Usage: #example 
Description: "Example Task for Requested Lab Orders and Results in Botswana"
Title:   "BW Requested Lab Task"
* identifier.value = "PimsSpecificLabOrderID"
* identifier.system = "http://<pims-instance-specific-url>/ext/lab-task/identifier"   
* basedOn[+] = Reference(example-bw-pims-service-request-1)
* basedOn[+] = Reference(example-bw-pims-service-request-2)
* status = #requested
* intent = #order
* for = Reference(example-bw-patient)
* authoredOn = "2021-05-20"
* owner = Reference(example-bw-pims-practitioner)

Instance: example-bw-pims-service-request-profile
InstanceOf: BwLabServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a PIMS Profile"
Title: "BW PIMS ServiceRequest Profile"
* status = #active
* intent = #order
* code.coding[+].system = "http://moh.bw.org/ext/laboratory/pims-lab-profile-code"
* code.coding[=].code = #pims-profile-code
* subject = Reference(example-bw-patient)

Instance: example-bw-pims-service-request-1
InstanceOf: BwLabServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a PIMS Lab Order"
Title: "BW PIMS ServiceRequest 1"
* status = #active
* intent = #order
* code.coding[+].system = "http://moh.bw.org/ext/laboratory/pims-lab-test-code"
* code.coding[=].code = #pims-labtest-code
* basedOn[+] = Reference(example-bw-pims-service-request-profile)
* subject = Reference(example-bw-patient)

Instance: example-bw-pims-service-request-2
InstanceOf: BwLabServiceRequest
Usage: #example
Description: "Example ServiceRequest resource representing a PIMS Lab Order"
Title: "BW PIMS ServiceRequest 2"
* status = #active
* intent = #order
* code.coding[+].system = "http://moh.bw.org/ext/laboratory/pims-lab-test-code"
* code.coding[=].code = #pims-labtest-code
* basedOn[+] = Reference(example-bw-pims-service-request-profile)
* subject = Reference(example-bw-patient)

Instance: example-bw-pims-practitioner
InstanceOf: BwPractitioner
Usage: #example
Description: "Example PIMS Practitioner"
Title: "BW PIMS Practitioner"
* name[+].text = "BW PimsProvider"
* identifier[+].value = "RequesterID"
* identifier[=].system = "http://<pims-instance-specific-url>/ext/practitioner/identifier"   


Instance: example-bw-lab-pims-composition
InstanceOf: BwLabComposition
Usage: #example
Description: "Example PIMS Lab Composition"
Title: "Example PIMS Lab Composition (Work in Progress)"
* type = #document
* subject = Reference(BwPatient)
* date = "2021-06-06"
* author = Reference(BwPractitioner)

