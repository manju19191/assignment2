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
    public void persist(TimeTable timetable) {
        em.persist(timetable);
    }
 
    // Retrieves all the guests:
    public List<TimeTable> getAllTableTables() {
        TypedQuery<TimeTable> query = em.createQuery(
            "SELECT g FROM TimeTable g ORDER BY g.id", TimeTable.class);
        return query.getResultList();
    }
    
  //Retrieves daily by repeatFreq
    public List<TimeTable> getDailySession() {
    	  TypedQuery<TimeTable> query = em.createQuery(
    "SELECT g FROM TimeTable g WHERE g.signingDate ='12/02/2013' ORDER BY g.id", TimeTable.class);
    	  return query.getResultList();
    }
}

