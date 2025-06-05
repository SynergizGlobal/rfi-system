package com.sys.rfi.controller;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.bind.annotation.*;

@RequestMapping("/rfi-systems")
@Controller
public class UserController {

    @GetMapping("/login")
    public String showloginPage(Model model) {
        return "login"; 
    }
    @GetMapping("/home")
    public String showhomePage(Model model) {
        return "home"; 
    }
    
}
