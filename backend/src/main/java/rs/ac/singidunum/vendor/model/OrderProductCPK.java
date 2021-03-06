package rs.ac.singidunum.vendor.model;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class OrderProductCPK implements Serializable {
    private int order_id, product_id;

    public OrderProductCPK() { }

    public OrderProductCPK(int order_id, int product_id) {
        this.order_id = order_id;
        this.product_id = product_id;
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
}