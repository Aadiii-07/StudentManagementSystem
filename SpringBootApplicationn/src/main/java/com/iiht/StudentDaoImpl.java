package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;


@Repository
public class StudentDaoImpl implements StudentDao {

    @Autowired
    JdbcTemplate jdbcTemplate; 

    @Override
    public String add(Student std) {

        String status = "";

        int row = jdbcTemplate.update(
            "INSERT INTO student VALUES (?, ?, ?)",
            std.getSid(), std.getSname(), std.getSaddr()
        );

        if (row == 1) {
            status = "success";
        } else {
            status = "failure";
        }

        // 🔥 AUDIT LOG
        jdbcTemplate.update(
            "INSERT INTO student_audit (sid, action) VALUES (?, ?)",
            std.getSid(), "ADD"
        );

        return status;
    }
    @Override
    public List<Student> getAllStudents() {

        return jdbcTemplate.query(

                "SELECT * FROM student",

                (rs, rowNum) -> {

                    Student std = new Student();

                    std.setSid(rs.getString("sid"));
                    std.setSname(rs.getString("sname"));
                    std.setSaddr(rs.getString("saddr"));
                    std.setEmail(rs.getString("email"));
                    std.setMobile(rs.getString("mobile"));

                    return std;
                });
    }
    @Override
    public Student search(String sid) {
 
        List<Student> list = jdbcTemplate.query(
            "SELECT * FROM student WHERE sid = ?",
            new Object[]{sid},
            (rs, rowNum) -> {

                Student s = new Student();
                s.setSid(rs.getString("sid"));
                s.setSname(rs.getString("sname"));
                s.setSaddr(rs.getString("saddr"));

                return s;
            }
        );

        return list.isEmpty() ? null : list.get(0);
    }
    @Override
    public String update(Student std) {

        String status = "";

        int row = jdbcTemplate.update(
            "UPDATE student SET sname=?, saddr=? WHERE sid=?",
            std.getSname(), std.getSaddr(), std.getSid()
        );

        if (row == 1) {
            status = "success";
        } else {
            status = "failure";
        }

        // 🔥 AUDIT LOG
        jdbcTemplate.update(
            "INSERT INTO student_audit (sid, action) VALUES (?, ?)",
            std.getSid(), "UPDATE"
        );

        return status;
    }
    @Override
    public String delete(String sid) {

        String status = "";

        int row = jdbcTemplate.update(
            "DELETE FROM student WHERE sid=?",
            sid
        );

        if (row == 1) {
            status = "success";
        } else {
            status = "failure";
        }

        // 🔥 AUDIT LOG
        jdbcTemplate.update(
            "INSERT INTO student_audit (sid, action) VALUES (?, ?)",
            sid, "DELETE"
        );

        return status;
    }
    @Override
    public String signup(Student std) {

        int row = jdbcTemplate.update(
            "INSERT INTO student(sid,sname,saddr,email,mobile,password,course_id,status) VALUES(?,?,?,?,?,?,?,?)",

            std.getSid(),
            std.getSname(),
            std.getSaddr(),
            std.getEmail(),
            std.getMobile(),
            std.getPassword(),
            std.getCourseId(),
            "ACTIVE"
        );

        return row > 0 ? "success" : "failure";
    }
    @Override
    public Student loginStudent(String username, String password) {

        List<Student> list = jdbcTemplate.query(

            "SELECT * FROM student WHERE (email=? OR mobile=?) AND password=?",

            new Object[] { username, username, password },

            (rs, rowNum) -> {

                Student std = new Student();

                std.setSid(rs.getString("sid"));
                std.setSname(rs.getString("sname"));
                std.setSaddr(rs.getString("saddr"));
                std.setEmail(rs.getString("email"));
                std.setMobile(rs.getString("mobile"));
                std.setPassword(rs.getString("password"));

                return std;
            });

        return list.isEmpty() ? null : list.get(0);
    }
}