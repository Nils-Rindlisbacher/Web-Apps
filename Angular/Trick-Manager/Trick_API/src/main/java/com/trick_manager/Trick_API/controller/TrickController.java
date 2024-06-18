package com.trick_manager.Trick_API.controller;


import com.trick_manager.Trick_API.entity.Trick;
import com.trick_manager.Trick_API.service.TrickService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/")
public class TrickController {

  private final TrickService trickService;

  @Autowired
  public TrickController(TrickService trickService) {
    this.trickService = trickService;
  }

  /**
   * Create a new trick.
   *
   * @param trick the trick to create
   * @return the ResponseEntity with status 200 (OK) and with body of the new trick
   */
  @PostMapping("/trick")
  public ResponseEntity<Trick> saveTrick(@RequestBody Trick trick) {
    Trick newTrick = trickService.saveTrick(trick);
    return ResponseEntity.ok(newTrick);
  }

  /**
   * Get all tricks.
   *
   * @return the ResponseEntity with status 200 (OK) and with body of the list of tricks
   */
  @GetMapping("/tricks")
  public List<Trick> getAllTricks() {
    return trickService.getAllTricks();
  }

  @GetMapping("/types")
  public List<String> getAllTypes() {
    return trickService.getAllTypes();
  }

  /**
   * Get a trick by ID.
   *
   * @param id the ID of the trick to get
   * @return the ResponseEntity with status 200 (OK) and with body of the trick, or with status 404 (Not Found) if the trick does not exist
   */
  @GetMapping("/tricks/{id}")
  public ResponseEntity<Trick> getTrickById(@PathVariable Long id) {
    Optional<Trick> trick = trickService.getTrickById(id);
    return trick.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }

  /**
   * Update a trick by ID.
   *
   * @param id the ID of the trick to update
   * @param trick the updated trick
   * @return the ResponseEntity with status 200 (OK) and with body of the updated trick, or with status 404 (Not Found) if the trick does not exist
   */
  @PutMapping("/tricks/{id}")
  public ResponseEntity<Trick> updateTrick(@PathVariable Long id, @RequestBody Trick trick) {
    Trick updatedTrick = trickService.updateTrick(id, trick);
    return ResponseEntity.ok(updatedTrick);
  }

  /**
   * Delete a trick by ID.
   *
   * @param id the ID of the trick to delete
   * @return the ResponseEntity with status 200 (OK) and with body of the message "Trick deleted successfully"
   */
  @DeleteMapping("/tricks/{id}")
  public ResponseEntity<String> deleteTrick(@PathVariable Long id) {
    trickService.deleteTrick(id);
    return ResponseEntity.ok("Trick deleted successfully");
  }
}
