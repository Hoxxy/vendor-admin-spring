package rs.ac.singidunum.vendor.entity;

import javax.persistence.*;

@Entity
@Table(name = "orders") //Because 'order' is reserved word in sql
public class Order {

    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY) //Generated by sql database AUTO_INCREMENT
    private int id;
    @Column(name = "userid")
    private int user_id;
    @Column(name = "status")
    private String status;
    @Column(name = "date")
    private String date;

    public Order() { }

    public Order(int id, int user_id, String status, String date) {
        this.id = id;
        this.user_id = user_id;
        this.status = status;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
