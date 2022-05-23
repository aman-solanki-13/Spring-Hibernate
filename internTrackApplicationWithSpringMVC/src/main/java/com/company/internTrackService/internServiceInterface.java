package com.company.internTrackService;

import com.company.InternTrackEntities.Intern;

import java.util.List;

public interface internServiceInterface {
    public void addIntern(Intern intern);
    public List<Intern> listInterns();
    public Intern getInternById(String internId);
}
