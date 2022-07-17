/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import lombok.Builder;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 *
 * @author Quynh_Nhu
 */
@Builder
@Getter
@Setter
@ToString
public class Cart {
    private Product product;//So luong san pham trong kho
    private int quantity;// so luong san phan trong gio hang
    
    
}
