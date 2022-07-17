<%-- 
    Document   : index
    Created on : Apr 22, 2022, 3:25:44 AM
    Author     : Quynh_Nhu
--%>

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
    </head>

    <body style="background-image: url('https://cdn.pixabay.com/photo/2016/08/12/14/42/watercolor-1588805_1280.jpg'); background-size: cover;" >
        <%@include file="components/navBarComponent.jsp" %>
        <!-- Header-->
        <header >

        </header>
        <!-- Section-->
        <div class="contentbody">
        </div>
        
        <div class="section1" style="display: flex; margin-top: 10%; margin-right: 20px;margin-left: 30px; margin-bottom: 200px">
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
        </div>       <!-- Footer-->
        <%@include file="components/footerComponent.jsp" %>
    </body>



    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
</body>
</html>
