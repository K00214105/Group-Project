

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page import="model.Course"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/css/forms.css" rel="stylesheet" type="text/css">
        <title>Sign Up for web site</title>
    </head>
    <body>
        <div class="login-page">
            <div class="logo">
                
                    <img class="logohome" src="${pageContext.request.contextPath}/img/logo1.png" alt="LIT Gallery Logo">
               
            </div>
            <h1>Sign Up</h1>
            <div class="form">
                <form action="UserController" method="get" class="register-form" name="registration">

                    <br>
                    <label>First name</label>
                    <input type="text" name="fName" id="fName"/>
                    <br>
                    <label>Last name</label>
                    <input type="text" name="lName" id="lName"/>
                    <br>
                    <label>Email</label>
                    <input type="email" name="email" id="email"/>
                    <br>
                    <label>User name</label>
                    <input type="text" name="username" id="username"/>
                    <br>
                    <label>Profile Picture</label>
                    <input type="text" name="profile_pic" id="profile_pic"/>
                    <br>
                    <label>Password</label>
                    <input type="password" name="password" id="password"/>
                    <br>
                    <label>Bio</label>
                    <input type="text" name="bio" id="bio"/>
                    <br>
                    <label>Course</label>

                    <select name="course" id="course">

                        <option name="course" id="course" value = "IDM">IDM</option>
                        <option name="course" id="course" value = "ISD">ISD</option>

                    </select>
               

                <input type="submit" name="menu" value="Save" />
                <input type="reset" />
 </form>
            </div>
        </div
        <script
            src="https://code.jquery.com/jquery-1.12.4.js"
            integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
        crossorigin="anonymous"></script>
        <script src="js/jquery.validate.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/form-validation.js"></script>
    </body>
</html>
