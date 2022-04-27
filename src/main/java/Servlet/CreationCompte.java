package Servlet;

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
        String n=request.getParameter("nom");
        String p=request.getParameter("prenom");
        String t=request.getParameter("telephone");
        String a=request.getParameter("adresse");
        String c=request.getParameter("codePostal");
        String v=request.getParameter("ville");
        String e= request.getParameter("email");
        String m= request.getParameter("mdp");

        request.setAttribute("name" , n);
        request.setAttribute("prenom" , p);
        request.setAttribute("telephone" , t);
        request.setAttribute("adresse" , a);
        request.setAttribute("codePostal" , c);
        request.setAttribute("ville" , v);
        request.setAttribute("email" , e);
        request.setAttribute("mdp", m);

        //envoyer ces donnés vers creationCompte.jsp où les données sont ajoutés dans le tableau
        this.getServletContext().getRequestDispatcher("/creationCompte.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request, response);
    }
}
