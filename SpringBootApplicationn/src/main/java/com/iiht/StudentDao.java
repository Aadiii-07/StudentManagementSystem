package com.iiht;



public interface StudentDao {
    String add(Student std);
    Student search(String sid);
    String update(Student std);
    String delete(String sid);
	
}