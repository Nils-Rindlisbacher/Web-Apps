import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CompletedTricksComponent } from './completed-tricks.component';

describe('CompletedTricksComponent', () => {
  let component: CompletedTricksComponent;
  let fixture: ComponentFixture<CompletedTricksComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [CompletedTricksComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(CompletedTricksComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
