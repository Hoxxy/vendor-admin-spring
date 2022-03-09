package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.Product;

import java.util.List;

public interface IProductService {
    Product createNewProduct(Product newProduct);
    Product updateProductById(int id, Product newProductData);
    void deleteProductById(int id);
    Product findProductById(int id);
    long countProducts();
    List<Product> listProducts();
    List<Product> getProductsInCategory(int category_id);
}
