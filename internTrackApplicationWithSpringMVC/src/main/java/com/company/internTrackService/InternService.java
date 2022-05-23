package com.company.internTrackService;

import com.company.InternTrackEntities.Intern;
import com.company.internTrackDAO.internDAOInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class InternService implements internServiceInterface{

    @Autowired
    private internDAOInterface internDAOInterface;

    @Override
    @Transactional
    public void addIntern(Intern intern) {
        internDAOInterface.addIntern(intern);

    }

    @Override
    @Transactional
    public List<Intern> listInterns() {
        return internDAOInterface.listInterns();
    }

    @Override
    @Transactional
    public Intern getInternById(String internId) {
        return internDAOInterface.getInternById(internId);
    }
}
