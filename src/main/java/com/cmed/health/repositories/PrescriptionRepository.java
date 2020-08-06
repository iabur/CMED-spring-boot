package com.cmed.health.repositories;

import com.cmed.health.dto.PrescriptionRest;
import com.cmed.health.model.Prescription;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.w3c.dom.stylesheets.LinkStyle;

import java.time.LocalDate;
import java.util.List;

@Repository
public interface PrescriptionRepository extends JpaRepository<Prescription, Long> {
    List<Prescription> findByPrescriptionDateBetween(LocalDate start, LocalDate end);
    int countByPrescriptionDate(LocalDate date);
    @Query("SELECT DISTINCT p.prescriptionDate FROM Prescription p")
    List<LocalDate> findDistinctPrescriptionDate();
}
