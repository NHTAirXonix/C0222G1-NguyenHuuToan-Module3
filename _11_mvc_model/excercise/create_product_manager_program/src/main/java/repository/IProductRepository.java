package repository;

import model.Product;

import java.util.List;
import java.util.Map;

public interface IProductRepository {
    List<Product> findAll();

    void save(Product product);
    void delete(int id);
}
