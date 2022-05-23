package com.company.internTrackDAO;

import com.company.InternTrackEntities.Intern;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;


@Repository
public class InternDAO implements internDAOInterface{

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void addIntern( Intern intern) {

        sessionFactory.getCurrentSession().saveOrUpdate(intern);

    }


    @SuppressWarnings("unchecked")
    @Override
    public List<Intern> listInterns(){

        return sessionFactory.getCurrentSession().createQuery("FROM Intern ")
                .list();

    }

    @Override
    public Intern getInternById(String internId) {

        return sessionFactory.getCurrentSession().get(Intern.class, internId);
    }

}
