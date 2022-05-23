package com.company.internTrackService;

import com.company.InternTrackEntities.Mentor;
import com.company.internTrackDAO.mentorDAOInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class MentorService implements mentorServiceInterface{

    @Autowired
    private mentorDAOInterface mentorDAOInterface;


    @Override
    @Transactional
    public void addMentor(Mentor mentor) {
        mentorDAOInterface.addMentor(mentor);
    }

    @Override
    @Transactional
    public List<Mentor> listMentors() {
        return mentorDAOInterface.listMentors();
    }

    @Override
    @Transactional
    public Mentor getMentorById(String mentorId) {
        return mentorDAOInterface.getMentorById(mentorId);
    }
}
