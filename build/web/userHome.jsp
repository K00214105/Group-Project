

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page import="model.Uploads"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>LIT Gallery - Home Page</title>
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
                            <a class="username" href="profile.html" ><img src="${pageContext.request.contextPath}/img/${user.profilePic}" alt="Profile Picture" >${user.username}</a>
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
                                <a class="active" href="UserController?menu=Home">Home</a>
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
                            <li></li>
                        </ul>
                    </div>

                    <div class="slideshow">
                        <img class="slideshowImg" src="${pageContext.request.contextPath}/img/banner.png" alt="Banner Pic">
                    </div>

                    <div class="title">
                        <h3>Latest Uploads</h3>
                    </div>

                    <div class="filters">
                        <div class="form">
                            <form class="filter">
                                <fieldset>
                                    <p>
                                        <select class="myList">
                                            <option>Date</option>
                                            <option value="2">two</option>
                                            <option value="3">three</option>
                                            <option value="4">four</option>
                                        </select>
                                    </p>
                                </fieldset>
                                <fieldset>
                                    <p>
                                        <select class="myList">
                                            <option>Course</option>
                                            <option value="2">two</option>
                                            <option value="3">three</option>
                                            <option value="4">four</option>
                                        </select>
                                    </p>
                                </fieldset>
                                <fieldset>
                                    <p>
                                        <select class="myList">
                                            <option>Tags</option>
                                            <option value="2">two</option>
                                            <option value="3">three</option>
                                            <option value="4">four</option>
                                        </select>
                                    </p>
                                </fieldset>
                            </form>
                        </div>
                    </div>

                    <div class="main">                        
                    <c:forEach var="uploads" items="${allUploads}">
                        <div class="panel">
                            <a href="UploadController?menu=getUploadView&uploadID=${uploads.uploadID}"><img src="${pageContext.request.contextPath}/img/${uploads.image}" alt="#####"></a>
                            <h3>Title: ${uploads.title}</h3>
                            
                                <h3>User Name: ${uploads.username}</h3>
                                <h3>upload id: ${uploads.uploadID}</h3>                      
                                <p>Rating: ${uploads.rating}/5</p>
                                <p>Description: ${uploads.description}  </p>
                        </div>
                     </c:forEach>                     
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


        <script
            src="https://code.jquery.com/jquery-1.12.4.js"
            integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
        crossorigin="anonymous"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/form-validation.js"></script>
    </body>
</html>
