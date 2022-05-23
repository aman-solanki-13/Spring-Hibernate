package com.company.internTrackDAO;

import com.company.InternTrackEntities.DailyStatus;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import java.util.List;

@Repository
public class DailyStatusDAO implements dailyStatusDAOInterface{
    @Autowired
    private SessionFactory sessionFactory;


    @Override
    public void addStatus(DailyStatus dailyStatus) {
        sessionFactory.getCurrentSession().saveOrUpdate(dailyStatus);
    }

    @SuppressWarnings("unchecked")
    @Override
    public List<DailyStatus> listAssignmentByInternId(String statusOf) {
        return sessionFactory.getCurrentSession().createQuery("FROM DailyStatus WHERE statusOf = :statusOf").setParameter("statusOf", statusOf).list();
    }
}
