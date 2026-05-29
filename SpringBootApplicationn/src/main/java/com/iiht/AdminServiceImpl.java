package com.iiht;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminDao adminDao;

    @Override
    public String signup(Admin admin) {
        return adminDao.signup(admin);
    }

    @Override
    public Admin login(String username, String password) {
        return adminDao.login(username, password);
    }
}