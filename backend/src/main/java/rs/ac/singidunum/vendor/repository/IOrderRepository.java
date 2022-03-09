package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.Order;

public interface IOrderRepository extends JpaRepository<Order, Integer> {
}