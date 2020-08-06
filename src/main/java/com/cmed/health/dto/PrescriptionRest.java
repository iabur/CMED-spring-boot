package com.cmed.health.dto;

import java.time.LocalDate;

public class PrescriptionRest {
    private Long prescriptionId;
    private String patientName;
    private int patientAge;
    private String patientGender;
    private String diagnosis;
    private String medicines;
    private LocalDate prescriptionDate;
    private LocalDate nextVisitDate;

    public PrescriptionRest() {
    }

    public Long getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(Long prescriptionId) {
        this.prescriptionId = prescriptionId;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public int getPatientAge() {
        return patientAge;
    }

    public void setPatientAge(int patientAge) {
        this.patientAge = patientAge;
    }

    public String getPatientGender() {
        return patientGender;
    }

    public void setPatientGender(String patientGender) {
        this.patientGender = patientGender;
    }

    public String getDiagnosis() {
        return diagnosis;
    }

    public void setDiagnosis(String diagnosis) {
        this.diagnosis = diagnosis;
    }

    public String getMedicines() {
        return medicines;
    }

    public void setMedicines(String medicines) {
        this.medicines = medicines;
    }

    public LocalDate getPrescriptionDate() {
        return prescriptionDate;
    }

    public void setPrescriptionDate(LocalDate prescriptionDate) {
        this.prescriptionDate = prescriptionDate;
    }

    public LocalDate getNextVisitDate() {
        return nextVisitDate;
    }

    public void setNextVisitDate(LocalDate nextVisitDate) {
        this.nextVisitDate = nextVisitDate;
    }

    @Override
    public String toString() {
        return "PrescriptionRest{" +
                "prescriptionId=" + prescriptionId +
                ", patientName='" + patientName + '\'' +
                ", patientAge=" + patientAge +
                ", patientGender='" + patientGender + '\'' +
                ", diagnosis='" + diagnosis + '\'' +
                ", medicines='" + medicines + '\'' +
                ", prescriptionDate=" + prescriptionDate +
                ", nextVisitDate=" + nextVisitDate +
                '}';
    }
}
