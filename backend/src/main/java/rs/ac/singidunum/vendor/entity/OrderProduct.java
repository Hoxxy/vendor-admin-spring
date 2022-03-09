package rs.ac.singidunum.vendor.entity;

import rs.ac.singidunum.vendor.model.OrderProductCPK;

import javax.persistence.*;

@Entity
@Table(name = "orders_products")
@IdClass(OrderProductCPK.class)
public class OrderProduct {
    @Id
    private int order_id;
    @Id
    private int product_id;
    @Column(name = "quantity")
    private int quantity;

    public OrderProduct() { }

    public OrderProduct(int order_id, int product_id, int quantity) {
        this.order_id = order_id;
        this.product_id = product_id;
        this.quantity = quantity;
    }

    public int getOrder_id() {
        return order_id;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public int getProduct_id() {
        return product_id;
    }

    public void setProduct_id(int product_id) {
        this.product_id = product_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
}