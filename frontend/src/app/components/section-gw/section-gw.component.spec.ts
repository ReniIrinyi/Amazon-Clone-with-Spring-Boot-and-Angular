import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SectionGwComponent } from './section-gw.component';

describe('SectionGwComponent', () => {
  let component: SectionGwComponent;
  let fixture: ComponentFixture<SectionGwComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SectionGwComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SectionGwComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
