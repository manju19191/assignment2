package timetable;

import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;
 
@Component
public class TimeTableDao {
    // Injected database connection:
    @PersistenceContext private EntityManager em;
 
    // Stores a new guest:
    @Transactional
    public void persist(Session session) {
        em.persist(session);
    }
 
    // Retrieves all the guests:
    public List<Session> getAllTableTables() {
        TypedQuery<Session> query = em.createQuery(
            "SELECT g FROM Session g ORDER BY g.id", Session.class);
        return query.getResultList();
    }
}
