package rs.ac.singidunum.vendor.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import rs.ac.singidunum.vendor.entity.Category;
import rs.ac.singidunum.vendor.repository.ICategoryRepository;

import java.util.List;

@Service
public class CategoryService implements ICategoryService {
    @Autowired
    private ICategoryRepository categoryRepository;

    @Override
    public Category createNewCategory(Category newCategory) {
        return this.categoryRepository.saveAndFlush(newCategory);
    }

    @Override
    public Category updateCategory(int id, Category newCategoryData) {
        Category category = this.findCategoryById(id);
        if(category == null || newCategoryData.getTitle().equals(category.getTitle())) return null;
        if(newCategoryData.getTitle() != null) category.setTitle(newCategoryData.getTitle());

        return this.createNewCategory(category);
    }

    @Override
    public void deleteCategory(int id) {
        this.categoryRepository.deleteById(id);
    }

    @Override
    public Category findCategoryById(int id) {
        return this.categoryRepository.findById(id).isPresent()
                ? this.categoryRepository.findById(id).get() : null;
    }

    @Override
    public List<Category> listCategories() {
        return this.categoryRepository.findAll();
    }
}