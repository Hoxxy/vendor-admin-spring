package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.Product;

public interface IProductRepository extends JpaRepository<Product, Integer> {
}
