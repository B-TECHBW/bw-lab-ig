Profile: BwLabServiceRequest
Parent: ServiceRequest
Id: bw-lab-service-request
Title: "Botswana Lab Service Request"
Description: "A service request a lab order for for a given patient."
* code 1..1
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* code.coding from BwLabOrderCodeVS
* subject only Reference(BwPatient)
* encounter 1..1
* encounter only Reference(BwEncounter)
