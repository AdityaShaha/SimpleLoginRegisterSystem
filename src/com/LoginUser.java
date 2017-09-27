package com;

public class LoginUser {
    public boolean AuthorizeUser(String username, String password) {
        if(username == "Aditya" && password == "abc12345678") {
            return true;
        }
        return false;
    }
}
