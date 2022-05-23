package com.company.InternTrackEntities;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "internDetails")
public class Intern implements Serializable {
    @Id
    @Column(name = "internId")
    String internId;

    @Column(name = "internName")
    String interName;


    @Column(name = "internPassword")
    String interPassword;

    @Column(name = "internGender")
    String internGender;

    @Column(name = "assignmentId")
    int assignmentId;

    public Intern(){

    }

    public Intern(String interName, String internId, String interPassword, String internGender) {
        this.interName = interName;
        this.internId = internId;
        this.interPassword = interPassword;
        this.internGender = internGender;
    }

    public String getInterName() {
        return interName;
    }

    public void setInterName(String interName) {
        this.interName = interName;
    }

    public String getInternId() {
        return internId;
    }

    public void setInternId(String internId) {
        this.internId = internId;
    }

    public String getInterPassword() {
        return interPassword;
    }

    public void setInterPassword(String interPassword) {
        this.interPassword = interPassword;
    }

    public String getInternGender() {
        return internGender;
    }

    public void setInternGender(String internGender) {
        this.internGender = internGender;
    }

    public int getAssignmentId() {
        return assignmentId;
    }

    public void setAssignmentId(int assignmentId) {
        this.assignmentId = assignmentId;
    }

    @Override
    public String toString() {
        return "Intern{" +
                "interName='" + interName + '\'' +
                ", internId='" + internId + '\'' +
                ", interPassword='" + interPassword + '\'' +
                ", internGender='" + internGender + '\'' +
                '}';
    }
}
