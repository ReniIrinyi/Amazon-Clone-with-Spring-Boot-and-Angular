import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TestimonialsItemsComponent } from './testimonials-items.component';

describe('TestimonialsItemsComponent', () => {
  let component: TestimonialsItemsComponent;
  let fixture: ComponentFixture<TestimonialsItemsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TestimonialsItemsComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TestimonialsItemsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
