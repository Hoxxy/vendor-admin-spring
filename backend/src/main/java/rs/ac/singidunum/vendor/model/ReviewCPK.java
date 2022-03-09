package rs.ac.singidunum.vendor.model;

import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
public class ReviewCPK implements Serializable {
    private int product_id, user_id;

    public ReviewCPK() {

    }

    public ReviewCPK(int product_id, int user_id) {
        this.product_id = product_id;
        this.user_id = user_id;
    }

    public int getProductId() {
        return product_id;
    }

    public void setProductId(int product_id) {
        this.product_id = product_id;
    }

    public int getUserId() {
        return user_id;
    }

    public void setUserId(int user_id) {
        this.user_id = user_id;
    }
}