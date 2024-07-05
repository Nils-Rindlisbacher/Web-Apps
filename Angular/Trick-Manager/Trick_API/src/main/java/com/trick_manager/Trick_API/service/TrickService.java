package com.trick_manager.Trick_API.service;

import com.trick_manager.Trick_API.entity.CompletedTrick;
import com.trick_manager.Trick_API.entity.Trick;
import com.trick_manager.Trick_API.repository.CompletedTrickRepository;
import com.trick_manager.Trick_API.repository.TrickRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

/**
 * Service class for managing Trick entities.
 */
@Service
public class TrickService {

  private final TrickRepository trickRepository;
  private final CompletedTrickRepository completedTrickRepository;

  @Autowired
  public TrickService(TrickRepository trickRepository, CompletedTrickRepository completedTrickRepository) {
    this.trickRepository = trickRepository;
    this.completedTrickRepository = completedTrickRepository;
  }

  /**
   * Save a trick.
   *
   * @param trick the entity to save
   * @return the persisted entity
   */
  public Trick saveTrick(Trick trick) {
    return trickRepository.save(trick);
  }


  /**
   * Save a completed trick.
   *
   * @param completedTrick the entity to save
   * @return the persisted entity
   */
  public CompletedTrick saveCompletedTrick(CompletedTrick completedTrick) {
    return completedTrickRepository.save(completedTrick);
  }

  /**
   * Get all the tricks.
   *
   * @return the list of entities
   */
  public List<Trick> getAllTricks() {
    return trickRepository.findAll();
  }

  /**
   * Get all the tricks.
   *
   * @return the list of entities
   */
  public List<String> getAllTypes() {
    List<Trick> tricks = trickRepository.findAll();
    ArrayList<String> types = new ArrayList<>();

    for (Trick trick : tricks) {
      if(!types.contains(trick.trick_type)){
        types.add(trick.trick_type);
      }
    }

    return types;
  }

  /**
   * Get all the tricks.
   *
   * @return the list of entities
   */
  public List<CompletedTrick> getAllCompletedTricks() {
    return completedTrickRepository.findAll();
  }

  /**
   * Get one trick by ID.
   *
   * @param id the ID of the entity
   * @return the entity
   */
  public Optional<Trick> getTrickById(Long id) {
    return trickRepository.findById(id);
  }

  /**
   * Get one trick by ID.
   *
   * @param id the ID of the entity
   * @return the entity
   */
  public Optional<CompletedTrick> getCompletedTrickById(Long id) {
    return completedTrickRepository.findById(id);
  }

  /**
   * Update a trick.
   *
   * @param id the ID of the entity
   * @param updatedTrick the updated entity
   * @return the updated entity
   */
  public Trick updateTrick(Long id, Trick updatedTrick) {
    Optional<Trick> existingTrick = trickRepository.findById(id);
    if (existingTrick.isPresent()) {
      Trick trick = existingTrick.get();
      trick.setName(updatedTrick.getName());
      trick.setType(updatedTrick.getType());
      return trickRepository.save(trick);
    } else {
      throw new RuntimeException("Trick not found");
    }
  }

  /**
   * Delete the trick by ID.
   *
   * @param id the ID of the entity
   */
  public void deleteTrick(Long id) {
    trickRepository.deleteById(id);
  }


  /**
   * Delete the completed trick by ID.
   *
   * @param id the ID of the entity
   */
  public void deleteCompletedTrick(Long id) {
    completedTrickRepository.deleteById(id);
  }
}
