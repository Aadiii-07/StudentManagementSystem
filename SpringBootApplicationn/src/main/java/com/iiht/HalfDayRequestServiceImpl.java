package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class HalfDayRequestServiceImpl
        implements HalfDayRequestService {

    @Autowired
    HalfDayRequestDao dao;

    @Override
    public String applyRequest(
            HalfDayRequest request) {

        return dao.applyRequest(request);
    }

    @Override
    public List<HalfDayRequest> getAllRequests() {

        return dao.getAllRequests();
    }

    @Override
    public String approveRequest(
            int requestId) {

        return dao.approveRequest(requestId);
    }

    @Override
    public String rejectRequest(
            int requestId) {

        return dao.rejectRequest(requestId);
    }
}