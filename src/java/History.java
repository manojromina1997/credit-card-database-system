

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="History")
public class History {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String username;
    private String date;
    private String detail;
    private String amount;
    private String balance;


   History(String username,String date,String detail, String amount, String balance) {
        this.id = id;
        this.username = username;
        this.date=date;
        this.detail=detail;
        this.amount = amount;
        this.balance = balance;
        

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

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount;
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance;
    }

        History(){}
}