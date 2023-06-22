import { ComponentFixture, TestBed } from '@angular/core/testing';

import { CheckoutHomeComponent } from './checkout-home.component';

describe('CheckoutHomeComponent', () => {
  let component: CheckoutHomeComponent;
  let fixture: ComponentFixture<CheckoutHomeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ CheckoutHomeComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(CheckoutHomeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
