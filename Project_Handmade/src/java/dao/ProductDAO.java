/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Product;

/**
 *
 * @author Quynh_Nhu
 */
public class ProductDAO {

    public List<Product> getAllProducts() {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
public void deleteProduct(int id){
    
        try {
            String sql = "delete from Product where id=?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            ps.executeQuery();
            
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
    
}
    public List<Product> getProductsByCategoryId(int categoryId) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where Product.category_id= ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public Product getProductsById(int Id) {

        try {
            String sql = "select*from Product where id= ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, Id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                return product;
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public List<Product> getProductsWithPagging(int page, int PAGE_SIZE) {
        List<Product> list = new ArrayList<>();
        try {
            String sql = "select *from Product order by id \n"
                    + "offset (?-1)*? row fetch next ? row only ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, page);
            ps.setInt(2, PAGE_SIZE);
            ps.setInt(3, PAGE_SIZE);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public int getTotalProducts() {

        try {
            String sql = "select count(id) from Product ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                return rs.getInt(1);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public int getTotalProductsByCategory(int categoryId) {

        try {
            String sql = "select count(id) from Product where category_id =? ";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, categoryId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                return rs.getInt(1);
            }
            
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    

    public List<Product> search(String keyword) {
 List<Product> list = new ArrayList<>();
        try {
            String sql = "select * from Product where name like ?";
            Connection conn = new DBContext().getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, "%"+keyword+"%");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
//                Category category = new Category(rs.getInt(1), rs.getString(2));
                Product product = Product.builder()
                        .id(rs.getInt(1))
                        .name(rs.getString(2))
                        .quantity(rs.getInt(3))
                        .price(rs.getDouble(4))
                        .description(rs.getString(5))
                        .imageUrl(rs.getString(6))
                        .createdDate(rs.getString(7))
                        .categoryId(rs.getInt(8))
                        .build();
                list.add(product);
            }
        } catch (Exception ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;    }

}
