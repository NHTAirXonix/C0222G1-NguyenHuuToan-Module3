package service;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductService {
    List<Product> findAll();
    Product findById(int id);
    Map<Integer,Product> save(Product product);
    void delete (int id);
}
