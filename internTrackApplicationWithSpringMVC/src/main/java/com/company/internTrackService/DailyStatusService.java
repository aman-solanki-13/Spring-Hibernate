package com.company.internTrackService;

import com.company.InternTrackEntities.DailyStatus;
import com.company.internTrackDAO.dailyStatusDAOInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class DailyStatusService implements dailyStatusServiceInterface{
    @Autowired
    private dailyStatusDAOInterface dailyStatusDAOInterface;

    @Transactional
    @Override
    public void addStatus(DailyStatus dailyStatus) {
        dailyStatusDAOInterface.addStatus(dailyStatus);
    }

    @Transactional
    @Override
    public List<DailyStatus> listAssignmentByInternId(String statusOf) {
        return dailyStatusDAOInterface.listAssignmentByInternId(statusOf);
    }
}
