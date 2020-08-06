package com.cmed.health.dto;

import java.time.LocalDate;

public class PrescriptionCountDto {
    private LocalDate date;
    private int prescriptionNo;

    public PrescriptionCountDto() {
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getPrescriptionNo() {
        return prescriptionNo;
    }

    public void setPrescriptionNo(int prescriptionNo) {
        this.prescriptionNo = prescriptionNo;
    }
}
