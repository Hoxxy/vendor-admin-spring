package rs.ac.singidunum.vendor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.Order;
import rs.ac.singidunum.vendor.service.OrderService;

import java.util.List;

@RestController()
@RequestMapping("vendor/order")
public class OrderController {
    @Autowired
    private OrderService orderService;

    @PostMapping("insert")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public Order createNewOrder(@RequestBody Order newOrder) {
        return this.orderService.createNewOrder(newOrder);
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public void deleteOrder(@PathVariable int id) {
        this.orderService.deleteOrderById(id);
    }

    @GetMapping("list")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<Order> listOrders() {
        return this.orderService.listOrders();
    }
}
