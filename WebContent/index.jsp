<!DOCTYPE html>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.awt.event.WindowAdapter"%>
<%@page import="java.awt.Window"%>
<%@page import="java.sql.*"%>
  
<html>
<head>
<title>Crime free india</title>
<link rel="stylesheet" href="project.css" type="text/css">
</head>
<body style="background-color:black">

<div class=signin>
<form action="" method="post" >
<table align="right">

<tr><td><font color="red">Name:</font></td><td><input type="text" name="name" /></td></tr>
<tr><td><font color="red">Password:</font></td><td><input type="password" name="password"/></td></tr>
<tr><td colspan="2"><input type="submit" value="login"/></td></tr>

</table>

<%
String name=request.getParameter("name");
String pswd=request.getParameter("password");
ResultSet rs;
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
Statement stmt=con.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
rs=stmt.executeQuery("select * from sign_up");
	
while(rs.next())
{
	String password2=rs.getString(3);
String name2=rs.getString(1);
if((name2.equals(name)) && (password2.equals(pswd)))
{
	response.sendRedirect("./admin_home.jsp");
			
}


}

%>


</form>
</div>

<div class="try">
<ul>

  <li><a class="active" style="margin-left:300px;" href="#home">Home<span class="arrow">&#9660</span></a></li>
  
  <li><a href="#news">News<span class="arrow">&#9660</span></a></li>

  <li class="dropdown">
    <a href="#" class="dropbtn">Dropdown<span class="arrow">&#9660</span></a>
    <div id="dropdown-content">
      <a href="#" >Link 1</a>
      <a href="#">Link 2</a>
      <a href="#">Link 3</a>
    </div>
  </li>

</ul>
</div>
<div class=absolute>
<font size ="5">not register??</font>
</div>
<div class=relative>
<font size="5"><a href="./sign_up.jsp" target="_blank" align="bottom" >SignUp here</a></font>
</div>
</body>
</html>
