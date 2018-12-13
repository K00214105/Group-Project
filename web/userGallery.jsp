<%-- 
    Document   : index
    Created on : 19-Dec-2016, 18:30:35
    Author     : AMarie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page import="model.Uploads"%>



<!doctype html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <title>LIT Gallery - Gallery Page</title>
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
                        <a class="username" href="profile.html"><img src="img/039.jpeg" alt="Profile Picture">${user.username}</a>
                        <form action="UserController" class="login-form">  
                            <input type="submit" name="menu" value="Logout" />

                        </form>
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
                            <a  href="userHome.jsp">Home</a>
                            <a href="userProfile.jsp">Profile</a>
                            <a class="active" href="userGallery.jsp">Gallery</a>
                            <a href="userShowPage.jsp">Show</a>

                            <a href="adminArea.jsp">Admin Area</a>
                            <input class="search" type="text" placeholder="Search..">
                        </div>
                    </div>

                </div>

                <div class="breadCrumb">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Gallery</a></li>
                        <li>Title</li>
                    </ul>
                </div>

                <div class="slideshow">
                    <img class="slideshowImg" src="img/banner2.png" alt="Banner Pic">
                </div>

                <div class="title">
                    <h3>Gallery</h3>
                </div>
 
                <div class="flex-containerprofile">
                    <form action="UploadController" method="get" class="login-form" name="Login">
                        <a href="editGallery.html"><button>Edit Gallery</button></a>
                        
                        <input type="submit" name="menu" value="Add Upload" />
                        <input type="submit" name="menu" value="Delete Upload" />
                        <a href="deleteProject.html"><button>Delete Project</button></a>
                    </form>

                </div>

                <div class="main">

                    <div class="galleryItem">
                        <div class="panelGalleryMain">
                            <img src="img/039.jpeg" alt="#####">
                        </div>

                        <div class="descRating">
                            <div class="panelGallery">
                                <h3>Picture Title</h3>
                                <a href="profile.html">
                                    <h4 class="username">User Name length is 28 chars</h4>
                                </a>
                                <h4 class="Date">Upload Date</h4>
                                <p> 240 chars - adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb
                                </p>
                            </div>

                            <div class="panelGallery">
                                <h3>Comments</h3>
                                <form class="comments" method="get">
                                    <textarea rows="4" cols="20"></textarea>
                                    <input type="submit" value="Submit" />
                                </form>
                            </div>

                            <div class="panelGalleryRate">
                                <h3>Rating</h3>
                                <h1>3/5</h1>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star checked"></span>
                                <span class="fa fa-star"></span>
                                <span class="fa fa-star"></span>
                            </div>
                        </div>
                    </div>
                  
                    

                </div>
                
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


