package com.iiht;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDaoImpl implements AdminDao {

    @Autowired
    JdbcTemplate jdbcTemplate;

    @Override
    public String signup(Admin admin) {

        int row = jdbcTemplate.update(

                "INSERT INTO admin(admin_name,email,mobile,password) VALUES(?,?,?,?)",

                admin.getAdminName(),
                admin.getEmail(),
                admin.getMobile(),
                admin.getPassword());

        return row > 0 ? "success" : "failure";
    }

    @Override
    public Admin login(String username, String password) {

        List<Admin> list = jdbcTemplate.query(

                "SELECT * FROM admin WHERE (email=? OR mobile=?) AND password=?",

                new Object[] { username, username, password },

                (rs, rowNum) -> {

                    Admin admin = new Admin();

                    admin.setAdminId(rs.getInt("admin_id"));
                    admin.setAdminName(rs.getString("admin_name"));
                    admin.setEmail(rs.getString("email"));
                    admin.setMobile(rs.getString("mobile"));

                    return admin;
                });

        return list.isEmpty() ? null : list.get(0);
    }
}