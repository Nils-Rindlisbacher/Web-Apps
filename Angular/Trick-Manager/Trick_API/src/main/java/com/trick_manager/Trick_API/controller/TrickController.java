package com.trick_manager.Trick_API.controller;


import com.trick_manager.Trick_API.entity.CompletedTrick;
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


  @PostMapping("/trick")
  public ResponseEntity<Trick> saveTrick(@RequestBody Trick trick) {
    Trick newTrick = trickService.saveTrick(trick);
    return ResponseEntity.ok(newTrick);
  }
  @PostMapping("/completed_trick")
  public ResponseEntity<CompletedTrick> saveTrick(@RequestBody CompletedTrick completedTrick) {
    CompletedTrick newCompletedTrick = trickService.saveCompletedTrick(completedTrick);
    return ResponseEntity.ok(newCompletedTrick);
  }


  @GetMapping("/tricks")
  public List<Trick> getAllTricks() {
    return trickService.getAllTricks();
  }
  @GetMapping("/completed_tricks")
  public List<CompletedTrick> getAllCompletedTricks() {
    return trickService.getAllCompletedTricks();
  }
  @GetMapping("/types")
  public List<String> getAllTypes() {
    return trickService.getAllTypes();
  }
  @GetMapping("/trick/{id}")
  public ResponseEntity<Trick> getTrickById(@PathVariable Long id) {
    Optional<Trick> trick = trickService.getTrickById(id);
    return trick.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }
  @GetMapping("/completed_trick/{id}")
  public ResponseEntity<CompletedTrick> getCompletedTrick(@PathVariable Long id) {
    Optional<CompletedTrick> completedTrick = trickService.getCompletedTrickById(id);
    return completedTrick.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
  }


  @PutMapping("/trick/{id}")
  public ResponseEntity<Trick> updateTrick(@PathVariable Long id, @RequestBody Trick trick) {
    Trick updatedTrick = trickService.updateTrick(id, trick);
    return ResponseEntity.ok(updatedTrick);
  }

  @DeleteMapping("/trick/{id}")
  public ResponseEntity<String> deleteTrick(@PathVariable Long id) {
    trickService.deleteTrick(id);
    return ResponseEntity.ok("Trick deleted successfully");
  }
  @DeleteMapping("/completed_trick/{id}")
  public ResponseEntity<String> deleteCompletedTrick(@PathVariable Long id) {
    trickService.deleteCompletedTrick(id);
    return ResponseEntity.ok("Completed Trick deleted successfully");
  }
}
