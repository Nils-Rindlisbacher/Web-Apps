package com.counter.Counter_API.controller;


import com.counter.Counter_API.entity.Category;
import com.counter.Counter_API.service.CategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/counter")
public class CounterController {

  private final CategoryService counterService;

  @Autowired
  public CounterController(CategoryService counterService) {
    this.counterService = counterService;
  }


  @PostMapping("/category")
  public ResponseEntity<Category> saveCounter(@RequestBody Category category) {
    Category newCategory = counterService.saveCategory(category);
    return ResponseEntity.ok(newCategory);
  }


  @GetMapping("/categories")
  public List<Category> getAllCategories() {
    return counterService.getAllCategories();
  }

  @GetMapping("/category/{id}")
  public ResponseEntity<Category> getCategoryById(@PathVariable Long id) {
    Optional<Category> counter = counterService.getCategoryById(id);
    return counter.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }


  @PutMapping("/category/{id}")
  public ResponseEntity<Category> updateCounter(@PathVariable Long id, @RequestBody Category category) {
    Category updatedCategory = counterService.updateCategory(id, category);
    return ResponseEntity.ok(updatedCategory);
  }


  @DeleteMapping("/category/{id}")
  public ResponseEntity<String> deleteCounter(@PathVariable Long id) {
    counterService.deleteCategory(id);
    return ResponseEntity.ok("Category deleted successfully");
  }
}
