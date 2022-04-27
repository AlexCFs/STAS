package Servlet;

import ClientDAO.ClientDAO;
import ClientDAO.ClientDAOImp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "Connexion", value = "/Connexion")
public class Connexion extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username=request.getParameter("name");
        String userpassword=request.getParameter("mdp");

        PrintWriter out = response.getWriter();

        ClientDAO dao=new ClientDAOImp();
        boolean result= dao.authentificationService(username, userpassword);
        out.println("<html><body>");
        out.println("<h1>" +result + "</h1>");
        out.println("</body></html>");

        String message1= "Connexion réussie!!";
        String message2= "Connexion ratée!!";


        if (result==true){
            out.println("<html><body>");
            out.println("<h1>" +message1+ "</h1>");
            out.println("</body></html>");
            response.sendRedirect(request.getContextPath()+ "/CreationCompte");
        }
        else{
            out.println("<html><body>");
            out.println("<h1>" +message2 + "</h1>");
            out.println("</body></html>");

        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
