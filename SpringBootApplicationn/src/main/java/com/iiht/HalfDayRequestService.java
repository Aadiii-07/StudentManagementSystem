package com.iiht;

import java.util.List;

public interface HalfDayRequestService {

    String applyRequest(HalfDayRequest request);

    List<HalfDayRequest> getAllRequests();

    String approveRequest(int requestId);

    String rejectRequest(int requestId);
}