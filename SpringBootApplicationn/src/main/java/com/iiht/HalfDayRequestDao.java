package com.iiht;

import java.util.List;

public interface HalfDayRequestDao {

    String applyRequest(HalfDayRequest request);

    List<HalfDayRequest> getAllRequests();

    String approveRequest(int requestId);

    String rejectRequest(int requestId);
}