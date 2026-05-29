package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AttendanceServiceImpl
        implements AttendanceService {

    @Autowired
    AttendanceDao attendanceDao;

    @Override
    public String markAttendance(
            Attendance attendance) {

        return attendanceDao
                .markAttendance(attendance);
    }

    @Override
    public List<Attendance> getAllAttendance() {

        return attendanceDao.getAllAttendance();
    }
}