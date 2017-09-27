package com;

public class RegisterUser {

    public static boolean isParsable(String input){
        boolean parsable = true;
        try{
            Integer.parseInt(input);
        }catch(NumberFormatException e){
            parsable = false;
        }
        return parsable;
    }

    public int ValidateUser(String username, String password, String firstName, String lastName, String email,String role,String age) {
        if(username == null) {
            return 1;
        } else if(username.length() < 5){
            return 2;
        } else if(password.length()<8) {
            return 4;
        } else if(password ==null) {
            return 3;
        } else if(firstName == null) {
            return 5;
        } else if(lastName == null) {
            return 6;
        } else if(email == null) {
            return 7;
        } else if(age == null) {
            return 8;
        } else if(isParsable(age)==false) {
            return 9;
        } else if(email.indexOf("@") < 1) {
            return 10;
        }
        return 0;
    }

    public String ValidationError(int Errno) {
        if(Errno == 1) {
            return "Username cannot be null";
        } else if(Errno == 2) {
            return "Username length should be greater than 5";
        } else if(Errno == 3) {
            return "Password cannot be null";
        } else if(Errno == 4) {
            return "Password length should be greater than 8";
        } else if(Errno == 5) {
            return "Firstname cannot be null";
        } else if(Errno == 6) {
            return "Lastname cannot be null";
        } else if(Errno == 7) {
            return "Email cannot be null";
        } else if(Errno == 8) {
            return "Age cannot be null";
        } else if(Errno == 9) {
            return "Age should be an integer";
        } else if(Errno == 10) {
            return "Enter a valid Email Address";
        }
        return "Successfully Validated!";
    }
}
