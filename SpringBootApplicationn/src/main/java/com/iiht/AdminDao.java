package com.iiht;

public interface AdminDao {

    String signup(Admin admin);

    Admin login(String username,String password);

}