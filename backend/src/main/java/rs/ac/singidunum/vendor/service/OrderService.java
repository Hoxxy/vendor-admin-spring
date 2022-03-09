package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.Order;
import rs.ac.singidunum.vendor.repository.IOrderRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderService implements IOrderService {
    @Autowired
    private IOrderRepository orderRepository;

    @Override
    public Order createNewOrder(Order newOrder) {
        return this.orderRepository.saveAndFlush(newOrder);
    }

    @Override
    public void deleteOrderById(int id) {
        this.orderRepository.deleteById(id);
    }

    @Override
    public Order findOrderById(int id) {
        return this.orderRepository.findById(id).isPresent()
                ? this.orderRepository.findById(id).get() : null;
    }

    @Override
    public List<Order> listOrders() {
        return this.orderRepository.findAll();
    }
}