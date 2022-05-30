package service.impl;

import model.Product;
import repository.IProductRepository;
import repository.impl.ProductRepository;
import service.IProductService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductService implements IProductService {

    IProductRepository productRepository = new ProductRepository();

    @Override
    public List<Product> findAll() {
        return productRepository.findAll();
    }

    @Override
    public Product findById(int id) {

        return null;
    }

    @Override
    public Map<Integer, Product> save(Product product) {
        Map<Integer, Product> map = new HashMap<>();
            productRepository.save(product);
        return map;
    }

    @Override
    public void delete(int id) {

    }
}
