 <%@page contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="guest.*"%>
 
<jsp:useBean id="guestDao" type="guest.GuestDao" scope="request" />
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
 
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" href="style.css" type="text/css" media="screen" />
</head>
<body>
<div id="wrapper">
  <div id="header">
    <div id="logo"><strong>TEAM CSR</strong><strong><img src="WEB-INF/snail-green-orange.png" alt="" width="64" height="59" /></strong></div>
    <div id="nav-box">
      <div id="toll">CONTACT US : 90093658</div>
      <div id="nav">
        <div id="nav-bg">
          <ul>
            <li><a href="home.html">Home</a></li>
            <li><a href="about.html">About Us</a></li>
            <li><a href="contact.html">Contact Us</a></li>
          </ul>
        </div>
        <div id="left-nav"></div>
      </div>
    </div>
  </div>
  <div id="content">
    <div id="products">
      <div class="small-box">
        <h3 class="title">&nbsp;</h3>
        <br />
        <div class="product-details">
          <p>&nbsp;</p>
        </div>
      </div>
      <div class="line"></div>
      <div class="small-box">
        <h3 class="title">ABOUT US<a href="admin.html"></a><br />
        </h3><div class="product-details"><br />
          <p>HI , THIS IS A WEBSITE BY TEAM CSR .</p>
          <p>OUR GROUP MEMBERS ARE :</p>
          <p>FAN JIAXIONG </p>
          <p>CHEK YI KAI</p>
          <p>VERONICA </p>
          <p>JASMINE HU</p>
          <p>SHINY <br />
          </p>
        </div>
      </div>
      <div class="line"></div>
      <div class="small-box">
        <h3 class="title"><br />
        </h3>
        <div class="product-details"><br />
          <p>&nbsp;</p>
        </div>
      </div>
    </div>
    <div id="details">
      <div id="box-2">
        <p id="welcome-text">&nbsp;</p>
      </div>
      <div class="clearboth"></div>
    </div>
  </div>
  <div id="footer">COPYRIGHTED TEAM CSR</div>
</div>
<div align=center></div>


      <hr><ol> 
        <% for (Guest guest : guestDao.getAllGuests()) { %>
            <li> <%= guest %> </li>
        <% } %>
        </ol><hr>
 
        <iframe src="http://www.objectdb.com/pw.html?spring-eclipse"
            frameborder="0" scrolling="no" width="100%" height="30"> </iframe>
     </body>

</html>
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
       <!--   <title>Create Sessions</title>
    </head>
 	<h1>Create Sessions</h1>
    <body>
		<form method="POST" action="session.html"> 
		<table border="0">
		<tr>
		<td>Lecturer Name:</td>
		<td><input type="text" name="name" /></td>
		</tr>
		<tr>
		<td>Date: </td>
		<td><input type="text" name="date" /></td>
		</tr>
		<tr>
		<td> Time: </td>
		<td><input type="text" name="time" /></td>
		</tr>
		<tr>
		<td>Duration:</td>
		<td><input type="text" name="duration" /></td>
		</tr>
		<tr>
		<td>Repeat Frequency: </td>
		<td><input type="text" name="freq" /></td>
		</tr>
		<tr>
		<td>Max Attendance:</td>
		<td><input type="text" name="max" /></td>
		</tr>
		<tr>
		<td>Compulsory: </td>
		<td><input type="radio"  name="compl" value="Yes">Yes   <input type="radio"  name="compl" value="No">No</td>
		</tr>
		</table>
		</tr>
		<tr>
		<td>   </td>
		<td> <input type="submit" value="Add" /></td>
		</tr>
  		</form>

 -->
  