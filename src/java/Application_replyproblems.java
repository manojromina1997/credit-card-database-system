
import java.util.List;
import org.hibernate.*;
import org.hibernate.cfg.*;
public class Application_replyproblems {
           public static int Register_Replyproblems(ReplyProblems obj)
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
