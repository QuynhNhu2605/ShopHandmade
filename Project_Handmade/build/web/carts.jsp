

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>  
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
    </head>
    <body style="background-image: url('https://topshare.vn/wp-content/uploads/2021/06/hinh-nen-mau-hong-10.jpg'); background-size: cover;">
        <%@include file="components/navBarComponent.jsp" %>

        <!-- Product section-->
        <section class="py-5">
            <div class="container" style="min-height: 1000px ;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; font-weight:20">
                 <c:choose>
                        <c:when test="${sessionScope.carts==null||sessionScope.carts.size()==0}">
                            <h1>List Cart is Empty</h1>
                        </c:when>
                        <c:otherwise>
                            <h3 style="font-family:"">List Products</h3>
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Name</th>
                                        <th scope="col">Image</th>
                                        <th scope="col">Price</th>
                                        <th scope="col">Quantity</th>
                                        <th scope="col">Total Price</th>
                                        <th scope="col">Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${carts}" var="C">

                                    <form action="update-quantity">
                                        <tr>
                                        <input type="hidden" name="productId" value="${C.value.product.id}"/>
                                        <th scope="row">${C.value.product.id}</th>
                                        <td>${C.value.product.name}</td>
                                        <td><img src="${C.value.product.imageUrl}" width="50"/></td>
                                        <td>${C.value.product.price}</td>
                                        <td><input style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125;border: 2px dashed; border-radius: 5px" onchange="this.form.submit()" type="number" name="quantity" value="${C.value.quantity}"/></td>
                                        <td>${C.value.product.price*C.value.quantity}</td>
                                        <td><a href="delete-cart?productId=${C.value.product.id}" class="btn btn-outline-danger">
                                                <i class="bi bi-trash"></i>Delete</a>
                                        </td>
                                        </tr>
                                    </form>
                                </c:forEach>
                                </tbody>
                   
                            </table>
                            <h3>Total Amount: <fmt:formatNumber value="${totalMoney}" type="currency" /></p></h3>
                            <a href="checkout" class="btn btn-success w-25">Check out</a>
                        </c:otherwise>
                    </c:choose>
            </div>
        </section>
        <%@include file="components/footerComponent.jsp" %>
    </body>
</html>
