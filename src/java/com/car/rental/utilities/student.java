/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.car.rental.utilities;

/**
 *
 * @author HP
 */
public class student {
    private int id;
    private String name;
    private String course;
    private String email;
    private String aaddress;

    public student(int id, String name, String course, String email, String aaddress) {
        this.id = id;
        this.name = name;
        this.course = course;
        this.email = email;
        this.aaddress = aaddress;
    }

    public student() {
    }

    public student(String name, String course, String email, String aaddress) {
        this.name = name;
        this.course = course;
        this.email = email;
        this.aaddress = aaddress;
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

    public String getCourse() {
        return course;
    }

    public void setCourse(String course) {
        this.course = course;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAaddress() {
        return aaddress;
    }

    public void setAaddress(String aaddress) {
        this.aaddress = aaddress;
    }

    
    
    
}
