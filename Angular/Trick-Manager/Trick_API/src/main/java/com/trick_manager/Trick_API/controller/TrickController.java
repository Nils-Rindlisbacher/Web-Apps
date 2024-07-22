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


  @PostMapping("/trick")
  public ResponseEntity<Trick> saveTrick(@RequestBody Trick trick) {
    Trick newTrick = trickService.saveTrick(trick);
    return ResponseEntity.ok(newTrick);
  }

  @GetMapping("/trick/{id}")
  public ResponseEntity<Trick> getTrickById(@PathVariable Long id) {
    Optional<Trick> trick = trickService.getTrickById(id);
    return trick.map(ResponseEntity::ok).orElseGet(() -> ResponseEntity.notFound().build());
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


  @GetMapping("/tricks")
  public List<Trick> getAllTricks() {
    return trickService.getAllTricks();
  }

  @GetMapping("/types")
  public List<String> getAllTypes() {
    return trickService.getAllTypes();
  }

}
