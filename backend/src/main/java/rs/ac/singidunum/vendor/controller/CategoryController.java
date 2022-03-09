package rs.ac.singidunum.vendor.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import rs.ac.singidunum.vendor.entity.Category;
import rs.ac.singidunum.vendor.service.CategoryService;

import java.util.List;

@RestController()
@RequestMapping("vendor/category")
public class CategoryController {
    @Autowired
    private CategoryService categoryService;

    @PostMapping("insert")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public Category createNewCategory(@RequestBody Category newCategory){
        return this.categoryService.createNewCategory(newCategory);
    }

    @RequestMapping(value = "update/{id}", method = RequestMethod.PATCH)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public Category updateCategory(@PathVariable int id, @RequestBody Category newCategoryData){
        return this.categoryService.updateCategory(id, newCategoryData);
    }

    @RequestMapping(value = "delete/{id}", method = RequestMethod.DELETE)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public void deleteCategory(@PathVariable int id){
        this.categoryService.deleteCategory(id);
    }

    @RequestMapping(value = "find/{id}", method = RequestMethod.GET)
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public Category findCategory(@PathVariable int id){
        return this.categoryService.findCategoryById(id);
    }

    @GetMapping("list")
    @CrossOrigin(origins = {"http://localhost:4200", "https://localhost:4200"})
    public List<Category> listCategories(){
        return this.categoryService.listCategories();
    }
}