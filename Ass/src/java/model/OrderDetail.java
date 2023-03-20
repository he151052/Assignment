/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author oki
 */
public class OrderDetail {
    int OrderID;
    int CusID;
    int quantity;

    public OrderDetail() {
    }

    public OrderDetail(int OrderID, int CusID, int quantity) {
        this.OrderID = OrderID;
        this.CusID = CusID;
        this.quantity = quantity;
    }

    public int getOrderID() {
        return OrderID;
    }

    public void setOrderID(int OrderID) {
        this.OrderID = OrderID;
    }

    public int getCusID() {
        return CusID;
    }

    public void setCusID(int CusID) {
        this.CusID = CusID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "OrderID=" + OrderID + ", CusID=" + CusID + ", quantity=" + quantity + '}';
    }
    
}
