package com.counter.Counter_API.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "counter_category")
public class Category {

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long category_id;

  @Column(nullable = false)
  public String category_name;

  @Column(nullable = false)
  public String category_counter;

  public Long getId() {
    return category_id;
  }

  public String getName() {
    return category_name;
  }

  public String getCounter() {
    return category_counter;
  }


  public void setId(Long category_id) {
    this.category_id = category_id;
  }

  public void setName(String category_name) {
    this.category_name = category_name;
  }

  public void setCounter(String category_counter) {
    this.category_counter = category_counter;
  }

}
