package beans.ClientDAO;

import beans.Client;

import java.sql.*;
import java.util.ArrayList;

public class ClientDAOImp implements ClientDAO {

    // il y a 2 méthodes que je n'ai pas encore fait
    private Connection con=null;

    public void initialisation(){
        try{
            String nomUtilisateur ="root";
            String motDePass = "pass";
            String nomBase="sys";

            String connec ="jdbc:mariadb://localhost:3306/";
            connec += nomBase +"?user="+nomUtilisateur;
            connec += "&password="+motDePass;

            con = DriverManager.getConnection(connec);




        }catch (Exception e ){
            System.out.println("Exception : "+ e.getMessage());

        }
    }

 // choisir la bonne méthode de close, car dans certaine méthode, on n'a pas besoin de Resultset rs
    public void Close(Connection con, Statement stat, ResultSet rs ){
        if(con!=null){
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stat !=null){
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (rs != null){
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }

    public void Close(Connection con,Statement stat) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        if (stat != null) {
            try {
                stat.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }



    @Override
    public ArrayList<Client> findAll() {
        ArrayList <Client> list=new ArrayList<>();
        initialisation();
        Statement stat = null;
        ResultSet rs= null;
        try {
            stat = con.createStatement();
            String requete = "SELECT * FROM client";
            rs = stat.executeQuery(requete);
            while (rs.next()){
                int cid= rs.getInt("cid");
                String name= rs.getString("name");
                String email= rs.getString("email");

                Client c= new Client(cid, name, email);
                list.add(c);

            }

        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con, stat, rs);
        }
        return list;
    }



    @Override
    public Client findById(int id) {



        return null;
    }

    @Override
    public int insert(Client c) {
        try {
            Class.forName("org.mariadb.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        initialisation();
        Statement stat = null;
        int result =0;
        try {
            stat = con.createStatement();
            String sql = "INSERT INTO client VALUES (DEFAULT ,'"+c.getName()+"','"+c.getEmail()+"')";

            stat.executeUpdate(sql);


        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }finally{
            Close(con, stat);
        }
        result=1;

        return result;
    }

    @Override
    public int update(Client c) {
        return 0;
    }

    @Override
    public int delete(int id) {
        return 0;
    }




}
