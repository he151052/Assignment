/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author oki
 */
public class Order {

    int OrderId;
    int  cusID;
    Date orderDate;

    public Order() {
    }

    public Order(int OrderId, int cusID, Date orderDate) {
        this.OrderId = OrderId;
        this.cusID = cusID;
        this.orderDate = orderDate;
    }

    public int getOrderId() {
        return OrderId;
    }

    public void setOrderId(int OrderId) {
        this.OrderId = OrderId;
    }

    public int getCusID() {
        return cusID;
    }

    public void setCusID(int cusID) {
        this.cusID = cusID;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    @Override
    public String toString() {
        return "Order{" + "OrderId=" + OrderId + ", cusID=" + cusID + ", orderDate=" + orderDate + '}';
    }

   

}
