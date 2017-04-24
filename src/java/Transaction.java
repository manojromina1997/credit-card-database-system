

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="Transaction")
public class Transaction {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String username;
    private String date;
    private String detail;
    private String location;
    private String amount;
    


   Transaction(String username,String date,String detail, String location, String amount, String balance) {
        this.id = id;
        this.username =username;
        this.date=date;
        this.detail =detail;
        this.location = location;
        this.amount = amount;
       
        

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

 

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

  

        Transaction(){}
}