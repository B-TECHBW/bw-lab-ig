Profile: BwLabComposition
Parent: http://hl7.org/fhir/StructureDefinition/clinicaldocument
Id: bw-lab-composition
Title: "Botswana Lab Composition"
Description: "This composition packages information needed to facilitate lab order communication between clinical systems in Botswana."
* status = #active
* subject 1..1      //there must be a subject
* subject only Reference(BwPatient)
* title = "Lab Order Composition"

//discriminator for the sections - slice on the section code...
* section ^slicing.discriminator.type = #value
* section ^slicing.discriminator.path = "code.text"
* section ^slicing.rules = #open

* section contains 
    labTask 0..1 and
    labOrders 0..1 and 
    labResults 0..1 and
    subject 0..1 and
    requester 0..1

//* section 1..*
//* section.section 0..0          //can't have sub sections
//* section.emptyReason 0..0      //and no empty reason on the sections

* section[labTask].title = "Lab Task"
* section[labTask].entry only Reference(BwLabTask)
* section[labTask].entry MS
* section[labTask].code.text = "bw-lab-task"
* section[labTask].code MS

* section[labOrders].title = "Lab Orders"
* section[labOrders].entry only Reference(BwLabServiceRequest)
* section[labOrders].entry MS
* section[labOrders].code.text = "bw-lab-orders"
* section[labOrders].code MS

* section[labResults].title = "Lab Results"
* section[labResults].entry only Reference(BwLabDiagnosticReport)
* section[labResults].entry MS
* section[labResults].code.text = "bw-lab-results"
* section[labResults].code MS

* section[subject].title = "Patient"
* section[subject].entry only Reference(BwPatient)
* section[subject].entry MS
* section[subject].code.text = "bw-patient"
* section[subject].code MS

* section[requester].title = "Requester"
* section[requester].entry only Reference(BwPractitioner)
* section[requester].entry MS
* section[requester].code.text = "bw-requester"
* section[requester].code MS
