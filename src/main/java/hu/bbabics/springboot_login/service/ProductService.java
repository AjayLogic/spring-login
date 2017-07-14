package hu.bbabics.springboot_login.service;

import hu.bbabics.springboot_login.model.Product;

public interface ProductService {
    Iterable<Product> listAllProducts();

    Product getProductById(Integer id);

    Product saveProduct(Product product);
}
