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
 
    @RequestMapping(value="/guest")
    public ModelAndView guestbook(HttpServletRequest request) {
        // Handle a new guest (if any):
        String name = request.getParameter("name");
        String signingDate = request.getParameter("date");
        String venue =  request.getParameter("venue"); 
        String time = request.getParameter("time"); 
        String repFeq  = request.getParameter("freq"); 
        String duration  = request.getParameter("duration"); 
        //int maxAttend = Integer.parseInt(request.getParameter("max")) ;
        String compulsory  = request.getParameter("compl"); 
        if (name != null)
            guestDao.persist(new Guest(name, signingDate, venue, time, repFeq, 3, compulsory, duration));
 
        // Prepare the result view (guest.jsp):
        return new ModelAndView("guest.jsp", "guestDao", guestDao);
    }
}