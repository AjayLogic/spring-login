package hu.bbabics.springboot_login.repository;


import org.springframework.data.repository.CrudRepository;

import hu.bbabics.springboot_login.model.Product;



public interface ProductRepository extends CrudRepository<Product, Integer>{
}
