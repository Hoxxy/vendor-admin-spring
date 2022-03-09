package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.OrderProduct;
import rs.ac.singidunum.vendor.model.OrderProductCPK;

import java.util.List;

public interface IOrderProductService {
    OrderProduct createNewOrderProduct(OrderProduct newOrderProduct);
    void deleteOrderProductById(OrderProductCPK id);
    void deleteAllOrderedProductsByOrder(int order_id);
    OrderProduct findOrderProductById(OrderProductCPK id);
    List<OrderProduct> listAllOrderProducts();
    List<OrderProduct> listAllOrderProductsByOrder(int order_id);
    List<OrderProduct> listAllOrderProductsByProduct(int product_id);
}