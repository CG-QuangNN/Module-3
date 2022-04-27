package servlet;

import model.Customer;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "CustomerServlet", value = "/customer")
public class CustomerServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Customer> customerList = new ArrayList<>();

        customerList.add(new Customer("Nguyễn Văn A","2022/10/10","Đà Nẵng","https://bloganh.net/wp-content/uploads/2021/03/quy-tac-1-3.jpg"));
        customerList.add(new Customer("Nguyễn Văn B","2022/10/10","Đà Nẵng","https://bloganh.net/wp-content/uploads/2021/03/chup-anh-dep-anh-sang-min.jpg"));
        customerList.add(new Customer("Nguyễn Văn C","2022/10/10","Đà Nẵng","https://bloganh.net/wp-content/uploads/2021/03/lua-chon-ong-kinh-xin-cach-chup-anh-dep.jpg"));

        request.setAttribute("customers",customerList);

        RequestDispatcher dispatcher =  request.getRequestDispatcher("display.jsp");
        dispatcher.forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
