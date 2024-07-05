package com.trick_manager.Trick_API.repository;

import com.trick_manager.Trick_API.entity.CompletedTrick;
import com.trick_manager.Trick_API.entity.Trick;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Repository interface for Product entity.
 */
@Repository
public interface CompletedTrickRepository extends JpaRepository<CompletedTrick, Long> {
}
