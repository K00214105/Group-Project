

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
            <form action="UserController" method="get" class="login-form" name="">
                <div class="grid">
                    <div class="header">

                        <div class="loginSignUp">
                            <a class="username" href="UserController?menu=Logout"><img src="${pageContext.request.contextPath}/img/${user.profilePic}" alt="Profile Picture">${user.username}</a>
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
                                <a   href="UserController?menu=Home">Home</a>
                                <a href="UserController?menu=Profile">Profile</a>
                                <a class="active" href="UploadController?menu=getUserUploads">Gallery</a>
                                <a href="userShowPage.jsp">Show</a>

                                <a href="adminArea.jsp">Admin Area</a>
                                <input class="search" type="text" placeholder="Search..">
                            </div>
                        </div>

                    </div>

                    <div class="breadCrumb">
                        <ul class="breadcrumb">
                            <li><a href="UserController?menu=Home">Home</a></li>
                            <li><a href="UploadController?menu=getUserUploads">Gallery</a></li>
                            <li>${user.username}</li>
                        </ul>
                    </div>

                    <div class="slideshow">
                        <img class="slideshowImg" src="${pageContext.request.contextPath}/img/banner.png" alt="Banner Pic">
                    </div>

                    <div class="title">
                        <h3>Gallery</h3>
                    </div>

                    <div class="flex-containerprofile">
                        <form action="UploadController" method="get" class="login-form" name="Login">


                            <input type="submit" name="menu" value="Add Upload" />


                        </form>

                    </div>

                    <div class="main">
                        <c:forEach var="uploads" items="${userUploads}">
                            <div class="galleryItem">
                                <div class="panelGalleryMain">
                                    <img src="${pageContext.request.contextPath}/img/${uploads.image}" alt="#####">
                                </div>

                                <div class="descRating">
                                    <div class="panelGallery">
                                        <h3>Details</h3>
                                        
                                            <h4 class="username">Username: ${user.username}</h4>
                                        
                                        <h4>upload id: ${uploads.uploadID}</h4>

                                        <p>Title: ${uploads.title}
                                        </p>

                                        <p>Description: ${uploads.description}
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
                                    <input type="submit" name="menu" value="Delete Upload" />
                                     <input type="submit" name="menu" value="Edit Upload" />
                                </form>
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
    </form>
</body>

</html>


