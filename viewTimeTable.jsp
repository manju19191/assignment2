<%@page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="timetable.*"%>

<jsp:useBean id="timetableDao" type="timetable.TimeTableDao"
	scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<title>View TimeTable</title>
</head>
<body>
	<h1>Timetable - Semester 1</h1>
	
	
	<% 
	if ("Daily".equals(request.getParameter("viewddl"))){ %>
	<jsp:forward page="/dailyTT.html" />
	<% } %>
	
	<% if ("Weekly".equals(request.getParameter("viewddl"))){ %>
	<jsp:forward page="/weeklyTT.html" />
	<% } %>
	
	<% if ("Monthly".equals(request.getParameter("viewddl"))){ %>
	<jsp:forward page="/montlyTT.html" />
	<% } %>
	
	<form method="POST" action="viewTimeTable.html">
		<table border="0">
			<tr>
				<td>View By:</td>
				<td><select name="viewddl">
						<option value="">-- Select --</option>
						<option value="Daily">Daily</option>
						<option value="Weekly">Weekly</option>
						<option value="Monthly">Monthly</option>
				</select></td>
				<td><input type="submit" value="Submit" /> </td>
				<td><div align="right"><a href="bookingSession.html"><button type ="button">Book Session</button></a></div></td>
				<td><div align="right"><a href="/TimeTable"><button type ="button">Logout</button></a></div></td>
			</tr>
		</table>
	</form>
<% 
if(request.getParameter("viewddl") == " ") {
%>
 Please choose an option! 
<%
}
%>
	
	
</body>
</html>

