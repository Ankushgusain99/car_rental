

package com.car.rental.utilities;
import java.sql.*;
public class user {
    private int id;
    private String name;
    private String email;
    private String password;
    private String gender;
    private Timestamp DateTIME;

    public user(int id, String name, String email, String password, String gender, Timestamp DateTIME) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
        this.DateTIME = DateTIME;
    }

    public user() {
    }

    public user(String name, String email, String password, String gender) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Timestamp getDateTIME() {
        return DateTIME;
    }

    public void setDateTIME(Timestamp DateTIME) {
        this.DateTIME = DateTIME;
    }
    
    
}
