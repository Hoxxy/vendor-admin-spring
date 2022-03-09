package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.OrderProduct;
import rs.ac.singidunum.vendor.model.OrderProductCPK;
import rs.ac.singidunum.vendor.repository.IOrderProductRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class OrderProductService implements IOrderProductService {
    @Autowired
    private IOrderProductRepository orderProductRepository;

    @Override
    public OrderProduct createNewOrderProduct(OrderProduct newOrderProduct) {
        return this.orderProductRepository.saveAndFlush(newOrderProduct);
    }

    @Override
    public void deleteOrderProductById(OrderProductCPK id) {
        this.orderProductRepository.deleteById(id);
    }

    @Override
    public void deleteAllOrderedProductsByOrder(int order_id) {
        this.orderProductRepository.deleteAll(this.listAllOrderProductsByOrder(order_id));
    }


    @Override
    public OrderProduct findOrderProductById(OrderProductCPK id) {
        return this.orderProductRepository.findById(id).isPresent()
                ? this.orderProductRepository.findById(id).get() : null;
    }

    @Override
    public List<OrderProduct> listAllOrderProducts() {
        return this.orderProductRepository.findAll();
    }

    @Override
    public List<OrderProduct> listAllOrderProductsByOrder(int order_id) {
        return this.listAllOrderProducts().stream()
                .filter(o -> o.getOrder_id() == order_id)
                .collect(Collectors.toList());
    }

    @Override
    public List<OrderProduct> listAllOrderProductsByProduct(int product_id) {
        return this.listAllOrderProducts().stream()
                .filter(o -> o.getProduct_id() == product_id)
                .collect(Collectors.toList());
    }
}
