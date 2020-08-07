package com.cmed.health.controller;

import com.cmed.health.model.User;
import com.cmed.health.repositories.UserRepository;
import com.cmed.health.service.PrescriptionService;
import com.cmed.health.service.UserService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RootController {

    private final UserRepository userRepository;
    private final UserService userService;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;
    private final PrescriptionService prescriptionService;

    public RootController(UserRepository userRepository, BCryptPasswordEncoder bCryptPasswordEncoder, UserService userService, PrescriptionService prescriptionService) {
        this.userRepository = userRepository;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.userService = userService;
        this.prescriptionService = prescriptionService;
    }

    @GetMapping("/login")
    public String login(Model model, @RequestParam(name = "error", required = false) String error) {
        generateUsers();
        model.addAttribute("error", error);
        return "login";
    }

    @GetMapping("/")
    public String showAllPrescription(Model model, @RequestParam(value = "start", defaultValue = "null") String start, @RequestParam(value = "end", defaultValue = "null") String end){
        model.addAttribute("prescriptions", prescriptionService.showAll(start, end));
        return "index";
    }

    private void generateUsers() {
        if (userRepository.findByUsername("admin").isEmpty()) {
            var user = new User();
            user.setUsername("admin");
            user.setPassword(bCryptPasswordEncoder.encode("secret"));
            userRepository.save(user);
        }
    }
}
