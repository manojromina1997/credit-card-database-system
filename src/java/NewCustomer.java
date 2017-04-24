

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.*;

@Entity
@Table(name="NewCustomer")
public class NewCustomer {
   @Id@GeneratedValue
  @Column(name="id")
             
    private int id;
    private String firstname;
    private String lastname;
    private String dob;
    private String address;
    private String city;
    private String occupation;
      private String qualification;
     private String annualincome;
 private String creditcard;
    private String emailid;
    private String mobile;

   NewCustomer(String firstname, String lastname,String dob,String address, String city, String occupation, String qualification,String annualincome,String creditcard, String emailid,String mobile) {
        this.id = id;
        this.firstname = firstname;
        this.lastname = lastname;
        this.address=address;
        this.city = city;
        this.occupation = occupation;
        this.qualification = qualification;
        this.annualincome = annualincome;
        this.creditcard = creditcard;
        this.emailid = emailid;
        this.mobile=mobile;
        

    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getAnnualincome() {
        return annualincome;
    }

    public void setAnnualincome(String annualincome) {
        this.annualincome = annualincome;
    }

    public String getCreditcard() {
        return creditcard;
    }

    public void setCreditcard(String creditcard) {
        this.creditcard = creditcard;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    
        NewCustomer(){}
}