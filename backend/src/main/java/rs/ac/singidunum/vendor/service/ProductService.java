package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.Product;
import rs.ac.singidunum.vendor.repository.IProductRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ProductService implements IProductService {
    @Autowired
    private IProductRepository productRepository;

    @Override
    public Product createNewProduct(Product newProduct) {
        return this.productRepository.saveAndFlush(newProduct);
    }

    @Override
    public Product updateProductById(int id, Product newProductData) {
        Product product = this.findProductById(id);
        if(product == null) return null;

        if(newProductData.getTitle() != null) product.setTitle(newProductData.getTitle());
        if(newProductData.getCategory() != null) product.setCategory(newProductData.getCategory());
        if(newProductData.getDescription() != null) product.setDescription(newProductData.getDescription());
        if(newProductData.getStock() >= 0) product.setStock(newProductData.getStock());
        if(newProductData.getPrice() > 0) product.setPrice(newProductData.getPrice());

        return this.productRepository.saveAndFlush(product);
    }

    @Override
    public void deleteProductById(int id) {
        this.productRepository.deleteById(id);
    }

    @Override
    public Product findProductById(int id) {
        return this.productRepository.findById(id).isPresent()
                ? this.productRepository.findById(id).get() : null;
    }

    @Override
    public long countProducts() {
        return this.productRepository.count();
    }

    @Override
    public List<Product> listProducts() {
        return this.productRepository.findAll();
    }

    @Override
    public List<Product> getProductsInCategory(int category_id) {
        return this.productRepository.findAll().stream()
                .filter(product -> product.getCategory().getId() == category_id)
                .collect(Collectors.toList());
    }
}
