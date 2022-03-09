package rs.ac.singidunum.vendor.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.Product;
import rs.ac.singidunum.vendor.service.ProductService;

import java.util.List;

@RestController()
@RequestMapping("vendor/product")
public class ProductController {
    @Autowired
    private ProductService productService;

    @PostMapping("insert")
    @CrossOrigin("*")
    public Product createNewProduct(@RequestBody Product newProduct){
        return this.productService.createNewProduct(newProduct);
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.PATCH)
    @CrossOrigin("*")
    public Product updateProduct(@PathVariable int id, @RequestBody Product newProductData){
        return this.productService.updateProductById(id, newProductData);
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    @CrossOrigin("*")
    public void deleteProduct(@PathVariable int id) {
        this.productService.deleteProductById(id);
    }

    @RequestMapping(value = "find/{id}", method = RequestMethod.GET)
    @CrossOrigin("*")
    public Product findProduct(@PathVariable int id){
        return this.productService.findProductById(id);
    }

    @GetMapping("count")
    @CrossOrigin("*")
    public long countProducts(){
        return this.productService.countProducts();
    }

    @GetMapping("list")
    @CrossOrigin("*")
    public List<Product> listProducts(){
        return this.productService.listProducts();
    }

    @RequestMapping(value = "list/{id}", method = RequestMethod.GET)
    @CrossOrigin("*")
    public List<Product> getProductsInCategory(@PathVariable int id){
        return this.productService.getProductsInCategory(id);
    }
}
