import { ComponentFixture, TestBed } from '@angular/core/testing';

import { TestimonialsOneitemComponent } from './testimonials-oneitem.component';

describe('TestimonialsOneitemComponent', () => {
  let component: TestimonialsOneitemComponent;
  let fixture: ComponentFixture<TestimonialsOneitemComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ TestimonialsOneitemComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(TestimonialsOneitemComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
