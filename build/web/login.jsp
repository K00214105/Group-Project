<%-- 
    Document   : index
    Created on : 19-Dec-2016, 18:30:35
    Author     : AMarie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/css/forms.css" rel="stylesheet" type="text/css">
        <title>Log in</title>
    </head>
    <body>

        <div class="login-page">
            <div class="logo">
                <a href="index.html">
                    <img class="logohome" src="img/logo1.png" alt="LIT Gallery Logo">
                </a>
            </div>
            <h1>Sign In</h1>
            <div class="form">
                <form action="UserController" method="get" class="login-form" name="Login">
                    <br>
                    <label>Username</label>
                    <input type="text" name="username" id="username"/>
                    <br>
                    <label>Password</label>
                    <input type="password" name="password" id="passwood"/>
                    <br>
                    <input type="submit" name="menu" value="Process Login"  />

                </form>
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

