
<%@page import="com.car.rental.helper.connectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %>
        <div class="container-fluid p-0 m-0">

            <div class="jumbotron primary-background">
                <div class="container1">
<!--                    <div>
                        <<img src="img\background.png" alt="alt"/>
                    </div>-->
                    <h3 class="display-3"> Welcome to Car Rental System</h3>
                    <p> Through this project I’m trying to solve the problem for those who wants to buy their new car but 
                        due to certain reasons they are unable to do this or they are travelling and want to drive their own 
                        car. In this project we have a login form through which the details of the customers will be stored 
                        in a database. Then after this according to their comfort the customer can choose the which ever
                        car he wants to drive. The prices of the rented car may vary. Once the person have booked the car 
                        he have to book it for a particular period of time like 2 hrs or for a day and after that he have to 
                        return it within a fixed amount of time. Through this the one’s who travelled from state to state 
                        can get their own car in a reasonable rate </p>
                   
                    <a style="margin-right: 10px" href="register.jsp" class="btn btn-outline-light btn-lg""> <span class="fa fa-external-link" ></span> Register </button>
                   
                    
                    <a href="login.jsp" class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle fa-spin"></span> Login </a>
                   
                    </div>
            </div>

        </div>

        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Mini</h5>
                            <p class="card-text">Enterprise Rent-A-Car maintains a great fleet of small cars, so if you are looking for mini car hire, Enterprise is the place to go. You will be choosing a great looking, three-door hatchback from a major manufacturer. Engine size will be somewhere in the range of 1.0L to 1.4L and it will be front wheel drive. Small cars are the ideal choice for one or two people who aren’t planning on long-distance driving. </p>                   
                            
                        </div>
                    </div>

                </div>
                
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Prime</h5>
                            <p class="card-text">PRIMERENT is the datum point for exclusive car rental in Italy and Europe. Our fleet is composed of the most prestigious high-end full-featured and technologically advanced car models. The concept of Primerent is to bring luxury, elegance and style to your stay in Italy and Europe. We offer both luxury and sports cars from the most coveted international brands, like BMW, Ferrari, Audi, Mercedes, Maserati, Porsche, Land Rover and many more. The quality of services permits you to travel in style making a business trip or a vacation more enjoyable and comfortable. You can choose within 4 main categories and rent a car everywhere and Europe.</p>
                            
                        </div>
                    </div>

                </div>
                
                <div class="col-md-4">
                    <div class="card" >
                        
                        <div class="card-body">
                            <h5 class="card-title">Sedan</h5>
                            <p class="card-text">Sedan is available for Airport rides, Local Trip, Outstation Trip, pre-and post-wedding party, and so on. Note: No Toll charges for Airport Pickup and Drop ( Toll-free road trip for Airport Pickup & Drop) Deepam Cabs offer a comfortable, hassle-free, and affordable taxi service in Bangalore.</p>
                            
                        </div>
                    </div>

                </div>


            </div>



        </div>

        <!-- JavaScripts -->
        <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>


    </body>
</html>
