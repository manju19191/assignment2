<%@page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="timetable.*"%>

<jsp:useBean id="timetableDao" type="timetable.TimeTableDao"
	scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Monthly</title>
<center><h1> Monthly</h1></center>

</head>
<body>
	<a href="viewTimeTable.html">Back</a>   <a href="/TimeTable">Logout</a> 

	<table border="1" >  
      <tr>
      <th>Course Name</th>
      <th>Date</th>
      <th>Time</th>
      <th>Duration</th>
      <th>Venue </th>
      </tr>  
      
          <% 
  	Student s = new Student();
		for (Student ss: s.getStudents()) { %>
		<% if(ss.getStudentNo().equals("13AGC019U") && ss.getRepFreq().equals("Monthly")) { %>
		<tr><%="<td>" +  ss.getCourseName() + "</td>   <td>" + ss.getDate() +  "</td>    <td>"+  ss.getTime() + "</td>   <td>" + ss.getDuration()+  "</td>  <td>" + ss.getVenue() + "</td>"%></tr>
		
		<% } } %>      
 </table>
</body>
</html>
