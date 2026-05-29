package com.iiht;

public interface AdminService {

    String signup(Admin admin);

    Admin login(String username,String password);

}