package com.iiht;
import java.util.List;


public interface StudentDao {
    String add(Student std);
    Student search(String sid);
    String update(Student std);
    String delete(String sid);
    String signup(Student std);
    Student loginStudent(String username, String password);
    List<Student> getAllStudents();
	
}