package com.company.InternTackControllers;

import com.company.InternTrackEntities.Assignment;
import com.company.InternTrackEntities.DailyStatus;
import com.company.InternTrackEntities.Intern;
import com.company.InternTrackEntities.Mentor;
import com.company.internTrackService.assignmentServiceInterface;
import com.company.internTrackService.dailyStatusServiceInterface;
import com.company.internTrackService.internServiceInterface;
import com.company.internTrackService.mentorServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

@Controller
@RequestMapping("/internTrackApplication")
public class InternTrackController {

    //TODO -> IMPORTING THE REQUIRED 'SERVICES CLASSES'
    @Autowired
    private mentorServiceInterface mentorServiceInterface;

    @Autowired
    private internServiceInterface internServiceInterface;

    @Autowired
    private assignmentServiceInterface assignmentServiceInterface;

    @Autowired
    private dailyStatusServiceInterface dailyStatusServiceInterface;


//    //TODO -> Redirect to Homepage
//    @RequestMapping("/openHomepage")
//    public String openHomepage(){
//        return "redirect:/";
//    }

    //TODO -> MENTOR CONTROLLERS

    @RequestMapping("/openMentorRegistrationPage")
    public String openMentorRegistrationPage(Model model){
        List<String> internNameListFromMentorDetails = new ArrayList<>();
        mentorServiceInterface.listMentors().forEach(x -> internNameListFromMentorDetails.add(x.getMentorOf()));

        internNameListFromMentorDetails.forEach(System.out::println);
        List<Intern> internList = internServiceInterface.listInterns().stream().filter(x -> !internNameListFromMentorDetails.contains(x.getInternId())).collect(Collectors.toList());

        if(internList.isEmpty()){
            internList.add(null);
        }

        model.addAttribute("internList", internList);
        return "mentorRegistrationPage";
    }

    @RequestMapping("/processMentorRegistration")
    public String processMentorRegistration(@RequestParam("mentorName") String mentorName, @RequestParam("mentorId") String mentorId, @RequestParam("mentorPassword") String mentorPassword, @RequestParam("mentorRePassword") String mentorRePassword, @RequestParam("mentorOf") String mentorOf){
        if (mentorName.isEmpty() || mentorId.isEmpty() || mentorPassword.isEmpty() || mentorOf.isEmpty()){
            return "error";

        }else {
            System.out.println("INSIDE IF STATEMENT");

            if(mentorPassword.equals(mentorRePassword)){
                Mentor mentor = new Mentor(mentorName, mentorId, mentorPassword, mentorOf);
                mentorServiceInterface.addMentor(mentor);
                return "success";
            }else {
            return "error";

            }
        }
    }


    @RequestMapping("/processMentorLogin")
    public String processMentorLogin(@RequestParam("mentorId") String mentorId, @RequestParam("mentorPassword") String mentorPassword, Model model){
        List<Mentor> mentorList = mentorServiceInterface.listMentors();
        if (mentorList.isEmpty()){
            return "error";
        }else{
            ArrayList<String> allMentorId = new ArrayList<>();
            mentorList.forEach(x -> allMentorId.add(x.getMentorId()));

            if (allMentorId.contains(mentorId)){
                Mentor mentor = mentorServiceInterface.getMentorById(mentorId);
                Intern intern = internServiceInterface.getInternById(mentor.getMentorOf());

                if (mentor.getMentorPassword().equals(mentorPassword)){
                    List<Assignment> assignmentList = assignmentServiceInterface.listAssignmentsByInternId(mentor.getMentorOf());
                    List<DailyStatus> dailyStatusList = dailyStatusServiceInterface.listAssignmentByInternId(mentor.getMentorOf());


                    model.addAttribute("assignmentList", assignmentList);
                    model.addAttribute("dailyStatusList", dailyStatusList);
                    model.addAttribute("internObject", intern);
                    model.addAttribute("mentorObject", mentor);
                    return "mentorLandingPage";
                }else{
                    return "error";
                }
            }else {
                return "error";
            }

        }
    }

    @RequestMapping(value = "/giveAssignment/{mentorName}/{mentorOf}", method = RequestMethod.GET)
    public String giveAssignment(@PathVariable("mentorOf") String mentorOf,@PathVariable("mentorName") String mentorName, @RequestParam("assignmentTextArea") String assignmentName){
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String strDate = dateFormat.format(date);

        Assignment assignment = new Assignment(assignmentName,mentorOf ,mentorName, strDate);
        assignmentServiceInterface.addAssignment(assignment);
        return "mentorLandingPage";
    }

    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////
    /////////////////////////////////////////////////


