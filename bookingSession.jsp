<%@page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="timetable.*"%>
<%@page import="java.util.ArrayList" %>

<jsp:useBean id="timetableDao" type="timetable.TimeTableDao"
	scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book Session</title>
<h1>Book Session</h1>
</head>
<body>
<% String name = request.getParameter( "userName" );
	session.setAttribute( "theName", name );	%>
	
	<a href="bookingSession.html">Book Sessions</a> <a href="viewTimeTable.html">View Sessions</a>   <a href="/TimeTable">Logout</a> 
	
	
	<form method="POST" action="bookingSession.html">
	<table border="1" >  
      <tr>
      <th>Lecturer Name</th>
      <th>CourseName</th>
      <th>Date</th>
      <th>Duration</th>
      <th>Venue</th>
      <th>Compulsory</th>
      <th>    </th>
      </tr>  
      
      <% 
		for (TimeTable TT : timetableDao.getAllTableTables()) { %>
		<% String course = TT.getCourseName(); 
		   String userName = TT.getName();
		   
		%>
		<tr><%="<td>" + TT.getName() + "</td>  <td>"+ TT.getCourseName()  + "</td>   <td>"  + TT.getSigningDate() + "</td>   <td>"+ TT.getDuration() + "</td>   <td>" + TT.getVenue() +  "</td>   <td>" + TT.getCompulsory() + "</td>  "%><td><input name="course" value="<%=TT.getSigningDate() %>" type="radio"></td></tr>
		
		<% } %>      
   
	<td><input type="submit" value="Add Courses" name="action"/></td>	
	 </table>
 </form>
	
	<% 
	String action = request.getParameter("action");
	String c = request.getParameter("course");
	String co = "";
	String rep = "";
	String dur = "";
	String venue = "";
	String time = "";
	if ("Add Courses".equals(action)) {	
	Student s = new Student();
	%>
	<% 
	for (TimeTable TT : timetableDao.getAllTableTables()) { %>
	<% 
	if(TT.getSigningDate().equals(c)) {
		co = TT.getCourseName(); 
		rep = TT.getRepFeq();
		dur = TT.getDuration();
		venue = TT.getVenue();
		time = TT.getTime();
	
	}
	 %>
	<% } %>  
	
	<% 
	s.addStudent("13AGC019U", co, c, rep, time, dur, venue);
	out.println("Successfully Added!");
	}%>
	

	
</body>


</html>