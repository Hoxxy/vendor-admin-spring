package rs.ac.singidunum.vendor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.Review;
import rs.ac.singidunum.vendor.model.ReviewCPK;
import rs.ac.singidunum.vendor.service.ReviewService;

import java.util.List;

@RestController()
@RequestMapping("vendor/review")
public class ReviewController {
    @Autowired
    private ReviewService reviewService;

    @GetMapping("list")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<Review> listAllReviews(){
        return this.reviewService.listAllReviews();
    }

    @RequestMapping(value = "filterByUser/{user_id}", method = RequestMethod.GET)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<Review> filterByUser(@PathVariable int user_id) {
        return this.reviewService.filterByUser(user_id);
    }

    @RequestMapping(value = "filterByProduct/{product_id}", method = RequestMethod.GET)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<Review> filterByProduct(@PathVariable int product_id) {
        return this.reviewService.filterByProduct(product_id);
    }
}