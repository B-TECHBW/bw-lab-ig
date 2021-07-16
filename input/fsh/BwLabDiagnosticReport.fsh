Profile: BwLabDiagnosticReport
Parent: DiagnosticReportUvIps
Id: bw-lab-diagnostic-report
Title: "Botswana Lab Diagnostic Report"
Description: "DiagnosticReport resource that holds the results of a lab order"
* code.coding 1..*
// TODO: Figure out how to slice on system, and make sure at least one is LOINC
* status from BwLabDiagnosticReportStatusVS
* result only Reference(BwLabObservation)