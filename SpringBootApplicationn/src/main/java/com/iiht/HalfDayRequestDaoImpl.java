package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class HalfDayRequestDaoImpl
        implements HalfDayRequestDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public String applyRequest(HalfDayRequest request) {

        int row = jdbcTemplate.update(

                "INSERT INTO halfday_request(student_id,reason,request_date,approval_status) VALUES(?,?,?,?)",

                request.getStudentId(),
                request.getReason(),
                request.getRequestDate(),
                "PENDING");

        return row > 0 ? "success" : "failure";
    }

    @Override
    public List<HalfDayRequest> getAllRequests() {

        return jdbcTemplate.query(

                "SELECT * FROM halfday_request",

                (rs,rowNum)->{

                    HalfDayRequest r =
                            new HalfDayRequest();

                    r.setRequestId(
                            rs.getInt("request_id"));

                    r.setStudentId(
                            rs.getString("student_id"));

                    r.setReason(
                            rs.getString("reason"));

                    r.setRequestDate(
                            rs.getString("request_date"));

                    r.setApprovalStatus(
                            rs.getString("approval_status"));

                    return r;
                });
    }

    @Override
    public String approveRequest(int requestId) {

        int row = jdbcTemplate.update(

                "UPDATE halfday_request SET approval_status='APPROVED' WHERE request_id=?",

                requestId);

        return row > 0 ? "success" : "failure";
    }

    @Override
    public String rejectRequest(int requestId) {

        int row = jdbcTemplate.update(

                "UPDATE halfday_request SET approval_status='REJECTED' WHERE request_id=?",

                requestId);

        return row > 0 ? "success" : "failure";
    }
}