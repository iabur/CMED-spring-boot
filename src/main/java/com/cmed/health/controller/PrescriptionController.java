package com.cmed.health.controller;

import com.cmed.health.dto.PrescriptionDto;
import com.cmed.health.service.PrescriptionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDate;

@Controller
public class PrescriptionController {
    @Autowired
    private PrescriptionService prescriptionService;

    @GetMapping("/create")
    public String createPrescription(Model model){
        model.addAttribute("prescription", new PrescriptionDto());
        return "create";
    }

    @PostMapping("/create")
    public String createPrescription(@ModelAttribute(name = "prescription") PrescriptionDto prescriptionDto, Model model){
        prescriptionService.create(prescriptionDto);
        return "redirect:/show-all";
    }

    @GetMapping("/show-all")
    public String showAllPrescription(Model model, @RequestParam(value = "start", defaultValue = "null") String start, @RequestParam(value = "end", defaultValue = "null") String end){
        model.addAttribute("prescriptions", prescriptionService.showAll(start, end));
        return "index";
    }

    @GetMapping("/update")
    public String updatePrescription(Model model, @RequestParam(value = "id") long prescriptionId) {
        model.addAttribute("prescription", new PrescriptionDto());
        model.addAttribute("prescriptionId", prescriptionId);
        return "update";
    }

    @PostMapping("/update")
    public String updatePrescription(Model model, @ModelAttribute(name = "prescription") PrescriptionDto prescriptionDto){
        prescriptionService.update(prescriptionDto);
        return "redirect:/show-all";
    }

    @GetMapping("/delete")
    public String deletePrescription(Model model, @RequestParam(value = "id") long prescriptionId){
        prescriptionService.delete(prescriptionId);
        return "redirect:show-all";
    }

    @GetMapping("/report")
    public String prescriptionCount(Model model){
        model.addAttribute("prescriptionCount", prescriptionService.count());
        return "report";
    }

    @GetMapping("/data")
    public String showRedtData(){
        return "data";
    }

}
