import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class addreplyproblem {

    public static int reply(ReplyProblems obj)
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
 
    
}
    
