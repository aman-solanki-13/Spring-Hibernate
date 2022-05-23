package com.company.internTrackDAO;

import com.company.InternTrackEntities.Intern;
import com.company.InternTrackEntities.Mentor;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public class MentorDAO implements mentorDAOInterface{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addMentor(Mentor mentor) {
            sessionFactory.getCurrentSession().saveOrUpdate(mentor);

    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Mentor> listMentors() {
        return sessionFactory.getCurrentSession().createQuery("FROM Mentor").list();
    }

    @Override
    public Mentor getMentorById(String mentorId) {
        return sessionFactory.getCurrentSession().get(Mentor.class, mentorId);
    }

}
