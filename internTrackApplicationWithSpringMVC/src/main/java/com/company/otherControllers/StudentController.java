package com.company.otherControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/student")
public class StudentController {

    @RequestMapping("/loadFormPage")
    public String loadFormPage(Model model){
        Student student = new Student();
        model.addAttribute("studentModel", student);
    return "OTHER/studentForm";
    }

    @RequestMapping("/processForm")
    public String processForm(@ModelAttribute("studentModel") Student student){
        return "OTHER/studentDetail";
    }

}