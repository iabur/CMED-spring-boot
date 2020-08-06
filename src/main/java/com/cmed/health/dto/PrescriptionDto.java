package com.cmed.health.dto;

import java.time.LocalDate;
import java.time.LocalDateTime;

public class PrescriptionDto {
    private Long prescriptionId;
    private String patientName;
    private int patientAge;
    private String patientGender;
    private String diagnosis;
    private String medicines;
    private String p_Date;
    private String n_Date;
    private LocalDate prescriptionDate;
    private LocalDate nextVisitDate;

    public PrescriptionDto() {
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

    public String getP_Date() {
        return p_Date;
    }

    public void setP_Date(String p_Date) {
        this.p_Date = p_Date;
    }

    public String getN_Date() {
        return n_Date;
    }

    public void setN_Date(String n_Date) {
        this.n_Date = n_Date;
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

    public Long getPrescriptionId() {
        return prescriptionId;
    }

    public void setPrescriptionId(Long prescriptionId) {
        this.prescriptionId = prescriptionId;
    }
}
