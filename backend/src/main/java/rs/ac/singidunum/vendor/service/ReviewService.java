package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.Review;
import rs.ac.singidunum.vendor.repository.IReviewRepository;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class ReviewService implements IReviewService {
    @Autowired
    private IReviewRepository reviewRepository;

    @Override
    public List<Review> listAllReviews() {
        return this.reviewRepository.findAll();
    }

    @Override
    public List<Review> filterByUser(int user_id) {
        return this.reviewRepository.findAll().stream()
                .filter(pr -> pr.getUserId() == user_id)
                .collect(Collectors.toList());
    }

    @Override
    public List<Review> filterByProduct(int product_id) {
        return this.reviewRepository.findAll().stream()
                .filter(pr -> pr.getProductId() == product_id)
                .collect(Collectors.toList());
    }
}