<%-- 
    Document   : register
    Created on : 07-Dec-2016, 21:39:41
    Author     : AMarie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.User"%>
<%@page import="model.Course"%>
<%@page import="model.Uploads"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="${pageContext.request.contextPath}/css/forms.css" rel="stylesheet" type="text/css">
        <title>Upload Item</title>
    </head>
    <body>
        <div class="login-page">
            <div class="logo">
                <a href="index.html">
                    <img class="logohome" src="img/logo1.png" alt="LIT Gallery Logo">
                </a>
            </div>
            <h1>Sign Up</h1>
            <div class="form">
                <form action="UploadController" method="get" class="register-form" name="registration">

                    <br>
                    <label>Image</label>
                    <input type="text" name="image" id="image"/>
                    <br>
                    <label>Title</label>
                    <input type="text" name="title" id="title"/>
                    <br>
                    <label>Description</label>
                    <input type="text" name="description" id="description"/>
                    <br>
                    
               
                <input type="submit" name="menu" value="Save Upload" />
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
