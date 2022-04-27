package beans;

import beans.ClientDAO.ClientDAO;
import beans.ClientDAO.ClientDAOImp;

import java.util.ArrayList;

public class mainTest {
    public static void main(String[] args) {

        //tester si la méthode de findAll marche
        ClientDAO dao1= new ClientDAOImp();
        ArrayList<Client> list=dao1.findAll();


        //ça marche bien

        Client c1=new Client(1,"dupond","luc","84512354874","rue pairs","75800","paris","fezsd@gmail.com","fzesdv");
        //le cid, on s'en fiche, car dans la database, c'est généré automatiquement
        ClientDAO dao2=new ClientDAOImp();


       dao2.insert(c1);
        for (Client c:list){
            System.out.println(c);
        }
        }
        //



    }

