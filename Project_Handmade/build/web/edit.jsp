

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
<%@page import="model.Category" %>
<%@page import="model.Product" %>
<%@page import="java.util.List" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<fmt:setLocale value="en_US" scope="session"/>
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
        <%
          List<Product> listProducts =  (List) request.getAttribute("listProducts");
          Product product =  (Product) request.getAttribute("product");%>
    </head>
    <body style="background-image: url('https://topshare.vn/wp-content/uploads/2021/06/hinh-nen-mau-hong-10.jpg'); background-size: cover;">
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height: 1000px ;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; font-weight:20">
                <h3 style="font-family:"">List Products</h3>
               
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Name</th>
                            <th scope="col">Image</th>
                            <th scope="col">Price</th>
                            <th scope="col">Quantity</th>
                            
                            <th scope="col">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <%
                                for(Product items: listProducts){%> 
                        <form action="HomeController">
                            <tr>
                            <input type="hidden" name="productId" value="<%=items.getId()%>"/>
                            <th scope="row"><%=items.getId()%></th>
                            <td><%=items.getName()%></td>
                            <td><img src="<%=items.getImageUrl()%>" width="50"/></td>
                            <td><%=items.getPrice()%></td>
                            <td><%=items.getQuantity()%></td>
                            <td><a href="deleteproduct?productId=<%=items.getId()%>" class="btn btn-outline-danger">
                                    <i class="bi bi-trash"></i>Delete</a>
                            </td>
                            </tr>
                        </form>
                  
                    </tbody>
                    <%}%>
                </table>
                



            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
