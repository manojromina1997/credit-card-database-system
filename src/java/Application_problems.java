
import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class Application_problems {
           public static int Register_Problems(Problems obj)
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
                public static int Register_Problems1(Problems obj)
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
 public static int Delete_Problems(Problems obj)
 {
    int res=0;
    AnnotationConfiguration cfg= new AnnotationConfiguration();
    cfg.configure("hibernate.cfg.xml");
    SessionFactory sf=cfg.buildSessionFactory();
    Session se=sf.openSession();
    String hql="delete from Problems where username= :username";
    Query qu=se.createQuery(hql);
    qu.setParameter("username",obj.getUsername());
    res=(Integer) qu.executeUpdate();
    se.beginTransaction().commit();
    se.close();
    sf.close();
    return res;
}

}
