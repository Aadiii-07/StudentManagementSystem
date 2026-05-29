package com.iiht;
import java.util.List;



public interface StudentService {
    String addStudent(Student std);
    Student searchStudent(String sid);
    String updateStudent(Student std);
    String deleteStudent(String sid);
    String signupStudent(Student std);
    Student loginStudent(String username, String password);
    List<Student> getAllStudents();
}