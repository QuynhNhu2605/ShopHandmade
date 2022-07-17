<%-- 
    Document   : footerComponent
    Created on : Apr 25, 2022, 6:22:52 PM
    Author     : Quynh_Nhu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <!-- END-------- -->
 <div class="footer" style="background: #e58da3; height: 180px;" >
    <div class="footer__detail">
      <div class="container">
        <div class="row">
          <div class="col-lg-4 col-md-6">
            <div class="footer__col">
              <ul class="footer__list">
                <li>
                  <h3 class="footer__head">LUCASTA SHOP</h3>
                </li>
               
              </ul>
            </div>
          </div>
          
         

          <div class="col-lg-4 col-md-6">
            <div class="footer__col">
              <h3 class="footer__head"></h3>
              <div class="footer__text">
                <p></p>
              </div>
              <form class="footer__form" method="post" id="Email_Marketing" action="/Marketing/SaveMail"
                novalidate="novalidate">
                <div class="form-group">
                  <input class="form-control" id="email" type="email" name="emailMarketing" autocomplete="off"
                    placeholder="Your email address" style="background-color: inherit;border-color: none;font-family: cursive;font-size: 18px; color: #1e2125; border: 2px dashed pink; border-radius: 5px;">
                  
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
<!--    <div class="copy-right">
      <div class="container">
        <div class="cr-detail">
          <div class="cr-text"></div>
          <div class="social">
            <a><i class="ti-facebook"></i></a>
            <a><i class="ti-twitter"></i></a>
            <a><i class="ti-instagram"></i></a>
            <a><i class="ti-youtube"></i></a>
          </div>
        </div>
      </div>
    </div>-->
  </div>

