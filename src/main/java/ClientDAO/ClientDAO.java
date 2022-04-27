package ClientDAO;

import beans.Client;

import java.util.ArrayList;

public interface ClientDAO {

    // pour savoir toutes les informations des Client
    public abstract ArrayList<Client> findAll();


    // chercher des infos selon cid
    public abstract Client findById(int id);


    // ajouter un client
    public abstract int insert(Client c);


    // modifier les infos d'un client
    public abstract int update(Client c);


    // delecte selon id
    public abstract int delete(int id);

    //authentification, voir si on a un compte
    public abstract boolean authentificationService(String username, String useremail);

    //verfier si tu es client/utilisateur ou admin
    public abstract boolean IfAdmin(String name);


}
