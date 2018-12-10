<%-- 
    Document   : newjsp
    Created on : 10-Dec-2018, 11:32:24
    Author     : K00214105
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<!doctype html>
<html>

    <head>
        <meta charset="UTF-8">
        <title>Edit Profile</title>
        <link rel="stylesheet" href="css/forms.css">
        <meta name="viewport" content="width=device-width , initial-scale=1.0">
    </head>

    <body>

        <div class="login-page">
            <div class="logo">
                <a href="index.html">
                    <img class="logohome" src="img/logo1.png" alt="LIT Gallery Logo">
                </a>
            </div>
            <h1>Edit Profile</h1>
            <div class="form">
                <form action="UserController" method="get" class="register-form" name="registration">

                    <br>
                    <label>First name</label>
                    <input type="text" name="fName" id="fName" value="${user.fName}" />
                    <br>
                    <label>Last name</label>
                    <input type="text" name="lName" id="lName" value="${user.lName}"/>
                    <br>
                    <label>Email</label>
                    <input type="email" name="email" id="email" value="${user.email}"/>
                    <br>
                    <label>User name</label>
                    <input type="text" name="username" id="username" value="${user.username}"/>
                    <br>
                    <label>Password</label>
                    <input type="password" name="password" id="password" value="${user.password}"/>
                    <br>
                    <label>Bio</label>
                    <input type="text" name="bio" id="bio" value="${user.bio}"/>
                    <br>
                    <label>Profile Picture</label>
                    <input type="text" name="profilePic" id="profilePic" value="${user.profilePic}"/>
                    <br>

                    <label>Banner Image</label>
                    <input type="text" />
                    <br>

                    <label>Course</label>
                    <input type="email" />
                    <br>

                    <input type="submit" name="menu" value="Save User Details"/>
                    <input type="reset" />
                    <input type="submit" name="menu" value="Delete User Check"/>


                </form>
            </div>
        </div>

    </body>

</html>

