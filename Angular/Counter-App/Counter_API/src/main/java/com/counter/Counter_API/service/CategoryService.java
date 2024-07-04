package com.counter.Counter_API.service;

import com.counter.Counter_API.entity.Category;
import com.counter.Counter_API.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Service class for managing Trick entities.
 */
@Service
public class CategoryService {

  private final CategoryRepository categoryRepository;

  @Autowired
  public CategoryService(CategoryRepository categoryRepository) {
    this.categoryRepository = categoryRepository;
  }

  /**
   * Save a trick.
   *
   * @param category the entity to save
   * @return the persisted entity
   */
  public Category saveCategory(Category category) {
    return categoryRepository.save(category);
  }

  /**
   * Get all the categories.
   *
   * @return the list of entities
   */
  public List<Category> getAllCategories() {
    return categoryRepository.findAll();
  }

  /**
   * Get one category by ID.
   *
   * @param id the ID of the entity
   * @return the entity
   */
  public Optional<Category> getCategoryById(Long id) {
    return categoryRepository.findById(id);
  }

  /**
   * Update a category.
   *
   * @param id the ID of the entity
   * @param updatedCategory the updated entity
   * @return the updated entity
   */
  public Category updateCategory(Long id, Category updatedCategory) {
    Optional<Category> existingTrick = categoryRepository.findById(id);
    if (existingTrick.isPresent()) {
      Category category = existingTrick.get();
      category.setName(updatedCategory.getName());
      category.setCounter(updatedCategory.getCounter());
      return categoryRepository.save(category);
    } else {
      throw new RuntimeException("Category not found");
    }
  }

  /**
   * Delete the trick by ID.
   *
   * @param id the ID of the entity
   */
  public void deleteCategory(Long id) {
    categoryRepository.deleteById(id);
  }
}
