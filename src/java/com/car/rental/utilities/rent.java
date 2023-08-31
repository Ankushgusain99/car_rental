package com.car.rental.utilities;

public class rent {
    private int id;
    private String car_name;
    private int hours;
    private long aadhar;
    private long phone;
    private long license_no;

    public rent(int id, String car_name, int hours, long aadhar, long phone, long license_no) {
        this.id = id;
        this.car_name = car_name;
        this.hours = hours;
        this.aadhar = aadhar;
        this.phone = phone;
        this.license_no = license_no;
    }

    public rent() {
    }

    public rent(String car_name,  int hours, long aadhar, long phone, long license_no) {
        this.car_name = car_name;
    
        this.hours = hours;
        this.aadhar = aadhar;
        this.phone = phone;
        this.license_no = license_no;
    }

    public String getCar_name() {
        return car_name;
    }

    public void setCar_name(String car_name) {
        this.car_name = car_name;
    }

    

    public int getHours() {
        return hours;
    }

    public void setHours(int hours) {
        this.hours = hours;
    }

    public long getAadhar() {
        return aadhar;
    }

    public void setAadhar(long aadhar) {
        this.aadhar = aadhar;
    }

   

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }

    public long getLicense_no() {
        return license_no;
    }

    public void setLicense_no(long license_no) {
        this.license_no = license_no;
    }

    
    
    
    
    
}
