package rs.ac.singidunum.vendor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.OrderProduct;
import rs.ac.singidunum.vendor.model.OrderProductCPK;
import rs.ac.singidunum.vendor.service.OrderProductService;

import java.util.List;

@RestController
@RequestMapping("/vendor/orderProduct")
public class OrderProductController {
    @Autowired
    private OrderProductService orderProductService;

    @PostMapping("insert")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public OrderProduct createNewOrderProduct(@RequestBody OrderProduct newOrderProduct){
        return this.orderProductService.createNewOrderProduct(newOrderProduct);
    }

    @RequestMapping(value = "delete/{order_id}/{product_id}", method = RequestMethod.DELETE)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public void deleteOrderProductById(@PathVariable int order_id, @PathVariable int product_id){
        this.orderProductService.deleteOrderProductById(new OrderProductCPK(order_id, product_id));
    }

    @RequestMapping(value = "deleteByOrder/{order_id}", method = RequestMethod.DELETE)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public void deleteAllOrderedProductsByOrder(@PathVariable int order_id){
        this.orderProductService.deleteAllOrderedProductsByOrder(order_id);
    }

    @RequestMapping(value = "listAllByOrder/{order_id}", method = RequestMethod.GET)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<OrderProduct> listAllbyOrder(@PathVariable int order_id) {
        return this.orderProductService.listAllOrderProductsByOrder(order_id);
    }
}