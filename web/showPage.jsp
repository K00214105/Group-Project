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
        <title>LIT Gallery - Show Page</title>
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
                        <a class="username" href="#"><img src="img/039.jpeg" alt="Profile Picture">User Name</a>
                        <a href="signIn.html">Sign In</a>
                        <a href="signUp.html">Sign Up</a>
                        <a href="#">Log Out</a>
                        <a href="#"></a>
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
                            <a href="profile.jsp">Profile</a>
                            <a href="gallery.jsp">Gallery</a>
                            <a class="active" href="showPage.jsp">Show</a>

                            <a  href="adminArea.jsp">Admin Area</a>
                            <input class="search" type="text" placeholder="Search..">
                        </div>
                    </div>

                </div>


                <div class="breadCrumb">
                    <ul class="breadcrumb">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="showpage.html">Shows</a></li>

                        <li>Show Page</li>
                    </ul>
                </div>

                <div class="slideshow">
                    <img class="slideshowImg" src="img/banner2.png" alt="Banner Pic">


                </div>

                <div class="title">
                    <h3>Live Shows</h3>
                </div>

                <div class="filters">
                    <div class="form">
                        <form>
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

                    <div class="panel">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>Show Title is 28 chars</h3>
                        <h3>Date of show</h3>
                        <p> Description is 300 chars - adf db cunt dggdb adgb adgb wob bgb gd is gay adgb adgb adb adgb </p>

                        <div class="flex-containershowpanel">
                            <a href="enterAShow.html"><button>Submit Entry</button></a>
                        </div>

                        <div class="flex-containershowpanel">
                            <a href="deleteProject.html">
                                <button>Delete Entry</button>
                            </a>
                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/041.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb a</p>
                        <div class="flex-containershowpanel">

                            <a href="enterAShow.html"><button>Submit Entry</button></a>

                        </div>
                        <div class="flex-containershowpanel">
                            <a href="enterAShow.html">
                                <button>Delete Entry</button>
                            </a>
                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/083.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/086.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>


                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>
                </div>

                <div class="title">
                    <h3>Upcomming Shows</h3>
                </div>

                <div class="filters">
                    <div class="form">
                        <form>
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
                    <div class="panel">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/041.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/083.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/086.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>
                </div>



                <div class="title">
                    <h3>Recent Shows</h3>
                </div>

                <div class="filters">
                    <div class="form">
                        <form>
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
                    <div class="panel">
                        <img src="img/039.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/041.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/083.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

                        </div>
                    </div>

                    <div class="panel">
                        <img src="img/086.jpeg" alt="#####">
                        <h3>Show Title</h3>
                        <h3>Date of show</h3>
                        <p> adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adb b </p>

                        <div class="flex-containershowpanel">

                            <button>Submit Entry</button>

                        </div>
                        <div class="flex-containershowpanel">

                            <button>Delete Entry</button>

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

