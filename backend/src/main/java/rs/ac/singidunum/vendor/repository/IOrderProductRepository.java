package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.OrderProduct;
import rs.ac.singidunum.vendor.model.OrderProductCPK;

public interface IOrderProductRepository extends JpaRepository<OrderProduct, OrderProductCPK> {
}