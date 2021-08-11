/* 
========================================================== EXAMPLES ==========================================================
==============================================================================================================================
*/

Instance: example-bw-patient
InstanceOf: BwPatient 
Usage: #example 
Description: "Example Botswana Patient"
Title:   "BW Patient"
* name.use = #official
* name.family = "BwPatient"
* name.given[+] = "Test"
* gender = #female
* birthDate = "1988-03-02"
* identifier[+].value = "urn:uuid:<Pims-specific Patient ID>"
* identifier[=].system = "urn:ietf:rfc:3986"
* identifier[=].type = #MR
* identifier[+].value = "<OmangNumber>"
* identifier[=].system = "http://moh.bw.org/ext/identifier/omang"
* identifier[=].use = #official


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


Instance: example-bw-lab-composition
InstanceOf: BwLabComposition
Usage: #example
Description: "Example Lab Order Composition"
Title: "Example PIMS Lab Composition"
* type = #document
* subject = Reference(example-bw-patient)
* date = "2021-06-06"
* author = Reference(example-bw-practitioner)
* section[labTask].entry[+] = Reference(example-bw-task-requested)
* section[labOrders].entry[+] = Reference(example-bw-pims-service-request-profile)
* section[labOrders].entry[+] = Reference(example-bw-pims-service-request-1)
* section[labOrders].entry[+] = Reference(example-bw-pims-service-request-2)


Instance: example-bw-lab-bundle
InstanceOf: Bundle
Usage: #example
Description: "Example Full PIMS Lab Bundle"
Title: "Example Lab Bundle"
* type = #document
* entry[+].resource = example-bw-lab-composition
* entry[+].resource = example-bw-patient
* entry[+].resource = example-bw-pims-practitioner
* entry[+].resource = example-bw-task-requested
* entry[+].resource = example-bw-pims-service-request-profile
* entry[+].resource = example-bw-pims-service-request-1
* entry[+].resource = example-bw-pims-service-request-2
