package com.company.internTrackService;

import com.company.InternTrackEntities.DailyStatus;

import java.util.List;

public interface dailyStatusServiceInterface {
    public void addStatus(DailyStatus dailyStatus);
    public List<DailyStatus> listAssignmentByInternId(String statusOf);
}
