Profile: BwLabTask
Parent: Task
Id: bw-lab-task
Title: "Botswana Lab Task Resource"
Description: "A Task resource for tracking order state and synchronizing Lab Order communication in Botswana"
* identifier 1..*
* basedOn 1..*
* basedOn only Reference(BwLabServiceRequest)
* for only Reference(BwPatient)
* encounter only Reference(BwEncounter)
* owner only Reference(Practitioner or Organization or HealthcareService)
* authoredOn 1..1
* status from BwPimsLabOrderStatusVS
* intent from BwLabTaskIntentVS
* output.type.text = "DiagnosticReport"
* output.value[x] only Reference(BwLabDiagnosticReport)


