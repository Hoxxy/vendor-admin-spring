package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.Order;

import java.util.List;

public interface IOrderService {
    Order createNewOrder(Order newOrder);
    void deleteOrderById(int id);
    Order findOrderById(int id);
    List<Order> listOrders();
}