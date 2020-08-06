package com.cmed.health.RestController;

import com.cmed.health.dto.PrescriptionRest;
import com.cmed.health.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1")
public class PrescriptionRestController {
    @Autowired
    private PrescriptionService prescriptionService;
    @GetMapping("/prescription")
    public List<PrescriptionRest> getAllPrescription(){
        return prescriptionService.getAllPrescription();
    }
}
