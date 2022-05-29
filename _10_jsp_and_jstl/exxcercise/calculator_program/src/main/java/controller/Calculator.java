package controller;

public class Calculator {
    public static double calculator(double firstP,double secondP, String oprerator){
        double result;
        switch (oprerator){
            case "Summation":
                result = firstP + secondP;
                break;
            case "Subtraction":
                result = firstP - secondP;
                break;
            case "Multiplication":
                result = firstP * secondP;
                break;
            case "Division":
                result = firstP / secondP;
                break;
            default:
                throw new IllegalStateException("Unexpected value: " + oprerator);
        }
        return result;
    }
}
