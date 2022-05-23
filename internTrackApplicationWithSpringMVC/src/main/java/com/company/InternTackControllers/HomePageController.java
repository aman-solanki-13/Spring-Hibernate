package com.company.InternTackControllers;

import com.company.InternTrackEntities.Intern;
import com.company.InternTrackEntities.Mentor;
import com.company.internTrackService.internServiceInterface;
import com.company.internTrackService.mentorServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
public class HomePageController {
        @Autowired
        internServiceInterface internServiceInterface;
        @Autowired
        mentorServiceInterface mentorServiceInterface;

    @RequestMapping("/")
    public String thisMethodReturnsViewName(Model model){
//        List<Intern> internList = internServiceInterface.listInterns();
//        List<Mentor> mentorList = mentorServiceInterface.listMentors();
//
//        model.addAttribute("internList", internList);
//        model.addAttribute("mentorList", mentorList);
        return "internTrackApplicationHomepage";
    }
}
