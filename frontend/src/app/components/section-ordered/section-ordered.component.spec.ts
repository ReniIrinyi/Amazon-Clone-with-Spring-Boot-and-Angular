import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SectionOrderedComponent } from './section-ordered.component';

describe('SectionOrderedComponent', () => {
  let component: SectionOrderedComponent;
  let fixture: ComponentFixture<SectionOrderedComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SectionOrderedComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SectionOrderedComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
