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
<center><h1>Semester 1 TimeTable (September - December 2013)</h1></center>
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
        <th>Time</th>
        <th>Monday</th>
        <th>Tuesday</th>
        <th>Wednesday</th>
        <th>Thursday</th>
        <th>Friday</th>
       
    </tr>
</div>  

    <tr>
        <th>09:00 - 10:00</th>
        
            <td>PSD</td>
            <td>ALG3</td>
            <td>AP3</td>
            <td>IS3</td>
            <td></td>
           
        </div>
    </tr>

    <tr>
        <th>10:00 - 11:00</td>
        
            <td>PSD</td>
            <td>ALG3</td>
            <td>AP3</td>
            <td>IS3</td>
            <td>PL3</td>
        </div>
    </tr>

    <tr>
        <th>11:00 - 12:00</td>
        
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td>PL3</td>

        </div>
    </tr>

    <tr>
        <th>12:00 - 13:00</td>
        
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
        </div>
    </tr>

    <tr>
        <th>13:00 - 14:00</td>
        
            <td>PSD</td>
            <td>ALG3</td>
            <td>AP3</td>
            <td>IS3</td>
            <td></td>
        </div>
    </tr>
    
    <tr>
        <th>14:00 - 15:00</td>
        
            <td>PSD</td>
            <td>ALG3</td>
            <td>AP3</td>
            <td>IS3</td>
            <td>PL3</td>
        </div>
    </tr>
</table>
</body>
</html>
