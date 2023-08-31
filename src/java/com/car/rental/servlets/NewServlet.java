/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.car.rental.servlets;

import com.car.rental.dao.userdao;
import com.car.rental.helper.connectionProvider;
import static com.car.rental.helper.connectionProvider.con;
import com.car.rental.utilities.student;
import com.mysql.cj.x.protobuf.MysqlxCursor;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import static org.apache.tomcat.jni.Buffer.address;

/**
 *
 * @author HP
 */
public class NewServlet extends HttpServlet {

    private String student;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
                String name=request.getParameter("name");
                String course=request.getParameter("course");
                String email=request.getParameter("email");
                String aaddress=request.getParameter("address");
                student s=new student(name,course,email,aaddress);
                userdao dao=new userdao(connectionProvider.getConnection());
                if(dao.getRecord(s))
                {
                    out.println("<h1> Name </h1> : "+name);
                    out.println("<h1> Course </h1> : "+course);
                    out.println("<h1> Email </h1> : "+email);
                    out.println("<h1> Address </h1> : "+aaddress);
                }
                else
                    out.println("error");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        try {
  
            // Set the response content type and 
            
  
            // Set up HTML table formatting for the output
            
  
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
        
        String name=request.getParameter("name");
                String course=request.getParameter("course");
                String email=request.getParameter("email");
                String aaddress=request.getParameter("address");
                student s=new student(name,course,email,aaddress);
                userdao dao=new userdao(connectionProvider.getConnection());
                if(dao.getRecord(s))
                {
                    System.out.println("hello=================================================================================");
                   out.println("<h3>Student Details</h3>");
                    out.println("<table border=1><tr>" + "<td><b>Id</b></td>" + "<td><b>Name</b></td>"
                    + "<td><b>Course</b></td>" + "<td><b>Address</b></td>"
                    + "<td><b>Email</b></td>");
            try{
            // Create JDBC statement object, construct 
            // the SQL query and execute the query.
            Statement stmt = con.createStatement();
            String sql = "select * from record;";
            ResultSet rs = stmt.executeQuery(sql);
  
            // Loop through the result set to 
            // retrieve the individual data items.
            while (rs.next()) {
                int id=rs.getInt("id");
                name = rs.getString("name");
                course = rs.getString("course");
                aaddress = rs.getString("address");
                email = rs.getString("email");
                    
  
                out.println("<tr>" + "<td>" + id + "</td>" + "<td>" + name + "</td>" + "<td>" + course + "</td>"
                        + "<td>" + aaddress + "</td>" + "<td>" + email + "</td>" + "<td>" +"</td></tr>");
  
            }
            out.println("</table></body></html>");
  
            // Close Result set, Statement
            // and PrintWriter objects.
            rs.close();
            stmt.close();
            out.close();
            }   
            catch(Exception e)
            {
                e.printStackTrace();
            }
                }
                else
                    out.println("error");
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
