<%-- 
    Document   : index
    Created on : 19-Dec-2016, 18:30:35
    Author     : AMarie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>



<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>LIT Gallery - Profile Page</title>
          <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="image/png" href="img/sss.png">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
    </head>

    <body>
        <div class="pageWrapper">

            <div class="grid">
                <div class="header">

                    <div class="loginSignUp">
                        <a class="username" href="profile.html"><img src="img/039.jpeg" alt="Profile Picture">${user.username} </a>
                        <a href="login.jsp">Sign In</a>
                        <a href="AddUser.jsp">Sign Up</a>
                        <a href="#">Log Out</a>
                    </div>

                    <div class="logo">
                        <a href="index.html">
                            <img class="logohome" src="img/logo1.png" alt="LIT Gallery Logo">
                        </a>
                    </div>

                    <div class="nav">
                        <label for="toggle">&#9776;</label>
                        <input type="checkbox" id="toggle" />
                        <div class="menu">
                            <a  href="home.jsp">Home</a>
                            <a class="active" href="profile.jsp">Profile</a>
                            <a href="gallery.jsp">Gallery</a>
                            <a href="showPage.jsp">Show</a>

                            <a href="adminArea.jsp">Admin Area</a>
                            <input class="search" type="text" placeholder="Search..">
                        </div>
                    </div>
                </div>


                <div class="breadCrumb">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="profile.html">Profile</a></li>
                        <li>${user.username}</li>
                    </ul>
                </div>

                <div class="bannerprofile">
                    <img src="img/bann.jpg" alt="Snow">
                    <img src="img/profileTemp.jpg" alt="Snow" class="profile">
                </div>

                <div class="flex-containerprofile">
                    <a href="editProfile.jsp"><button>Edit Profile</button></a>
                    <a href="addProject.jsp"><button>Upload Project</button></a>
                    <a href="deleteProject.jsp"><button>Delete Project</button></a>
                </div>



                <div class="containerprofile">
                    <h3>Bio</h3>
                    <div class="textprofile">
                        <p>${user.bio}</p>

                    </div>
                </div>

                <div class="containerprofile1">
                    <h3>Contact Info</h3>

                    <div class="textprofile1">
                        <p>${user.email}</p>
                        <p>Phone Number: 09876654433</p>
                        <div class="linkedin">
                            <p>LinkedIn:</p><a href="#">
                                <p> joebloggs@linkedIn.com</p>
                            </a>
                        </div>
                    </div>
                </div>

                <div class="title">
                    <h3>Gallary Showcase</h3>
                </div>

                <div class="main">
                    <div class="panelprofile">
                        <a href="gallery.html"><img src="img/039.jpeg" alt="#####"></a>
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/041.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/083.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/086.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile" >
                        <img src="img/039.jpeg" alt="#####" >
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>

                    <div class="panelprofile">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>pic title</h3>
                        <a href="profile.html">
                            <h4>User Name</h4>
                        </a>
                        <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star"></span>
                        <span class="fa fa-star"></span>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>
                    </div>
                </div>
                .
                <div class="footer">
                    <p>Terms and Conditions</p>
                    <div class="logos">
                        <a href="#"><img src="img/facebook-logo-circle-transparent.png" alt="Facebook Logo"></a>
                        <a href="#"><img src="img/twitterTP.png" alt="Twitter Logo"></a>
                        <a href="#"><img src="img/litTP.png" alt="LIT Logo"></a>
                        <a href="#"><img src="img/instaTP.jpg.png" alt="Instagram Logo"></a>
                    </div>
                </div>
            </div>
        </div>
    </body>

</html>
