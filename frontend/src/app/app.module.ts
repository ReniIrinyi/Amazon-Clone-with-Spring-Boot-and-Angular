import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { AppComponent } from './app.component';
import { ProductListComponent } from './components/product-list/product-list.component';
import { HttpClientModule } from '@angular/common/http';
import { ProductService } from './services/product.service';
import { HeaderComponent } from './components/header/header.component';
import { HeaderTopComponent } from './components/header-top/header-top.component';
import { HeaderBottomComponent } from './components/header-bottom/header-bottom.component';
import { HeaderRightComponent } from './components/header-right/header-right.component';
import { SectionGwComponent } from './components/section-gw/section-gw.component';
import { SectionHeroComponent } from './components/01-startpage/section-hero/section-hero.component';
import { StartHomeComponent } from './components/01-startpage/start-home/start-home.component';
import { CheckoutHomeComponent } from './components/02-checkout/checkout-home/checkout-home.component';
import { ShoppingCartComponent } from './components/02-checkout/shopping-cart/shopping-cart.component';
import { OrderHomeComponent } from './components/03-order/order-home/order-home.component';
import { ButtonComponent } from './components/04-helpers/button/button.component';
import { SearchbarComponent } from './components/04-helpers/searchbar/searchbar.component';
import { FooterComponent } from './components/footer/footer.component';
import { CarouselComponent } from './components/04-helpers/carousel/carousel.component';

@NgModule({
  declarations: [
    AppComponent,
    ProductListComponent,
    HeaderTopComponent,
    HeaderBottomComponent,
    HeaderRightComponent,
    HeaderComponent,
    SectionGwComponent,
    SectionHeroComponent,
    StartHomeComponent,
    CheckoutHomeComponent,
    ShoppingCartComponent,
    OrderHomeComponent,
    ButtonComponent,
    SearchbarComponent,
    FooterComponent,
    CarouselComponent,
  ],
  imports: [BrowserModule, HttpClientModule],
  providers: [ProductService],
  bootstrap: [AppComponent],
})
export class AppModule {}
