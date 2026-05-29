package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AttendanceDaoImpl implements AttendanceDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public String markAttendance(Attendance attendance) {

        int row = jdbcTemplate.update(

                "INSERT INTO attendance(student_id,attendance_date,status,reason) VALUES(?,?,?,?)",

                attendance.getStudentId(),
                attendance.getAttendanceDate(),
                attendance.getStatus(),
                attendance.getReason());

        return row > 0 ? "success" : "failure";
    }

    @Override
    public List<Attendance> getAllAttendance() {

        return jdbcTemplate.query(

                "SELECT * FROM attendance",

                (rs, rowNum) -> {

                    Attendance a = new Attendance();

                    a.setAttendanceId(rs.getInt("attendance_id"));
                    a.setStudentId(rs.getString("student_id"));
                    a.setAttendanceDate(
                            rs.getString("attendance_date"));
                    a.setStatus(rs.getString("status"));
                    a.setReason(rs.getString("reason"));

                    return a;
                });
    }
}