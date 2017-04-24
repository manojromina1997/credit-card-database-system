

import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class Application_transaction {
        public static int Register_transaction1(Transaction obj)
 {
    int a=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    a=(Integer)     se.save(obj);
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return a;
}
 public static int Update_transaction(Transaction obj)
 {
    int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="Update Transaction set username= :username where id= :id";
    Query qu=se.createQuery(hql);
    qu.setParameter("id",obj.getId());
    se.update(obj);
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
   
}
  public static int Delete_transaction1(Transaction obj)
 {
    int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="delete from Transaction where username= :username";
    Query qu=se.createQuery(hql);
    qu.setParameter("username",obj.getUsername());
    res=(Integer) qu.executeUpdate();
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
}

    
}
