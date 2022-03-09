package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.Category;

public interface ICategoryRepository extends JpaRepository<Category, Integer> {

}