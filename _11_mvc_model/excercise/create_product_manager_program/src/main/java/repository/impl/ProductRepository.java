package repository.impl;

import model.Product;
import repository.IProductRepository;

import java.util.*;

public class ProductRepository implements IProductRepository {

    private static List<Product> productList = new ArrayList<>();
    static {
        productList.add(new Product(1,"Iphone X", 1000.0,"100%","Apple"));
        productList.add(new Product(2,"Iphone XS", 1200.0,"100%","Apple"));
        productList.add(new Product(3,"Iphone XS MAX", 1500.0,"100%","Apple"));
        productList.add(new Product(4,"Iphone XR", 1200.0,"100%","Apple"));
        productList.add(new Product(5,"Iphone 13", 1500.0,"100%","Apple"));
    }

    private static Map<Integer,Product> productMap = new LinkedHashMap<>();
    static {
        productMap.put(1,new Product(1,"Iphone X", 1000.0,"100%","Apple"));
        productMap.put(2,new Product(2,"Iphone XS", 1200.0,"100%","Apple"));
        productMap.put(3,new Product(3,"Iphone XS MAX", 1500.0,"100%","Apple"));
        productMap.put(4,new Product(4,"Iphone XR", 1200.0,"100%","Apple"));
        productMap.put(5,new Product(5,"Iphone 13", 1500.0,"100%","Apple"));
    }

    @Override
    public List<Product> findAll() {
        // connect with database
        return productList;
    }


    public static Product findById(int id) {
        Product product = null;
        for (int i =0; i< productList.size();i++){
            if (id == productList.get(i).getId()){
                product = productList.get(i);
            }
        }
        return product;
    }

    @Override
    public void save(Product product) {
        productList.add(product);
        // don't save if illegal
    }

    @Override
    public void delete(int id) {

    }
}
