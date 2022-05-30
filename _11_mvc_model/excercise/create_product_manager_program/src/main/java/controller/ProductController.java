package controller;

import model.Product;
import repository.impl.ProductRepository;
import service.IProductService;
import service.impl.ProductService;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Map;

@WebServlet(name = "ProductServlet", urlPatterns = "/product")
public class ProductController extends HttpServlet {
    // controller call service
    private IProductService productService = new ProductService();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null){
            action = "";
        }

        switch (action){
            case "add":
                // trả về một form thêm mới
                save(request,response);
                break;
            case "edit":
                edit(request,response);
                break;
            case "delete":
                delete(request,response);
                break;
            case "search":
                search(request,response);
                break;
            default:
                showProductList(request,response);
        }

    }

    private void save(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String detail = request.getParameter("detail");
        String brand = request.getParameter("brand");
        Product product = new Product(id,name,price,detail,brand);

        Map<Integer, Product> map= productService.save(product);

        if (map.isEmpty()){
            request.setAttribute("mess", "Them moi thanh cong");
        }else {
            request.setAttribute("mess", "Them moi khong thanh cong");
            request.setAttribute("error",map);
        }

        RequestDispatcher dispatcher=  request.getRequestDispatcher("/view/product/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void edit(HttpServletRequest request, HttpServletResponse response) {
        int idIndex = Integer.parseInt(request.getParameter("idIndex"));
        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        String detail = request.getParameter("detail");
        String brand = request.getParameter("brand");

        Product product = ProductRepository.findById(idIndex);
        product.setId(id);
        product.setName(name);
        product.setPrice(price);
        product.setDetail(detail);
        product.setBrand(brand);
        request.setAttribute("mess", "Edit moi thanh cong");

        /*Map<Integer, Product> map= productService.save(product);
        if (map.isEmpty()){
            request.setAttribute("mess", "Edit moi thanh cong");
        }else {
           request.setAttribute("mess", "Edit moi khong thanh cong");
           request.setAttribute("error",map);
        }*/

        RequestDispatcher dispatcher=  request.getRequestDispatcher("/view/product/edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) {
        int idIndex = Integer.parseInt(request.getParameter("idIndex"));
        List<Product> productList = productService.findAll();
        productList.remove(idIndex-1);
        request.setAttribute("mess", "Delete complete");
        RequestDispatcher dispatcher=  request.getRequestDispatcher("/view/product/delete.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void search(HttpServletRequest request, HttpServletResponse response) {
        String name = request.getParameter("name");
        List<Product> productList = productService.findAll();
        boolean check = false;
        for (int i =0; i<productList.size();i++){
            if (name.equals(productList.get(i).getName())){
                check = true;
            }
        }
        if (check) {
            request.setAttribute("mess", "Appear in product list");
        }   else {
            request.setAttribute("mess", "Don't Appear in product list");
        }
        RequestDispatcher dispatcher=  request.getRequestDispatcher("/view/product/search.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action =request.getParameter("action");
        if (action==null){
            action="";
        }
        switch (action){
            case "add":
                showFormCreate(request,response);
                break;
            case "edit":
                showFormEdit(request, response);
                break;
            case "delete":
                showFormDelete(request, response);
                break;
            case "search":
                showFormSearch(request,response);
                break;
            default:
                showProductList(request,response);
        }
    }

    private void showFormCreate(HttpServletRequest request, HttpServletResponse response) {
        // trả về form thêm mới
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/create.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormEdit(HttpServletRequest request, HttpServletResponse response) {
        // trả về form thêm mới
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/edit.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormDelete(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/delete.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showFormSearch(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/search.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showProductList(HttpServletRequest request, HttpServletResponse response) {
        List<Product> studentList = productService.findAll();
        request.setAttribute("productList", studentList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/product/list.jsp");
        try {
            dispatcher.forward(request,response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
