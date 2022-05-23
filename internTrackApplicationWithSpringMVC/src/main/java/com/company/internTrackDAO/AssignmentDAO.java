package com.company.internTrackDAO;

import com.company.InternTrackEntities.Assignment;
import org.hibernate.Session;

import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
public class AssignmentDAO implements assignmentDAOInterface{

    @Autowired
    private SessionFactory sessionFactory ;

    @Override
    public void addAssignment(Assignment assignment) {

            sessionFactory.getCurrentSession().saveOrUpdate(assignment);

    }

    @Override
    public void updateAssignmentStatus(int assignmentID){

            Assignment assignment = sessionFactory.getCurrentSession().get(Assignment.class, assignmentID);
            assignment.setAssignmentStatus("Complete");

            sessionFactory.getCurrentSession().saveOrUpdate(assignment);

    }

    @SuppressWarnings("unchecked")
    @Override
    public List<Assignment> listAssignmentsByInternId(String internId) {
        return sessionFactory.getCurrentSession().createQuery("FROM Assignment WHERE givenTo =:internId").setParameter("internId", internId).list();

    }


    @Override
    public Assignment getAssignmentById(int assignmentId) {
        return sessionFactory.getCurrentSession().get(Assignment.class, assignmentId);
    }
}
