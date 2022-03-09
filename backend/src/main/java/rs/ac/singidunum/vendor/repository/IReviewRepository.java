package rs.ac.singidunum.vendor.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import rs.ac.singidunum.vendor.entity.Review;
import rs.ac.singidunum.vendor.model.ReviewCPK;

public interface IReviewRepository extends JpaRepository<Review, ReviewCPK> {
}
