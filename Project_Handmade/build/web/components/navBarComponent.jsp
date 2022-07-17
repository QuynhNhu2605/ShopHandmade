<%-- 
    Document   : navBarComponent
    Created on : Apr 25, 2022, 6:16:36 PM
    Author     : Quynh_Nhu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- Navigation-->

<nav class="navbar navbar-expand-lg navbar-light bg-light"   >
    <div style="position: fixed;top: 0;left: 0;width: 100%;height: 80px;background: rgba(255, 204, 204,0.4);padding: 0 100px;border-color: none;font-family: cursive;font-size: 25px; color: #1e2125; font-weight:20 ;
         box-sizing: border-box;
         box-shadow: 0 1px 1px rgba(0,0,0,0.12),
         0 2px 2px rgba(0,0,0,0.12),
         0 4px 4px rgba(0,0,0,0.12),
         0 8px 8px rgba(0,0,0,0.12),
         0 16px 16px rgba(0,0,0,0.12);
         z-index: 10; font-size: 22px;">
        <div class="container px-4 px-lg-5"  style=" margin-top: 1%">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="HomeController">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="about.jsp" style="color: black">About</a></li>
                    <li class="nav-item"><a class="nav-link" href="edit" style="color: black">Edit</a></li>
                    <!--                    <li class="nav-item dropdown" >
                                            <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color: black;" >Shop</a>
                                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                                <li><a class="dropdown-item" href="#!">All Products</a></li>
                                                <li><hr class="dropdown-divider" /></li>
                                                <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                                                <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
                                            </ul>
                                        </li>-->

                   

                </ul>
                <form action="search" class="d-flex" >
                    <input  class="form-control me-2" 
                            type="search" placeholder="Search" aria-label="Search" 
                            style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;"
                            name="keyword"/>
                    <!--                    <button class="btn btn-outline-success" 
                                                type="submit" 
                                                style="color: black;">
                                            Search
                                        </button>-->
                </form>
                <div class="d-flex my-2">
                    <a class="btn btn-outline-dark" href="carts" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;">
                        <i class="bi-cart-fill me-1" ></i>

                        <span class="badge bg-dark text-white ms-1 rounded-pill" >
                            ${sessionScope.carts.size()}

                        </span>
                    </a>
                </div >
                <c:choose>
                    <c:when test="${sessionScope.account != null}">
                        <button class="btn btn-outline-primary ms-lg-2" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;">${sessionScope.account.displayName}</button>
                        <a href="logout" class="btn btn-outline-primary ms-lg-2" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;">Logout</a>
                    </c:when>
                    <c:otherwise>
                        <a href="login" class="btn btn-outline-primary ms-lg-2" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;">Login</a>
                    </c:otherwise>
                </c:choose>


            </div>
        </div>

    </div>

</nav>
<!-- video bìa -->
<!--<video  autoplay loop muted  style="top: 0;left: 0;width: 100%;height: 100%;">
    <source src="LucastaShop.mp4"  type="video/mp4">
</video>-->
<img src="https://scontent.fhan3-2.fna.fbcdn.net/v/t39.30808-6/278887697_297382615891511_4802215208349451477_n.jpg?_nc_cat=101&ccb=1-5&_nc_sid=730e14&_nc_ohc=vbjOxgguhRoAX8FqViL&tn=9PIe514rKyjboNfO&_nc_ht=scontent.fhan3-2.fna&oh=00_AT9ZggUNjeiDqp_EjZ7WLfcyQbg77grMYiyxb8VtBYlBPg&oe=626DE9B6" width="1518px" alt="alt"/>
