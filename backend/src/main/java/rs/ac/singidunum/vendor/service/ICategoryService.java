package rs.ac.singidunum.vendor.service;

import rs.ac.singidunum.vendor.entity.Category;

import java.util.List;

public interface ICategoryService {
    Category createNewCategory(Category newCategory);
    Category updateCategory(int id, Category newCategoryData);
    void deleteCategory(int id);
    Category findCategoryById(int id);
    List<Category> listCategories();
}