    //TODO -> INTERN CONTROLLERS

    @RequestMapping("/openInternRegistrationPage")
    public String openInternRegistrationPage(){
        return "internRegistrationPage";
    }

    @RequestMapping("/processInternRegistration")
    public String processInternRegistration(@RequestParam("internName") String internName,@RequestParam("internId") String internId, @RequestParam("internPassword") String internPassword,@RequestParam("internReEnterPassword") String internReEnterPassword, @RequestParam("internGender") String internGender){
        if(internName.isEmpty() || internId.isEmpty() || internPassword.isEmpty() || internGender.isEmpty() || internReEnterPassword.isEmpty()){
            return "error";

        }else {
            System.out.println("INSIDE ELSE PART");

            if (internPassword.equals(internReEnterPassword)){
            Intern intern = new Intern(internName, internId, internPassword, internGender);
            internServiceInterface.addIntern(intern);
            return "success";
            }else {
                return "error";
            }
        }
    }

    @RequestMapping("/processInternLogin")
    public String processInternLogin(@RequestParam("internId") String internId, @RequestParam("internPassword") String internPassword, Model model){
        List<Intern> internList = internServiceInterface.listInterns();
        if (internList.isEmpty()){
            return "error";
        }else{
            ArrayList<String> allInternId = new ArrayList<>();
            internList.forEach(x -> allInternId.add(x.getInternId()));

            if (allInternId.contains(internId)){
                Intern intern = internServiceInterface.getInternById(internId);
                if (intern.getInterPassword().equals(internPassword)){
                    List<Assignment> assignmentList = assignmentServiceInterface.listAssignmentsByInternId(internId);
                        List<Assignment> completedAssignmentList = assignmentList.stream().filter(x -> x.getAssignmentStatus().equals("Complete")).collect(Collectors.toList());
                        List<Assignment> incompleteAssignmentList = assignmentList.stream().filter(x -> x.getAssignmentStatus().equals("Incomplete")).collect(Collectors.toList());

                        model.addAttribute("completedAssignmentsList" ,completedAssignmentList);
                        model.addAttribute("incompleteAssignmentList", incompleteAssignmentList);
                        model.addAttribute("internObject", intern);
                    return "internLandingPage";
                }else{
                    return "error";
                }
            }else {
                return "error";
            }

        }
    }

    @RequestMapping(value = "/markAssignmentComplete/{assignmentId}", method = RequestMethod.GET)
    public String markAssignmentComplete(@PathVariable("assignmentId") int assignmentId){
        assignmentServiceInterface.updateAssignmentStatus(assignmentId);
//        return "redirect:processInternLogin";
        return "internLandingPage";
    }

    @RequestMapping(path = "/uploadDailyStatus/{internId}", method = RequestMethod.GET)
    public String uploadDailyStatus(@PathVariable(value = "internId") String internId,@RequestParam("uploadDailyStatus") String dailyStatusText){
        Date date = Calendar.getInstance().getTime();
        DateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
        String strDate = dateFormat.format(date);


        DailyStatus dailyStatus = new DailyStatus(dailyStatusText, internId, strDate);
        dailyStatusServiceInterface.addStatus(dailyStatus);

//        return "redirect:/internTrackApplication/processInternLogin";
        return "internLandingPage";
    }




/*
    //TODO -> FOR REDIRECT
    //INTERN REDIRECT
    @RequestMapping(path = "/processInternLogin/{internId}/{internPass}")
    public String internRedirect(@PathVariable("internId") String internId, @PathVariable("internPass") String internPass, Model model){
        Intern intern = internServiceInterface.getInternById(internId);
            List<Assignment> assignmentList = assignmentServiceInterface.listAssignmentsByInternId(internId);
            List<Assignment> completedAssignmentList = assignmentList.stream().filter(x -> x.getAssignmentStatus().equals("Complete")).collect(Collectors.toList());
            List<Assignment> incompleteAssignmentList = assignmentList.stream().filter(x -> x.getAssignmentStatus().equals("Incomplete")).collect(Collectors.toList());

            model.addAttribute("completedAssignmentsList" ,completedAssignmentList);
            model.addAttribute("incompleteAssignmentList", incompleteAssignmentList);
            model.addAttribute("internObject", intern);
            return "internLandingPage";
    }
*/
}
