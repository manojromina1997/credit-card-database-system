

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="User")
public class User {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String username;
    private String oldpassword;
    private String newpassword;
 

   User(String username, String oldpassword,String newpassword) {
        this.id = id;
        this.username = username;
        this.oldpassword =oldpassword;
        this.newpassword = newpassword;

        

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

    public String getOldpassword() {
        return oldpassword;
    }

    public void setOldpassword(String oldpassword) {
        this.oldpassword = oldpassword;
    }

    public String getNewpassword() {
        return newpassword;
    }

    public void setNewpassword(String newpassword) {
        this.newpassword = newpassword;
    }


    
        User(){}
}