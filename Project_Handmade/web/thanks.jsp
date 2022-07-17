
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"
            />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Shop Homepage - Start Bootstrap Template</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
            rel="stylesheet"
            />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body style="background-image: url('https://cdn.pixabay.com/photo/2016/08/12/14/42/watercolor-1588805_1280.jpg'); background-size: cover; ">
        <%@include file="components/navBarComponent.jsp" %>

<!--        <div class="container" style="min-height: 1000px; ">
            <div class="alert alert-success text-center mt-5" role="alert" style="background-color: none;" >
                Order successfully, Thank you very much...
                <div class="text-center mt-2">-->
<div style="height: 300px;">
    
    <a class="btn btn-outline-primary" href="HomeController" style="display: flex; justify-content: center;width: 350px; margin-left: 550px; margin-top: 150px; background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px; ">
        Continue Shopping</a>
   
    <p style="margin-left: 540px;font-family: cursive;font-size: 20px;"> Order successfully, Thank you very much...</p>

    
</div>
<!--                </div>
            </div>
        </div>-->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
