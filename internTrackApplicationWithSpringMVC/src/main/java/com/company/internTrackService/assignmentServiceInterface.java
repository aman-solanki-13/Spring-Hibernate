package com.company.internTrackService;

import com.company.InternTrackEntities.Assignment;

import java.util.List;

public interface assignmentServiceInterface {
    public void addAssignment(Assignment assignment);
    public void updateAssignmentStatus(int assignmentID);
    public List<Assignment> listAssignmentsByInternId(String internId);
    public Assignment getAssignmentById(int assignmentId);
}
