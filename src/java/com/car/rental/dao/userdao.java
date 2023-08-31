package com.car.rental.dao;
import com.car.rental.utilities.rent;
import com.car.rental.utilities.student;
import com.car.rental.utilities.user;
import java.sql.*; 
public class userdao {
    private Connection con;

    public userdao(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(user u1)
    {
        boolean f=false;
        try{
            
            String query="insert into car(name,email,password,gender) values(?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,u1.getName());
            ps.setString(2, u1.getEmail());
            ps.setString(3, u1.getPassword());
            ps.setString(4, u1.getGender());
            ps.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    
    public user getuserByEmailandPassword(String email, String password)
    {
        user u3=null;
        try {
            String query="select * from car where email =? and password  =?";
            PreparedStatement ps1=con.prepareStatement(query);
            ps1.setString(1,email);
            ps1.setString(2,password);
            ResultSet set=ps1.executeQuery();
            
            if(set.next()){
                u3=new user();
                String name=set.getString("name");
                u3.setName(name);
                u3.setId(set.getInt("id"));
                u3.setEmail(set.getString("email"));
                u3.setPassword(set.getString("password"));
                u3.setGender(set.getString("gender"));
                u3.setDateTIME(set.getTimestamp("rdate"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return u3;
    }
    
    public boolean saveRent(rent r1)
    {
        boolean f=false;
        try{
            
            String query="insert into rent(car_name,hours,phone,license_no,aadhar) values(?,?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,r1.getCar_name());
            ps.setString(2, String.valueOf(r1.getHours()));
            ps.setString(3, String.valueOf(r1.getPhone()));
            ps.setString(4, String.valueOf(r1.getLicense_no()));
            ps.setString(5, String.valueOf(r1.getAadhar()));
            ps.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
    
    public boolean getRecord(student s)
    {
        boolean f=false;
        try{
            
            String query="insert into record(name,course,address,email) values(?,?,?,?)";
            PreparedStatement ps=this.con.prepareStatement(query);
            ps.setString(1,s.getName());
            ps.setString(2, s.getCourse());
            ps.setString(3, s.getAaddress());
            ps.setString(4, s.getEmail());
            ps.executeUpdate();
            f=true;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return f;
    }
}
