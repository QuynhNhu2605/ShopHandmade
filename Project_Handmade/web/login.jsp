<%-- 
    Document   : index
    Created on : Apr 22, 2022, 3:25:44 AM
    Author     : Quynh_Nhu
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Category" %>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>LucastaLogin</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <%
       Product product =  (Product) request.getAttribute("product");
        %>
    </head>
    <style>
        
        .login{
            height: auto;
            width: 50%;
            margin-left: 25%;
            margin-top: 12%;
            color: rgb(175, 84, 9);
            font-weight: bold;
            font-family: Lucida Sans Unicode;
            border: 1px gray solid;
            border-radius: 15px;
            background: rgba(255, 255, 255,0.7) ;
            box-shadow: 0px 0px 17px 2px rgba(255, 255, 255,0.8);
        }
        .form-label{
            margin: 2%;
        }
        .form-control{
            margin-left: 10%; width:auto; background: transparent;border: 0;outline: 0;color: rgb(27, 26, 26); border-bottom: 1px solid rgb(49, 47, 47);
        }

    </style>

    <body style="background-image: url('https://cdn.pixabay.com/photo/2016/08/12/14/42/watercolor-1588805_1280.jpg'); background-size: cover;" >


        <form action="login" method="POST" style=" display: block;justify-content: center;  margin: 12%;">
            <div class="login">
                <h1 style="display: flex;text-align: center;margin-left: 10%; margin-top: 5%;
                    font-family: cursive;font-size: 50px; color: #e58da3">Login</h1>
                <div class="mb-3">
                    <label for="username" class="form-label" style="margin-left: 10%;font-family: cursive;font-size: 20px; color: #e58da3">Username</label>
                    <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp"  style="background-color: inherit;border-color: none;font-family: cursive; background: none;">
<!--                    <div id="emailHelp" class="form-text" style="margin-left: 10%;" >We'll never share your email with anyone else.</div>-->
                </div>
                <div class="mb-3">
                    <label for="pasword" class="form-label"  style="margin-left: 10%;font-family: cursive;font-size: 20px; color: #e58da3">Password</label>
                    <input type="password" class="form-control" id="password" name="password"  style="background-color: inherit;border-color: none;font-family: cursive;">
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="exampleCheck1" name="remember" style="margin-left: 7%;">
                    <label class="form-check-label" for="exampleCheck1"  style="margin-left: 3%;font-family: cursive;font-size: 16px; color: #e58da3">Remember me</label>
                </div>
                <h3 class="text-danger">${error}</h3>
                <button type="submit" class="btn btn-primary w-25 text-center" style="margin-bottom: 5%; margin-left: 10%;background-color: inherit;border: 1px gray solid;
                        box-shadow: 2px 2px 2px rgb(102, 102, 102); 
                        font-family: cursive;font-size: 18px; color: #e58da3">
                    Login
                </button>
            </div>


        </form>

    </body>
</html>
