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
 String id = "id";
 String name = "";
 String studentNo = "";
 // Stores a new guest:
    @Transactional
    public void persist(TimeTable timetable) {
        em.persist(timetable);
        name = timetable.getRepFeq();
        
    }
    
    public void persist(Student student){
    	em.persist(student);
    	studentNo = student.getStudentNo();
    			
    }
 
    // Retrieves all the guests:
    public List<TimeTable> getAllTableTables() {
        TypedQuery<TimeTable> query = em.createQuery(
            "SELECT g FROM TimeTable g ORDER BY g."+id, TimeTable.class);
        return query.getResultList();
    }
    
  //Retrieves daily by repeatFreq
    public List<TimeTable> getDailySession(String date) {
    	  TypedQuery<TimeTable> query = em.createQuery(
    "SELECT g FROM TimeTable g WHERE g.signingDate ='"+date + "' ORDER BY g.id", TimeTable.class);
    	  return query.getResultList();
    }
    //Retrieves montly by repeatFreq
    public List<TimeTable> getMonthSession() {
    	  TypedQuery<TimeTable> query = em.createQuery(
    "SELECT g FROM TimeTable g WHERE g.repFeq = 'Monthly' ORDER BY g.id", TimeTable.class);
    	  return query.getResultList();
    }
    
  //Retrieves weekly by repeatFreq
    public List<TimeTable> getWeeklySession() {
    	  TypedQuery<TimeTable> query = em.createQuery(
    "SELECT g FROM TimeTable g WHERE g.repFeq = 'Weekly' ORDER BY g.id", TimeTable.class);
    	  return query.getResultList();
    }
  //retrieve particular course
    public List<TimeTable> getSpecificCourse(String courseName) {
        TypedQuery<TimeTable> query = em.createQuery(
            "SELECT g FROM TimeTable g WHERE g.courseName='"+courseName + "' ORDER BY g.id", TimeTable.class);
        return query.getResultList();
    }
    

    
}

