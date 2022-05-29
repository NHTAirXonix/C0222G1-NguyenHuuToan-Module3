package model;

public class Customer {
    private String name;
    private String birthday;
    private String adress;
    private String image;

    public Customer(String name, String birthday, String adress, String image) {
        this.name = name;
        this.birthday = birthday;
        this.adress = adress;
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAdress() {
        return adress;
    }

    public void setAdress(String adress) {
        this.adress = adress;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "Customer{" +
                "name='" + name + '\'' +
                ", birthday='" + birthday + '\'' +
                ", adress='" + adress + '\'' +
                ", image='" + image + '\'' +
                '}';
    }
}
