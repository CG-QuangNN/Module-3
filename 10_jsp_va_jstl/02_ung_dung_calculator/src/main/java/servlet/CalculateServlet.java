package servlet;

import util.CalculatorUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CalculateServlet", value = "/calculate")
public class CalculateServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Double num1 = Double.parseDouble(request.getParameter("operand1"));
        String operators = request.getParameter("dropdownOperator");
        Double num2 = Double.parseDouble(request.getParameter("operand2"));

        String exceptionNotif = null;
        Double result = null;
        try {
            result = CalculatorUtil.calculate(num1, num2, operators);
        } catch (Exception exception) {
            exceptionNotif = exception.getMessage();
        }
        request.setAttribute("results", result);
        request.setAttribute("exceptions", exceptionNotif);
        request.setAttribute("num1",num1);
        request.setAttribute("num2",num2);

        request.setAttribute("operators",operators);

        RequestDispatcher dispatcher = request.getRequestDispatcher("result.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    public static Double calculate(Double operant1, Double operant2, String operators) throws Exception {
        if (operators.equals("add")) {
            return operant1 + operant2;
        } else if (operators.equals("minus")) {
            return operant1 - operant2;
        } else if (operators.equals("mul")) {
            return operant1 * operant2;
        } else {
            if(operant2 == 0){
                throw new Exception("You might try to div to 0, try another number");
            }
            return operant1 / operant2;
        }
    }
}
