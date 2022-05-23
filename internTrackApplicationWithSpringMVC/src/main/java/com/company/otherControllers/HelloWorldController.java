package com.company.otherControllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HelloWorldController {
    // Need a controller method to show the initial HTML form page
    @RequestMapping("/showForm")
    public String showForm(){
        return "OTHER/helloworld-form";
    }
    // Need a controller method to process the HTML form data
    @RequestMapping("/processForm")
    public String processForm(){
        return "OTHER/helloworld";
    }

    // Controller to read form data then add the data to the model ->
    @RequestMapping("/processFormVersion2")
    public String readingFormDataAndAddingDataToModel(HttpServletRequest httpServletRequest, Model model){
        String studentName = httpServletRequest.getParameter("studentName");
        String capitalName = studentName.toUpperCase();
        String addtingYo = "YO " +  capitalName;

        model.addAttribute("message", addtingYo);

        return "OTHER/helloworld";
    }
    @RequestMapping("processFormVersion3")
    public String readFormDataDirectlyInMethod(@RequestParam("studentName") String studentName, Model model){
        String capitalName = studentName.toUpperCase();
        String addingYo = "Hey my friend " + capitalName;

        model.addAttribute("message", addingYo);
        return "OTHER/helloworld";
    }
}
