package guest;


import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
 
@Controller
public class GuestController {
 
    @Autowired
    private GuestDao guestDao;
 
    @RequestMapping(value="/session")
    public ModelAndView guestbook(HttpServletRequest request) {
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
            guestDao.persist(new Guest(name, signingDate, venue, time, repFeq, maxAttend, compulsory, duration));
       
        // Prepare the result view (guest.jsp):
        return new ModelAndView("guest.jsp", "guestDao", guestDao);
    }
}