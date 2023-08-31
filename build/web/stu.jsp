<%-- 
    Document   : stu
    Created on : Apr 2, 2023, 6:19:14 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="NewServlet" method="post">
                <table>
                    <tr>
                        <td>Name:</td>
                        <td><input type="text" name="name" placeholder="Enter here"/></td>
                    </tr>
                    <tr>
                        <td>course:</td>
                        <td><input type="course" name="course" placeholder="Enter here"/></td>
                    </tr>
                    <tr>
                        <td>E-mail:</td>
                        <td><input type="email" name="email" placeholder="Enter here"/></td>
                    </tr>
                     <tr>
                        <td>Address:</td>
                        <td><input type="address" name="address" placeholder="Enter here"/></td>
                    </tr>
                </table>
                <button type="submit">Submit</button>
            </form>
</body>
</html>
