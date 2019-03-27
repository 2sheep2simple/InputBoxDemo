package servlet;


import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Servlet")
public class Servlet extends HttpServlet {

    protected void doPost(HttpServletRequest request,HttpServletResponse  response) throws javax.servlet.ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(HttpServletRequest request,HttpServletResponse  response) throws javax.servlet.ServletException, IOException {
        System.out.println("success");
    }
}
