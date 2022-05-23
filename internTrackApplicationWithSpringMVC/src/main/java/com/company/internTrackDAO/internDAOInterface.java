package com.company.internTrackDAO;

import com.company.InternTrackEntities.Intern;

import java.util.List;

public interface internDAOInterface {
    public void addIntern(Intern intern);
    public List<Intern> listInterns();
    public Intern getInternById(String internId);
}
