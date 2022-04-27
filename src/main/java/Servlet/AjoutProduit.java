package Servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "AjoutProduit", value = "/AjoutProduit")
public class AjoutProduit extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String [] c= request.getParameterValues("categorie"); //attention, il s'agit d'une table
        String n=request.getParameter("nom");
        String d=request.getParameter("description");
        String p=request.getParameter("prix");
        String q=request.getParameter("quantite");

        //pour la table, même si on a qu'une valeur
        String c1=c[0];


        request.setAttribute("categorie" , c1);
        request.setAttribute("nomProduit" , n);
        request.setAttribute("description" ,d);
        request.setAttribute("prix",p);
        request.setAttribute("quantite", q);

        //envoyer ces donnés vers creationCompte.jsp où les données sont ajoutés dans le tableau
        this.getServletContext().getRequestDispatcher("/addProduct.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      doGet(request, response);
    }
}
