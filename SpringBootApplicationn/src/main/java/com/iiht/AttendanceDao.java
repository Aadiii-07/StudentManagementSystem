package com.iiht;

import java.util.List;

public interface AttendanceDao {

    String markAttendance(Attendance attendance);

    List<Attendance> getAllAttendance();

}