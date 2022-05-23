package com.company.internTrackDAO;

import com.company.InternTrackEntities.Mentor;

import java.util.List;

public interface mentorDAOInterface {
    public void addMentor(Mentor mentor);
    public List<Mentor> listMentors();
    public Mentor getMentorById(String mentorId);
}
