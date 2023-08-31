
package com.car.rental.helper;
import java.sql.*;
public class connectionProvider {
    public static Connection con;
    public static Connection getConnection(){
        try{
           if(con==null)
           {
             
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection("jdbc:mysql://localhost:3306/carrent1", "root", "ankush210899@");
           }
                    
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return con;
    }
}
