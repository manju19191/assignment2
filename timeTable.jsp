<%@page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="timetable.*"%>

<jsp:useBean id="timetableDao" type="timetable.TimeTableDao"
	scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css">
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">

<html>
<head>
<title>Create Sessions</title>
</head>
<div align="right"><a href="/TimeTable"><button type ="button">Logout</button></a></div>
<h1>Create Sessions</h1>
<body>
	<form method="POST" action="timetable.html">
		<table border="0">
			<tr>
				<td>Lecturer Name:</td>
				<td><select name="lectddl">
						<option value="">Select Lecturer</option>
						<option value="Dr. Liew Pak San">Dr.Liew Pak San</option>
						<option value="Dr. Loh Poh Koh">Dr. Loh Poh Koh</option>
						<option value="Dr. Frankie Chia">Dr. Frankie Chia</option>
						<option value="Dr. Steven Wong">Dr. Steven Wong</option>
						<option value="Dr. Alvis Fong">Dr. Alvis Fong</option>
						<option value="Dr. Keoh Sye Loong">Dr. Keoh Sye Loong</option>
						<option value="Dr. Lee Hwee Hiong">Dr. Lee Hwee Hiong</option>
				</select></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td><input type="text" id="datepicker" name="date" /></td>
			</tr>
			<tr>
				<td>Time:</td>
					<td><select name="timeddl">
						<option value="">Select Time</option>
						<option value="0900">0900</option>
						<option value="1000">1000</option>
						<option value="1300">1300</option>
						<option value="1400">1400</option>
						
				</select></td>
			</tr>
			<tr>
				<td>Duration:</td>
				<td><select name="durationddl">
						<option value="">Select Duration</option>
						<option value="1 hour">1 hour</option>
						<option value="2 hour">2 hour</option>
						<option value="3 hour">3 hour</option>
				</select></td>
			<tr>
			<tr>
				<td>Venue:</td>
				<td><select name="venueddl">
						<option value="">Select Venue</option>
						<option value="E6">E6 Lab</option>
						<option value="E5">Lecture Hall E5 Level 3</option>

				</select></td>
			<tr>
				<td>Repeat Frequency:</td>
				<td><select name="repFreqddl">
						<option value="">Select Frequency</option>
						<option value="Weekly">Weekly</option>
						<option value="Monthly">Monthly</option>
				</select></td>
			<tr>
				<td>Max Attendance:</td>
				<td><select name="maxAttenddll">
						<option value="">Select Max Attendance</option>
						<option value="10">10</option>
						<option value="20">20</option>
						<option value="30">30</option>
						<option value="40">40</option>
						<option value="50">50</option>
						<option value="60">60</option>
				</select></td>
			<tr>
				<td>Compulsory:</td>
				<td><input type="radio" name="compl" value="Yes">Yes <input
					type="radio" name="compl" value="No">No</td>
			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Add" /></td>
			</tr>
		</table>
	</form>
	<br>
	<br>

	<hr>
	<ol>
		<% for (TimeTable TT : timetableDao.getAllTableTables()) { %>
		<li><%= TT %></li>
		<% } %>
	</ol>
	<hr>

	<iframe src="http://www.objectdb.com/pw.html?spring-eclipse"
		frameborder="0" scrolling="no" width="100%" height="30"> </iframe>
</body>


<script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
</html>
