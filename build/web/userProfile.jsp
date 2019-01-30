

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
                        <a class="username" href="profile.html"><img src="${pageContext.request.contextPath}/img/${user.profilePic}">${user.username} </a>
                        <form action="UserController" class="login-form">  
                              <input type="submit" name="menu" value="Logout" />                                
                          </form>
                    </div>

                    <div class="logo">
                        <a href="index.html">
                            <img class="logohome" src="${pageContext.request.contextPath}/img/logo1.png" alt="LIT Gallery Logo">
                        </a>
                    </div>

                    <div class="nav">
                        <label for="toggle">&#9776;</label>
                        <input type="checkbox" id="toggle" />
                        <div class="menu">
                            <a  href="UserController?menu=Home">Home</a>
                            <a class="active" href="UserController?menu=Profile">Profile</a>
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
                        <li><a href="UserController?menu=Profile">Profile</a></li>
                        <li>${user.username}</li>
                    </ul>
                </div>

                <div class="bannerprofile">
                    <img src="${pageContext.request.contextPath}/img/bann.jpg" alt="Snow">
                    <img src="${pageContext.request.contextPath}/img/${user.profilePic}" alt="Snow" class="profile">
                </div>

                <div class="flex-containerprofile">
                    <a href="editProfile.jsp"><button>Edit Profile</button></a>                 
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
                    
                <div class="footer">
                        <p>Terms and Conditions</p>
                        <div class="logos">
                            <a href="#"><img src="${pageContext.request.contextPath}/img/facebook-logo-circle-transparent.png" alt="Facebook Logo"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/twitterTP.png" alt="Twitter Logo"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/litTP.png" alt="LIT Logo"></a>
                            <a href="#"><img src="${pageContext.request.contextPath}/img/instaTP.jpg.png" alt="Instagram Logo"></a>
                        </div>
                    </div>
            </div>
        </div>
    </body>

</html>
