import { Component, OnInit } from '@angular/core';
import { ProductService } from 'src/app/services/product.service';
import { Product } from 'src/app/common/product';

@Component({
  selector: 'app-testimonials-items',
  templateUrl: './testimonials-items.component.html',
  styleUrls: ['./testimonials-items.component.scss'],
})
export class TestimonialsItemsComponent implements OnInit {
  products: Product[] = [];
  randomItems: Product[] = [];

  constructor(private productService: ProductService) {}

  ngOnInit(): void {
    this.listProducts();
  }

  listProducts() {
    this.productService.getProductList().subscribe((data) => {
      this.products = data;
      this.generateRandomItems();
    });
  }

  generateRandomItems() {
    const totalItems = 4;
    const productCount = this.products.length;

    while (this.randomItems.length < totalItems) {
      const randomIndex = Math.floor(Math.random() * productCount);
      const randomProduct = this.products[randomIndex];

      if (!this.randomItems.includes(randomProduct)) {
        this.randomItems.push(randomProduct);
      }
    }
  }
}
