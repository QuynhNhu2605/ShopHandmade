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
        <title>LucastaShop</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <%   
           List<Category> listCategory =  (List) request.getAttribute("listCategories");
          List<Product> listProducts =  (List) request.getAttribute("listProducts");
          Product product =  (Product) request.getAttribute("product");
           int totalPage= (int) request.getAttribute("totalPage");
        %>
    </head>
    <style>
        .Nhu{

        }
    </style>

    <body >
        <%@include file="components/navBarComponent.jsp" %>
        <div class="contentbody">
        </div>
        <img src="Picture\Welcome\277358831_483779243482519_7211639131907424097_n.png" alt="" height="250px" width="1520px">
        <div class="section1" style="display: flex;">
            <div class="picture col-md-6">
                <img src="Picture\Welcome\278018882_693476845189125_6581080570365267785_n.png" alt="" width="650px">
            </div>
            <div class="info col-md-6">
                <p class="info__text">About Us</p>
                <h3 class="info__title">Lucasta - Your home</h3>
                <div class="content">
                    <p>
                    </p>
                    <p>Lucasta Hotel is located in the west of Hanoi. Lucasta Hotel is a great destination and brings you the most
                        enjoyable experience when you come to us. Come to Sunset Hotel, you will be immersed in fresh nature, to
                        participate in leisure activities, relax to take away the sorrows and chaos of life. Sunset Hotel with all
                        kinds
                        of amenities and modern bungalows combined traditional style, restaurant system, conference room,&nbsp;
                        ...<br>
                        <br>
                        Lucasta Hotel with fully furnished rooms and villas, interior space is decorated in luxurious style mixed with
                        traditional Vietnamese and modern Western. We have well trained, professional and professional staff,
                        dedicated
                        service.&nbsp;
                    </p>

                    <p></p>
                </div>
            </div>
        </div>
        <!-- Header-->
        <header >

        </header>
        <!-- Section-->
        <section class="py-5">
            <div class="container px-4 px-lg-5 mt-5">
                <div class="row" >
                    <div class="col-md-3 mb-5">
                        <h3>List Category</h3>
                        <ul class="list-group">

                            <%
                                for(Category items: listCategory){%>
                            <li class="list-group-item">
                                <a href="filter-category?categoryId=<%=items.getId()%>"  style="color: black; text-decoration: none"><%=items.getName()%></a>

                            </li>
                            <%  } %>
                        </ul>
                    </div>
                    <div class="col-md-9">
                        <%if (listProducts==null || listProducts.size()==0){
                        %>
                        <h3 style="display: flex; text-align: center;">Not found</h3>
                        <%}
                        else{%>
                        <h3>List Product</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            <%
                                for(Product items: listProducts){%>
                            <div class="col mb-5">
                                <div class="card h-100">
                                    <!-- Sale badge-->
                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>
                                    <!-- Product image-->
                                    <a href="detail?productId=<%=items.getId()%>">
                                        <img class="card-img-top" src="<%=items.getImageUrl()%>" alt="..." />
                                    </a>
                                    <!-- Product details-->
                                    <div class="card-body p-4">
                                        <div class="text-center">
                                            <!-- Product name-->
                                            <h5 class="fw-bolder"><%=items.getName()%></h5>
                                            <!-- Product reviews-->
                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                            </div>
                                            <!-- Product price-->
                                            <span class="text-muted text-decoration-line-through">$20.00</span>
                                            $<%=items.getPrice()%>
                                        </div>
                                    </div>
                                    <!-- Product actions-->
                                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                                        <div class="text-center">
                                            <a class="btn btn-outline-dark mt-auto" href="add-to-cart?productId=<%=items.getId()%>">Add to cart</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <% }%>               

                        </div>
                        <nav aria-label="Page navigation example" >
                            <ul class="pagination justify-content-center">
                                <li class="page-item " >
                                    <a class="page-link" href="filter-category?categoryId=2?page=${page-1}" aria-label="Previous">
                                        <span aria-hidden="true"  style="color: black;">&laquo;</span>
                                    </a>
                                </li>
                                <% for(int i=1;i<=totalPage;i++){ %>
                                
                                <li class="page-item "><a class="page-link" href="filter-category?categoryId=2/page=<%=i%>"  style="color: black;"><%=i%></a></li>
                                    <%}%>
                                
                                <li class="page-item"  style="color: black;">
                                    <a class="page-link" href="filter-category?page=${page+1}" aria-label="Next">
                                        <span aria-hidden="true"  style="color: black;">&raquo;</span>
                                    </a>
                                </li>
                            </ul>
                        </nav>
                        <%}%>


                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
