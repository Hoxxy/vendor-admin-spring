package rs.ac.singidunum.vendor.entity;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class Product {
    @Id
    @Column(name = "product_id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int product_id;
    @Column(name = "title")
    private String title;
    @Column(name = "price")
    private int price;
    @Column(name = "description")
    private String description;
    @ManyToOne(fetch = FetchType.EAGER) // Immediate loading
    @JoinColumn(name = "category")
    private Category category;
    @Column(name = "stock")
    private int stock;

    public Product() { }

    public Product(int product_id, String title, Category category, String description, int stock, int price) {
        this.product_id = product_id;
        this.title = title;
        this.price = price;
        this.description = description;
        this.category = category;
        this.stock = stock;
    }

    public int getId() {
        return product_id;
    }

    public void setId(int id) {
        this.product_id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }
}
