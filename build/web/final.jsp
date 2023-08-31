
<%@page import="com.car.rental.utilities.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    user u4 = (user) session.getAttribute("currentUser");
    if (u4 == null) {
        response.sendRedirect("final.jsp");

    }
%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <!-- CSS -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link href="css/mine.css" rel="stylesheet" type="text/css"/>

        <nav class="navbar navbar-expand-lg navbar-dark primary-background">
            <a class="navbar-brand" href="#"> <span class="fa fa-asterisk" ></span> Car Rental System</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a  href="final.jsp" class="nav-item nav-link active" href="#"><span class="fa fa-home" ></span> Home <span class="sr-only">(current)</span></a>
                    <a class="nav-item nav-link" href="#"><span class="fa fa-bell-o" ></span> About us</a>
                    <a href="final.jsp" class="nav-item nav-link" href="#"><span class="fa fa-car" ></span> Rented Cars</a>
                    <a href="contact.jsp" class="nav-item nav-link" href="#"><span class="fa fa-phone-square" ></span> Contact Us</a>


                    <ul class="navbar-nav mr-right">
                        <a class="nav-item nav-link" href="#!" data-toggle="modal" data-target="#rent-modal"><span class="fa fa-user-plus" ></span> <%= u4.getName()%></a>
                        <a class="nav-item nav-link" href="LogoutServlet"><span class="fa fa-user-plus" ></span> Log out</a>
                    </ul>
                </div>
            </div>
        </nav>
    
            <div class="modal fade" id="rent-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header primary-background text-white" >
                        <h5 class="modal-title" id="exampleModalLabel">Car Rental</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <h5 class="modal-title" id="exampleModalLabel"> <%= u4.getName()%></h5>

                            <table class="table">

                                <tbody>
                                    <tr>
                                        <th scope="row">Id :</th>
                                        <td> <%= u4.getId()%> </td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Email :</th>
                                        <td> <%= u4.getEmail()%> </td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Gender :</th>
                                        <td> <%= u4.getGender()%> </td>

                                    </tr>
                                    <tr>
                                        <th scope="row">Registered Date :</th>
                                        <td> <%= u4.getDateTIME().toString()%> </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    
    
    
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="car-details text-center">
                    <div class="name">Ferrari </div>
                    <div class="car-price">190</div>
                </div>
                <img class="d-block w-100" src="img/img1.png" alt="Ferrari">
            </div>
            <div class="carousel-item">
                <div class="car-details text-center" >
                    <div class="name">Honda City </div>
                    <div class="car-price">190</div>
                </div>
                <img class="d-block w-100" src="img/img2.png" alt="Honda City">
            </div>
            <div class="carousel-item">
                <div class="car-details text-center">
                    <div class="name">Swift Dzire </div>
                    <div class="car-price">190</div>
                </div>
                <img class="d-block w-100" src="img/img3.png" alt="Swift Dzire">
            </div>
            <div class="carousel-item">
                <div class="car-details text-center">
                    <div class="name">Boleno </div>
                    <div class="car-price">190</div>
                </div>
                <img class="d-block w-100" src="img/img4.png" alt="Boleno">
            </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</head>
<body>

        


    <main class="primary-background p-5">
        <div class="container" style="margin-top: 600px;">
            <div class="col-md-6 offset-3">
                <div class="card-header text-center">
                    <span class="fa fa-user-circle fa-2x "></span>
                    <br>
                    <h3> Rent Now </h3>
                    <br>
                </div>

                <div class="card-body">
                    <form action="RentServlet" id="reg-form" method="POST">

                        <div class="form-group">
                            <label for="cars">Choose a car:</label>
                            <select id="cars" name="car_name">
                                <option value="volvo">Select</option>
                                <option value="volvo">Ferrari</option>
                                <option value="saab">Honda City</option>
                                <option value="fiat">Swift Dzire</option>
                                <option value="audi">Boleno</option>
                            </select>

                        
                        <div>
                            <label for="start-date">Enter No. of Hours:</label>
                            <input name="hours" type="number" id="hours">
                        </div>
                        <div class="form-group">
                            <label for="aadhar">Enter your aadhar number:</label>
                            <input name="aadhar" type="number" id="aadhar">
                        </div>



                        


                        <div class="form-group">
                            <label for="phone">Enter your phone number:</label>
                            <input type="tel" id="phone" name="phone" >
                        </div>

                        <div class="form-group">
                            <label for="license_number">Enter your license number:</label>
                            <input type="number" id="license_number" name="license_number">
                        </div>



                        <div class="form-check">
                            <input name="check" type="checkbox" class="form-check-input" id="exampleCheck1" value="check">
                            <label class="form-check-label" for="exampleCheck1">Agree Terms and Conditions</label>
                        </div>
                        <br>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>

            </div>

        </div>

    </main>


    <script src="https://code.jquery.com/jquery-3.6.4.min.js" integrity="sha256-oP6HI9z1XaZNBrJURtCoUT5SUnxFr8s3BzRl+cbzUq8=" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="js/myjs.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
        <script>
            $(document).ready(function () {
                console.log("loaded....")
                $('#reg-form').on('submit', function (event) {
                    event.preventDefault();
                    let form = new FormData(this);
                    $.ajax({
                        url: "RentServlet",
                        type: 'POST',
                        data: form,
                        success: function (data, textStatus, jqXHR) {
                            console.log(data)
                        if(data.trim()=="done")
                        {
                            swal("Rented Successfully...")
                                    .then((value) => {
                                        window.window.location="final.jsp"
                                    });
                        }
                        else
                            swal(data)
                        },
                        ERROR: function (jqXHR, textStatus, errorThrown) {
                            console.log(jqXHR)
                            
                            swal("Sometging went wrong.....")
                                    
                        },
                        processData: false,
                        contentType: false
                    });
                });


            });


        </script>
    
    
    
</body>
</html>
