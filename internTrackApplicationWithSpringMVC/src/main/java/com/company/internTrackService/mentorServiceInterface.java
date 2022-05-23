package com.company.internTrackService;

import com.company.InternTrackEntities.Mentor;

import java.util.List;

public interface mentorServiceInterface {
    public void addMentor(Mentor mentor);
    public List<Mentor> listMentors();
    public Mentor getMentorById(String mentorId);
}
