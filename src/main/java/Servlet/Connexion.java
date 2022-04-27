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
        String message1= "Connexion réussie, vous êtes admin!!";
        String message2= "Connexion réussi, vous êtes un utilisateur";
        String message3= "l'utilisateur n'existe pas!!";


        if (result==true){

            //response.sendRedirect(request.getContextPath()+ "/CreationCompte");
            boolean ifAdmin=dao.IfAdmin(username);
            if(ifAdmin==true){
                //on est admin
                out.println("<html><body>");
                out.println("<h1>" +message1+ "</h1>");
                out.println("</body></html>");

            }
            else{

                //on est user
                out.println("<html><body>");
                out.println("<h1>" +message2+ "</h1>");
                out.println("</body></html>");

            }
            //il faut modifier le chemin
        }
        else{
            out.println("<html><body>");
            out.println("<h1>" +message3 + "</h1>");
            out.println("</body></html>");

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);

    }
}
