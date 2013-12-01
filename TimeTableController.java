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

	@RequestMapping(value="/timetable")
	public ModelAndView TimeTable(HttpServletRequest request) {
		// Handle a new guest (if any):
		String name = request.getParameter("lectddl");
		String signingDate = request.getParameter("date");
		String venue =  request.getParameter("venueddl"); 
		String time = request.getParameter("timeddl"); 
		String repFeq  = request.getParameter("repFreqddl"); 
		String duration  = request.getParameter("durationddl"); 
		String maxAttend = request.getParameter("maxAttenddll") ;
		String compulsory  = request.getParameter("compl"); 
		if (name != null && signingDate != null && venue !=null && time !=null && repFeq !=null && duration !=null && maxAttend !=null && compulsory !=null)
			timetableDao.persist(new TimeTable(name, signingDate, venue, time, repFeq, maxAttend, compulsory, duration));

		// Prepare the result view (timeTable.jsp):
		return new ModelAndView("timeTable.jsp", "timetableDao", timetableDao);
	}

	@RequestMapping("viewTimeTable")
	public ModelAndView viewTimeTable(){
		return new ModelAndView("viewTimeTable.jsp", "timetableDao", timetableDao);
	}
	
	@RequestMapping("dailyTT")
	public ModelAndView viewdailyTT(){
		return new ModelAndView("dailyTT.jsp", "timetableDao", timetableDao);
	}
	
	@RequestMapping("montlyTT")
	public ModelAndView viewmonthlyTT(){
		return new ModelAndView("montlyTT.jsp", "timetableDao", timetableDao);
	}
	
	@RequestMapping("weeklyTT")
	public ModelAndView viewweeklyTT(){
		return new ModelAndView("weeklyTT.jsp", "timetableDao", timetableDao);
	}

}



