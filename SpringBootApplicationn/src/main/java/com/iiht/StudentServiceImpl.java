package com.iiht;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentDao studentDao;

    @Override
    public String addStudent(Student std) {
        return studentDao.add(std);
    }

    @Override
    public Student searchStudent(String sid) {
        return studentDao.search(sid);
    }

    @Override
    public String updateStudent(Student std) {
        return studentDao.update(std);
    }

    @Override
    public String deleteStudent(String sid) {
        return studentDao.delete(sid);
    }
    @Override
    public String signupStudent(Student std) {
        return studentDao.signup(std);
    }
    @Override
    public Student loginStudent(String username, String password) {
        return studentDao.loginStudent(username, password);
    }
    @Override
    public List<Student> getAllStudents() {
        return studentDao.getAllStudents();
    }
    
}
