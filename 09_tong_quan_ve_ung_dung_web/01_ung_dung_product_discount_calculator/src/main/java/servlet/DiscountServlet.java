package servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "DiscountServlet ", value = "/display-discount")
public class DiscountServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer number = Integer.parseInt(request.getParameter("list_price"));
        Integer discountRate = Integer.parseInt(request.getParameter("discount_percent"));
        Double result = number * discountRate * 0.01;

        PrintWriter writer = response.getWriter();

        writer.println("<html>");
        writer.println("<meta charset=UTF-8>");

        writer.printf("Percentage of discount : %.0f<br>", result);
        writer.printf(" Price after discount : %.3f", (number - result));

        writer.println("</html>");
    }
}
