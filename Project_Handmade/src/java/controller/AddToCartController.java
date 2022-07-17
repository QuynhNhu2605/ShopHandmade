/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dao.ProductDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.LinkedHashMap;
import java.util.Map;
import model.Cart;
import model.Product;

/**
 *
 * @author Quynh_Nhu
 */
public class AddToCartController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HttpSession session= request.getSession();
            //check login
//            Account account=(Account) session.getAttribute("account");
//            if(account==null){
//                response.sendRedirect("login");
//                return;
//            }
            int productId=Integer.parseInt(request.getParameter("productId"));
          
          Map <Integer, Cart> carts = (Map <Integer, Cart>) session.getAttribute ("cart");
           if(carts==null){
               carts=new LinkedHashMap<>();
           }
           //check xem có trong gio hang hay khong 
           //TH1 san pham da co tren gio hang
           if(carts.containsKey(productId)){
               int oldQuantity=carts.get(productId).getQuantity();
               carts.get(productId).setQuantity(oldQuantity+1);
           }
           //san pham chua co tren gio hang
           else{
               Product product= new ProductDAO().getProductsById(productId);
               carts.put(productId, Cart.builder().product(product).quantity(1).build());
           }
           //luu carts len section
           session.setAttribute("carts", carts);
           String urlHistory=(String) session.getAttribute("urlHistory");
            if (urlHistory==null) {
                urlHistory="HomeController";
            }
           response.sendRedirect( urlHistory );
           
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
 