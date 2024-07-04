package com.counter.Counter_API.repository;

import com.counter.Counter_API.entity.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repository interface for Product entity.
 */
@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
