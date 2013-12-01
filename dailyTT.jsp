<%@page contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="timetable.*"%>

<jsp:useBean id="timetableDao" type="timetable.TimeTableDao"
	scope="request" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Weekly TimeTable</title>
<center><h1>Today's TimeTable</h1></center>
    <style type="text/css">
    body
    {
        font-family: arial;
    }

    th,td
    {
        margin: 0;
        text-align: center;
        border-collapse: collapse;
        outline: 1px solid #e3e3e3;
    }

    td
    {
        padding: 5px 10px;
    }

    th
    {
        background: #666;
        color: white;
        padding: 5px 10px;
    }

    td:hover
    {
        cursor: pointer;
        background: #666;
        color: white;
    }
    </style>

</head>
<body>
	<a href="viewTimeTable.html">Back</a>
    <table width="80%" align="center" >
    <div id="head_nav">
    <tr>
        <th>Lecturer Name</th>
        <th>Session</th>
        <th>Date</th>
        <th>Time</th>
        <th>Venue</th>
       
    </tr>
</div>  

    <tr>
        <th>Dr Liew Pak San</th>
        
            <td>PSD</td>
            <td>2 December 2013</td>
            <td>9.00 - 12.00</td>
            <td>E5 Lecture Hall Level 3</td>
           
           
        </div>
    </tr>

    <tr>
        <th>Dr Liew Pak San</td>
        
            <td>PSD</td>
            <td>2 December 2013</td>
            <td>1300 - 1500</td>
            <td>E6 Lab</td>
        </div>
    </tr>
</table>
</body>
</html>
