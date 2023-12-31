package com.backend.dao;

import com.backend.entity.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.CrossOrigin;

@CrossOrigin(origins="http://localhost:4200")
@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {
    Page<Product>findByCategoryId(@Param("id")Long id, Pageable pageable);
}
