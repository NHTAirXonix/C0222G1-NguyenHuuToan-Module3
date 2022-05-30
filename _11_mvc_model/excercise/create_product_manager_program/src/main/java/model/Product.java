package model;

public class Product {
    private Integer id;
    private String name;
    private Double price;
    private String detail;
    private String brand;

    public Product(Integer id, String name, Double price, String detail, String brand) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.detail = detail;
        this.brand = brand;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }


}
