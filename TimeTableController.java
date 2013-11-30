package timetable;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class TimeTableController {
 
	@Autowired
    private TimeTableDao timetableDao;
    
    @RequestMapping(value="/session")
    public ModelAndView TimeTable(HttpServletRequest request) {
        // Handle a new guest (if any):
        String name = request.getParameter("lectddl");
        String signingDate = request.getParameter("date");
        String venue =  request.getParameter("venueddl"); 
        String time = request.getParameter("time"); 
        String repFeq  = request.getParameter("repFreqddl"); 
        String duration  = request.getParameter("durationddl"); 
        String maxAttend = request.getParameter("maxAttenddll") ;
        String compulsory  = request.getParameter("compl"); 
        if (name != null && signingDate != null && venue !=null && time !=null && repFeq !=null && duration !=null && maxAttend !=null && compulsory !=null)
        	timetableDao.persist(new Session(name, signingDate, venue, time, repFeq, maxAttend, compulsory, duration));
       
        // Prepare the result view (guest.jsp):
        return new ModelAndView("timeTable.jsp", "timetableDao", timetableDao);
    }
}



