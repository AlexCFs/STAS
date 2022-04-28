package beans;

import ClientDAO.ClientDAO;
import ClientDAO.ClientDAOImp;
import ProduitDAO.ProduitDAO;
import ProduitDAO.ProduitDAOImp;

import java.util.ArrayList;

public class mainTest {
    public static void main(String[] args) {

        //tester si la méthode de findAll marche
        /*ClientDAO dao1= new ClientDAOImp();
        ArrayList<Client> list=dao1.findAll();


        //ça marche bien

        Client c1=new Client(1,"dupond","luc","84512354874","rue pairs","75800","paris","fezsd@gmail.com","fzesdv");
        //le cid, on s'en fiche, car dans la database, c'est généré automatiquement
        ClientDAO dao2=new ClientDAOImp();


       dao2.insert(c1);
        for (Client c:list){
            System.out.println(c);
        }*/
        //

        /*System.out.println("-----------tester la table de produit-------------------");
        ProduitDAO daoPro1= new ProduitDAOImp();
        Produit p1=new Produit(0, "Bijoux", "bracelet pandora","Description666dbfddu",650, 250);
        daoPro1.insertProduct(p1);*/

        System.out.println("-----------tester--------");
        ProduitDAO  daoPro2=new ProduitDAOImp();
        Produit p2= new Produit(2, "Bijoux", "colliers", "diament rouge", 3050, 32);
        daoPro2.updateProduct(p2);






    }
}

