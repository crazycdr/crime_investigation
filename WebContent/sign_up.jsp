<%@page import="java.sql.*"%>

<html>
<head>
<title>
sign up
</title>
<link rel="stylesheet" href="project.css" type="text/css">
</head>
<body style="background-image:url('stock-photo-blood.JPG')">
<div class=search>
<form>
 <input type="text" name="search" placeholder="Search..">
</form>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");

PreparedStatement ps=   con.prepareStatement("select * from sign_up");
ResultSet rs=ps.executeQuery();
%>
</div>
<div class=sign_up>
<font color=red size="7">ADMIN REGISTRATION</font>
<form action="./sign_upForm.jsp" method="post">
<table>
<tr><td width="100px" height="80px">Name:</td><td><input type="text" name="name"/></td></tr></br>
<tr><td width="100px" height="80px">User Name:</td><td><input type="text" name="username"/></td></tr></br>
<tr><td height="80px">Password:</td><td><input type="password" name="password"/></td></tr>
<tr><td height="80px">Re-Password:</td><td><input type="password" name="re-password"/></td></tr>
<tr><td height="80px">Email:</td><td><input type="email" name="email"/></td></tr>
<tr><td height="80px">Address:</td><td><textarea id=myDiv rows="4" cols="50" name="address"></textarea></td></tr>
<tr><td height="80px">Country:</td><td>
<select name="country" style="width:150px" >
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>
<tr><td height="80px">Secret Question</td><td>
<select name="secret question" style="width:150px">
<option>whats your nick name</option>
</select>
</td></tr>
<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>



</body>
</html>