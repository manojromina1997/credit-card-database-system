

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="Problems")
public class Problems {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String username;
    private String emailid;
    private String message;

   Problems(String username, String emailid,String message) {
        this.id = id;
       this.username =username;
        this.emailid =emailid;
        this.message=message;
       

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

 

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

   
        Problems(){}
}