package com.cmed.health.service;

import com.cmed.health.dto.PrescriptionCountDto;
import com.cmed.health.dto.PrescriptionDto;
import com.cmed.health.dto.PrescriptionRest;
import com.cmed.health.exceptions.ResourceNotFoundException;
import com.cmed.health.model.Prescription;
import com.cmed.health.repositories.PrescriptionRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class PrescriptionService {
    @Autowired
    private PrescriptionRepository prescriptionRepository;

    public void create(PrescriptionDto prescriptionDto) {
        Prescription prescription = new Prescription();
        BeanUtils.copyProperties(prescriptionDto, prescription);
        prescription.setPrescriptionDate(LocalDate.now());
        checkPatientInformation(prescriptionDto, prescription);
    }

    public List<PrescriptionDto> showAll(String start, String end) {
        LocalDate s, e;
        if (start.equals("null") || end.equals("null")) {
            e = LocalDate.now();
            s = LocalDate.now().minusDays(30);
        } else {
            e = LocalDate.parse(end);
            s = LocalDate.parse(start);
        }
        List<Prescription> prescriptions = prescriptionRepository.findByPrescriptionDateBetween(s, e);
        List<PrescriptionDto> returnValue = new ArrayList<>();
        for (Prescription p :
                prescriptions) {
            PrescriptionDto prescriptionDto = new PrescriptionDto();
            BeanUtils.copyProperties(p, prescriptionDto);
            returnValue.add(prescriptionDto);
        }
        return returnValue;
    }

    public void update(PrescriptionDto prescriptionDto) {
        Prescription prescription = prescriptionRepository.findById(prescriptionDto.getPrescriptionId()).get();
        LocalDate prescriptionDate = prescription.getPrescriptionDate();
        BeanUtils.copyProperties(prescriptionDto, prescription);
        checkPatientInformation(prescriptionDto, prescription);
    }

    private void checkPatientInformation(PrescriptionDto prescriptionDto, Prescription prescription) {
        if(!prescriptionDto.getN_Date().isEmpty()){
            prescription.setNextVisitDate(LocalDate.parse(prescriptionDto.getN_Date()));
        }
        if (prescription.getPatientAge() < 0) {
            throw new RuntimeException("Age should be positive");
        }
        if(prescription.getPatientName().isEmpty()){
            throw new ResourceNotFoundException("Name not found");
        }
        if(prescription.getDiagnosis().isEmpty()){
            throw new ResourceNotFoundException("Diagnosis record not found");
        }
        if(prescription.getMedicines().isEmpty())
        {
            throw new ResourceNotFoundException("Medicine record not found");
        }
        prescriptionRepository.save(prescription);
    }

    public void delete(long id){
        Prescription prescription = prescriptionRepository.findById(id).get();
        prescriptionRepository.delete(prescription);
    }

    public List<PrescriptionCountDto> count(){
        List<PrescriptionCountDto> returnValue = new ArrayList<>();
        prescriptionRepository.findDistinctPrescriptionDate().forEach(d -> {
            PrescriptionCountDto prescriptionCountDto = new PrescriptionCountDto();
            prescriptionCountDto.setDate(d);
            prescriptionCountDto.setPrescriptionNo(prescriptionRepository.countByPrescriptionDate(d));
            returnValue.add(prescriptionCountDto);
        });
        return returnValue;
    }

    public List<PrescriptionRest> getAllPrescription(){
        List<Prescription> prescriptions = prescriptionRepository.findAll();
        List<PrescriptionRest> returnValue = new ArrayList<>();
        for (var p :
                prescriptions) {
            PrescriptionRest prescriptionRest = new PrescriptionRest();
            BeanUtils.copyProperties(p, prescriptionRest);
            returnValue.add(prescriptionRest);
        }
        return returnValue;
    }

}
