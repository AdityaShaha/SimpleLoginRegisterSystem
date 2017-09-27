package com;

public class LoginUser {
    public boolean AuthorizeUser(String username, String password) {
        if(username.equals("Aditya") && password.equals("abc123")) {

            return true;
        }
        return false;
    }
}
