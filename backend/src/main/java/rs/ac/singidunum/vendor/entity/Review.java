package rs.ac.singidunum.vendor.entity;

import rs.ac.singidunum.vendor.model.ReviewCPK;

import javax.persistence.*;

@Entity
@Table(name = "reviews")
@IdClass(ReviewCPK.class)
public class Review {
    @Id
    private int product_id;
    @Id
    private int user_id;
    @Column(name = "text")
    private String text;
    @Column(name = "rating")
    private int rating;

    public Review() { }

    public Review(int product_id, int user_id, String text, int rating) {
        this.product_id = product_id;
        this.user_id = user_id;
        this.text = text;
        this.rating = rating;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }
}
