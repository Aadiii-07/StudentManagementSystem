package com.iiht;

import java.util.List;

public interface AttendanceService {

    String markAttendance(Attendance attendance);

    List<Attendance> getAllAttendance();

}