package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "CalculatorServlet", urlPatterns = "/calculator")

public class CalculatorServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        double firstParameter = Double.parseDouble(request.getParameter("firstParameter"));
        double secondParameter = Double.parseDouble(request.getParameter("secondParameter"));
        String operator = request.getParameter("operator");
        double result = Calculator.calculator(firstParameter,secondParameter,operator);

        request.setAttribute("firstParameter",firstParameter);
        request.setAttribute("secondParameter",secondParameter);
        request.setAttribute("operator",operator);
        request.setAttribute("result",result);

        request.getRequestDispatcher("cal.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
