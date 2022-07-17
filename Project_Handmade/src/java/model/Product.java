/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Quynh_Nhu
 */
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
@Builder
@Getter
@Setter
@ToString

public class Product {
    private int id;
    private String name;
    private int quantity;
    private double price;
    private String description;
    private String imageUrl;
    private String createdDate;
    private int categoryId;

    public Product(int id, String name, int quantity, double price, String description, String imageUrl, String createdDate, int categoryId) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price = price;
        this.description = description;
        this.imageUrl = imageUrl;
        this.createdDate = createdDate;
        this.categoryId = categoryId;
    }

    
}
