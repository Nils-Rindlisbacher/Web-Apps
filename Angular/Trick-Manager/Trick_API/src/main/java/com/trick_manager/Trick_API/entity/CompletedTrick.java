package com.trick_manager.Trick_API.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "completed_tricks")
public class CompletedTrick {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long completed_trick_id;

  @Column(nullable = false)
  public Long trick_id;


  public Long getCompletedTrickId() {
    return completed_trick_id;
  }

  public Long getTrickId() {
    return trick_id;
  }


  public void setCompletedTrickId(Long completed_trick_id) {
    this.completed_trick_id = completed_trick_id;
  }

  public void setTrickId(Long trick_id) {
    this.trick_id = trick_id;
  }

}
