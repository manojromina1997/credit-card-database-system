

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="Offers")
public class Offers {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String username;
    private String detail;

   Offers(String username,String detail) {
        this.id = id;
        this.username = username;
        this.detail=detail;
        
        

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

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

        Offers(){}
        
}