

import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class Application_customer {
        public static int register_customer(Customer obj)
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
 public static int Update(Customer obj)
 {
    int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="Update Customer set firstname= :firstname where id= :id";
    Query qu=se.createQuery(hql);
    qu.setParameter("id",obj.getId());
    se.update(obj);
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
   
}
  public static int Delete(Customer obj)
 {
 int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="delete from Customer where id= :id";
    Query qu=se.createQuery(hql);
    qu.setParameter("id",obj.getId());
    res=(Integer) qu.executeUpdate();
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
}
   public static List show(NewCustomer obj)
 {
  
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="from Customer";
    Query qu=se.createQuery(hql);
    List<NewCustomer> list=qu.list();
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return list;
}
    
}
