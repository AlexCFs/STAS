package beans;

import beans.ClientDAO.ClientDAO;
import beans.ClientDAO.ClientDAOImp;
import java.util.ArrayList;

public class mainTest {
    public static void main(String[] args) {

        //tester si la méthode de findAll marche
        ClientDAO dao1= new ClientDAOImp();
        ArrayList<Client> list=dao1.findAll();

        for (Client c:list){
            System.out.println(c);
        }
        //ça marche bien

        Client c1=new Client(3, "Paul", "paullll@gmail.com");
        //le cid, on s'en fiche, car dans la database, c'est généré automatiquement
        ClientDAO dao2=new ClientDAOImp();


        ArrayList<Client> list2=dao2.findAll();
        for (Client c:list2){
            System.out.println(c);
        }
        //



    }

}
