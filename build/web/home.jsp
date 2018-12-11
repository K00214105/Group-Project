<%-- 
    Document   : register
    Created on : 07-Dec-2016, 21:39:41
    Author     : AMarie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="model.User"%>

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
            <form action="UserController" method="get" class="login-form" name="Get User Details">
                <div class="grid">
                    <div class="header">

                        <div class="loginSignUp">

                            <form action="UserController" class="login-form">                                      
                                <input type="submit" name="menu" value="Login" />              
                                <input type="submit" name="menu" value="SignUp" />

                            </form>


                            </form>
                        </div>

                        <div class="logo">
                            <a href="index.html">
                                <img class="logohome" src="img/logo1.png" alt="LIT Gallery Logo">
                            </a>
                        </div>
                        </form>
                        <div class="nav">
                            <label for="toggle">&#9776;</label>
                            <input type="checkbox" id="toggle" />
                            <div class="menu">
                                <a class="active" href="home.jsp">Home</a>
                                <a href="profile.jsp">Profile</a>
                                <a href="gallery.jsp">Gallery</a>
                                <a href="showPage.jsp">Show</a>
                                <a href="adminArea.jsp">Admin Area</a>
                                <input class="search" type="text" placeholder="Search..">
                            </div>
                        </div>
                    </div>


                    <div class="breadCrumb">
                        <ul class="breadcrumb">
                            <li><a href="#">Home</a></li>
                            <li></li>
                        </ul>
                    </div>

                    <div class="slideshow">
                        <img class="slideshowImg" src="img/banner.png" alt="Banner Pic">
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

                        <div class="panel">
                            <a href="gallery.html"><img src="img/039.jpeg" alt="#####"></a>
                            <h3>Title Length is 24 chars</h3>
                            <a href="profile.html">
                                <h4>User Name length is 28 chars</h4>
                            </a>
                            <h4><a href="gallery.html">Tag1, Tag2, Tag3</a></h4>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                            <p> 240 chars - adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb adf db dbad dggdb adgb adgb agd bgb gd baddb adgb adgb adgb adb adgb adba badgb adb </p>
                        </div>

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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

                        <div class="panel">
                            <img src="img/088.jpeg" alt="#####">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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

                        <div class="panel">
                            <img src="img/088.jpeg" alt="#####">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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

                        <div class="panel">
                            <img src="img/088.jpeg" alt="#####">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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

                        <div class="panel">
                            <img src="img/088.jpeg" alt="#####">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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

                        <div class="panel">
                            <img src="img/088.jpeg" alt="#####">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
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

                        <div class="panel">
                            <img src="img/087.jpeg" alt="#####">
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


        <script
            src="https://code.jquery.com/jquery-1.12.4.js"
            integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
        crossorigin="anonymous"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/form-validation.js"></script>
    </body>
</html>
