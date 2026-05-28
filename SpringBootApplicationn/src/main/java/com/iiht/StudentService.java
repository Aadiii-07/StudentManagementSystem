package com.iiht;



public interface StudentService {
    String addStudent(Student std);
    Student searchStudent(String sid);
    String updateStudent(Student std);
    String deleteStudent(String sid);
}