import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { BrowserModule } from '@angular/platform-browser';

import { AppComponent } from './app.component';
import { HomeComponent } from './components/01-home/home.component';
import { HeroComponent } from './components/01-home/hero/hero.component';
import { ProductListComponent } from './components/03-order/product-list/product-list.component';
import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { HeaderComponent } from './components/00-header/header.component';
import { HeaderTopComponent } from './components/00-header/header-top/header-top.component';
import { HeaderBottomComponent } from './components/00-header/header-bottom/header-bottom.component';
import { ShoppingCartComponent } from './components/02-checkout/shopping-cart/shopping-cart.component';
import { OrderHomeComponent } from './components/03-order/order-home/order-home.component';
import { SectionOrderedComponent } from './components/03-order/section-ordered/section-ordered.component';
import { ContactsComponent } from './components/04-footer/contacts/contacts.component';
import { FooterComponent } from './components/04-footer/footer.component';
import { ButtonComponent } from './components/05-helpers/button/button.component';
import { SearchbarComponent } from './components/05-helpers/searchbar/searchbar.component';
import { CarouselComponent } from './components/05-helpers/carousel/carousel.component';
import { SidebarComponent } from './components/05-helpers/sidebar/sidebar.component';
import { PaginationComponent } from './components/05-helpers/pagination/pagination.component';
import { PagenotfoundComponent } from './components/05-helpers/pagenotfound/pagenotfound.component';
import { ProductDetailsComponent } from './components/03-order/product-details/product-details.component';
import { TestimonialsItemsComponent } from './components/05-helpers/testimonials-items/testimonials-items.component';
import { TestimonialsVideoComponent } from './components/05-helpers/testimonials-video/testimonials-video.component';
import { TestimonialsOneitemComponent } from './components/05-helpers/testimonials-oneitem/testimonials-oneitem.component';

const routes: Routes = [
  { path: 'home', component: HomeComponent },
  { path: 'shopping-cart', component: ShoppingCartComponent },
  { path: 'order-home', component: OrderHomeComponent },
  { path: 'section-ordered', component: SectionOrderedComponent },
  { path: 'page-not-found', component: PagenotfoundComponent },
  { path: 'product-details', component: ProductDetailsComponent },
  { path: 'category/:id', component: ProductListComponent },
  { path: 'category', component: ProductListComponent },
  { path: 'products', component: ProductListComponent },
  { path: '', redirectTo: '/home', pathMatch: 'full' },
  { path: '**', redirectTo: '/page-not-found', pathMatch: 'full' },
];

@NgModule({
  declarations: [
    HomeComponent,
    AppComponent,
    HeaderTopComponent,
    HeaderBottomComponent,
    HeaderComponent,
    HeroComponent,
    ShoppingCartComponent,
    OrderHomeComponent,
    SectionOrderedComponent,
    FooterComponent,
    ContactsComponent,
    ButtonComponent,
    CarouselComponent,
    ProductListComponent,
    SearchbarComponent,
    SidebarComponent,
    PaginationComponent,
    PagenotfoundComponent,
    ProductDetailsComponent,
    TestimonialsItemsComponent,
    TestimonialsVideoComponent,
    TestimonialsOneitemComponent,
  ],
  imports: [BrowserModule, HttpClientModule, RouterModule.forRoot(routes)],
  providers: [ProductService],
  bootstrap: [AppComponent],
})
export class AppModule {}
