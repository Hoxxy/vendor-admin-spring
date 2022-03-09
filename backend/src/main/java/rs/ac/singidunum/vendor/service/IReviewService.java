package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.Review;

import java.util.List;

public interface IReviewService {
    List<Review> listAllReviews();
    List<Review> filterByUser(int user_id);
    List<Review> filterByProduct(int product_id);
}
