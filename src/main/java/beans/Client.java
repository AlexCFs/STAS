package beans;

public class Client {
    //choses à faire: ajouter d'autres paramètres ex: password, telephone
    //n'oubliez pas d'ajouter des get et set pour ces derniers et modifier aussi le constructeur

    private int cid ;
    private String name;
    private String email;


    //constructeur

    public Client() {
    }

    public Client(int cid, String name, String email) {
        this.cid=cid;
        this.name = name;
        this.email = email;
    }


    //get et set

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }


    @Override
    public String toString() {
        return "Client{" +
                "cid=" + cid +
                ", name='" + name + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
