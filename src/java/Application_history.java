

import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class Application_history {
        public static int register_history(History obj)
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
 public static int Update_history(History obj)
 {
    int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="Update History set username= :username where id= :id";
    Query qu=se.createQuery(hql);
    qu.setParameter("id",obj.getId());
    se.update(obj);
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
   
}
  public static int Delete_history(History obj)
 {
     int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="delete from History where username= :username";
    Query qu=se.createQuery(hql);
    qu.setParameter("username",obj.getUsername());
    res=(Integer) qu.executeUpdate();
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
}

    
}
