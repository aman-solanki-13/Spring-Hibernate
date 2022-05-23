package com.company.internTrackDAO;

import com.company.InternTrackEntities.DailyStatus;

import java.util.List;

public interface dailyStatusDAOInterface {
    public void addStatus(DailyStatus dailyStatus);
    public List<DailyStatus> listAssignmentByInternId(String statusOf);
}
