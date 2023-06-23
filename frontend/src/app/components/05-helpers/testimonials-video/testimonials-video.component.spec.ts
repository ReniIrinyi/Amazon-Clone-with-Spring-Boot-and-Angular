import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TestimonialsVideoComponent } from './testimonials-video.component';

describe('TestimonialsVideoComponent', () => {
  let component: TestimonialsVideoComponent;
  let fixture: ComponentFixture<TestimonialsVideoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TestimonialsVideoComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TestimonialsVideoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
