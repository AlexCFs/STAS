package beans.Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "CreationCompte", value = "/CreationCompte")
public class CreationCompte extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String n=request.getParameter("name");
        String e= request.getParameter("email");

        request.setAttribute("name" , n);
        request.setAttribute("email",e);

        //envoyer ces donnés vers creationCompte.jsp où les données sont ajoutés dans le tableau
        this.getServletContext().getRequestDispatcher("/creationCompte.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}
