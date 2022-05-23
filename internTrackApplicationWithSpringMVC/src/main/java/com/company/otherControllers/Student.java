package com.company.otherControllers;

import java.util.LinkedHashMap;

public class Student {
    private String studentFirstName;
    private String studentLastName;
    private String studentAge;
    private String studentState;

    LinkedHashMap<String, String> stateNames;

    Student(){
        stateNames = new LinkedHashMap<>();
        stateNames.put("Haryana", "Haryana");
        stateNames.put("Punjab", "Punjab");
        stateNames.put("Himachal", "Himachal");
        stateNames.put("Rajasthan", "Rajasthan");
        stateNames.put("Goa", "Goa");
    }

    public String getStudentFirstName() {
        return studentFirstName;
    }

    public void setStudentFirstName(String studentFirstName) {
        this.studentFirstName = studentFirstName;
    }

    public String getStudentLastName() {
        return studentLastName;
    }

    public void setStudentLastName(String studentLastName) {
        this.studentLastName = studentLastName;
    }

    public String getStudentAge() {
        return studentAge;
    }

    public void setStudentAge(String studentAge) {
        this.studentAge = studentAge;
    }

    public String getStudentState() {
        return studentState;
    }

    public void setStudentState(String studentState) {
        this.studentState = studentState;
    }

    public LinkedHashMap<String, String> getStateNames() {
        return stateNames;
    }

}
