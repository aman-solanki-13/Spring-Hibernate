package com.company.internTrackService;

import com.company.InternTrackEntities.Assignment;
import com.company.internTrackDAO.assignmentDAOInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AssignmentService implements assignmentServiceInterface{

    @Autowired
    private assignmentDAOInterface assignmentDAOInterface;

    @Override
    @Transactional
    public void addAssignment(Assignment assignment) {
        assignmentDAOInterface.addAssignment(assignment);
    }

    @Override
    @Transactional
    public void updateAssignmentStatus(int assignmentID) {
        assignmentDAOInterface.updateAssignmentStatus(assignmentID);
    }

    @Override
    @Transactional
    public List<Assignment> listAssignmentsByInternId(String internId) {
        return assignmentDAOInterface.listAssignmentsByInternId(internId);
    }

    @Override
    @Transactional
    public Assignment getAssignmentById(int assignmentId) {
        return assignmentDAOInterface.getAssignmentById(assignmentId);
    }
}
