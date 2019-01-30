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
        <title>LIT Gallery - Detailed View Page</title>
        <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
        <!-- Add icon library -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="icon" type="image/png" href="img/sss.png">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
    </head>

    <body>
        <div class="pageWrapper">
            <form action="UserController" method="post" class="login-form" name="">
                <div class="grid">
                    <div class="header">

                        <div class="loginSignUp">
                            <a class="username" href="UserController?menu=Logout"><img src="${pageContext.request.contextPath}/img/${user.profilePic}">${user.username}</a>
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
                                <a href="UserController?menu=Home">Home</a>
                                <a href="UserController?menu=Profile">Profile</a>
                                <a href="UploadController?menu=getUserUploads">Gallery</a>
                                <a href="userShowPage.jsp">Show</a>

                                <a href="adminArea.jsp">Admin Area</a>
                                <input class="search" type="text" placeholder="Search..">
                            </div>
                        </div>

                    </div>

                    <div class="breadCrumb">
                        <ul class="breadcrumb">
                            <li><a href="UserController?menu=Home">Home</a></li>
                            <li><a href="#">Detailed View</a></li>
                            <li>${uploads.username}</li>
                        </ul>
                    </div>

                    <div class="slideshow">
                        <img class="slideshowImg" src="img/banner2.png" alt="Banner Pic">
                    </div>

                    <div class="title">
                        <h3>Detailed View</h3>
                    </div>

                    <div class="flex-containerprofile">
                        

                    </div>

                    <div class="main">
                        
                            <div class="galleryItem">
                                <div class="panelGalleryMain">
                                    <img src="${pageContext.request.contextPath}/img/${drilldown.image}" alt="#####">
                                </div>

                                <div class="descRating">
                                    <div class="panelGallery">
                                        <h3>Details</h3>
                                        <a href="userProfile.jsp">
                                            <h4 class="username">Username: ${user.username}</h4>
                                        </a>
                                        <h4>upload id: ${drilldown.uploadID}</h4>

                                        <p>Title: ${drilldown.title}
                                        </p>

                                        <p>Description: ${drilldown.description}
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
                                        <p>${uploads.rating}/5</p>                         
                                    </div>
                                </div>
                                <form action="UploadController" method="get" class="login-form" name="Login">
                                    <input type="hidden" name="uploadId" value=${uploads.uploadID}>
                                  
                                </form>
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
    </form>
</body>

</html>


