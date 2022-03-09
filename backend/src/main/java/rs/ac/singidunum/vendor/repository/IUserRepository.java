package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.User;

public interface IUserRepository extends JpaRepository<User, Integer> { }
