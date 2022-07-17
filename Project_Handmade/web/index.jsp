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
     
    </style>

    <body style="background-image: url('https://topshare.vn/wp-content/uploads/2021/06/hinh-nen-mau-hong-10.jpg'); background-size: cover;">
        <%@include file="components/navBarComponent.jsp" %>
        <div class="contentbody">
        </div>
        
        <div class="section1" style="display: flex; margin-top: 10%; margin-right: 20px;margin-left: 30px">
            <div class="picture col-md-6">
                <img src="Picture\Welcome\278018882_693476845189125_6581080570365267785_n.png" alt="" width="650px" style="box-shadow: 0px 0px 17px 2px #5c636a;" >
            </div>
            <div class="info col-md-6 font-italic">
                <p class="info__text " style="color: #ff6633">About Us</p>
                <h3 class="info__title" style="font-family: cursive;font-size: 50px; color: #e58da3">Lucasta - Your home</h3>
                <div class="content">
                    <p>
                    </p>
                    <p class="font-italic" style="font-family: Comic Sans MS; font-size: 20px; color: #1e2125;font-weight: 50;">Lucasta is located in the west of Hanoi. Lucasta is a great destination and brings you the most
                        enjoyable experience when you come to us. Come to Lucasta, you will be immersed in fresh nature, to
                        participate in leisure activities, relax to take away the sorrows and chaos of life. Lucasta with all
                        kinds
                        of amenities and modern bungalows combined traditional style,vintage make you feel very chill&nbsp;
                        ...<br>
                        <br>
                       
                        &nbsp;
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
                        <h3 style="font-family: cursive;font-size: 30px; color: #1e2125">List Category</h3>
                        <ul class="list-group">

                            <%
                                for(Category items: listCategory){%>
                                <li class="list-group-item" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed #e58da3; border-radius: 5px;">
                                <a href="filter-category?categoryId=<%=items.getId()%>"  style="color: black; text-decoration: none"><%=items.getName()%></a>

                            </li>
                            <%  } %>
                        </ul>
                    </div>
                        <div class="col-md-9" style="">
                        <%if (listProducts==null || listProducts.size()==0){
                        %>
                        <h3 style="display: flex; text-align: center;">Not found</h3>
                        <%}
                        else{%>
                        <h3 style="font-family: cursive;font-size: 30px; color: #1e2125">List Product</h3>
                        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
                            <%
                                for(Product items: listProducts){%>
                                <div class="col mb-5" style="">
                                    <div class="card h-100" style="box-shadow: 0px 0px 17px 2px #5c636a; background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; font-weight:20 ">
                                    <!-- Sale badge-->
<!--                                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>-->
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
<!--                                            <div class="d-flex justify-content-center small text-warning mb-2">
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                                <div class="bi-star-fill"></div>
                                            </div>
                                             Product price
                                            <span class="text-muted text-decoration-line-through">$20.00</span>-->
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
                            <ul class="pagination justify-content-center" >
                                <li class="page-item " >
                                    <a class="page-link" href="HomeController?page=${page-1}" aria-label="Previous" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed pink; border-radius: 5px;">
                                        <span aria-hidden="true"  style="color: black;">&laquo;</span>
                                    </a>
                                </li>
                                <% for(int i=1;i<=totalPage;i++){ %>
                                
                                <li class="page-item "><a class="page-link" href="HomeController?page=<%=i%>"  style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed pink; border-radius: 5px;"><%=i%></a></li>
                                    <%}%>
                                
                                <li class="page-item"  style="color: black;">
                                    <a class="page-link" href="HomeController?page=${page+1}" aria-label="Next" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed pink; border-radius: 5px;">
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
