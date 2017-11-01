

<%@page import="java.sql.*"%>

<html>
<head>
<title>
Hot News
</title>
<link rel="stylesheet" href="project.css" type="text/css">
</head>
<body style="background-image:url('stock-photo-blood.JPG')">
<div class=search>
<form>
 <input type="text" name="search" placeholder="Search..">
</form>
</div>
<div class=sign_up>
<font color=red size="7">Hot News</font>
<form action="hot_newsForm.jsp" method="post">
<table>
<tr><td height="80px">Place:</td><td><input type="text" name="place"/></td></tr>
<tr><td height="80px">Date:</td><td><input type="date" name="Dated"/></td></tr>
<tr><td height="80px">Time: </td><td><input type="time" name="Time"/></td></tr>
<tr><td height="80px">Matter:</td><td><textarea id=myDiv rows="4" cols="50" name="matter"></textarea></td></tr>
<tr><td height="80px">Country:</td><td>
<select name="country" style="width:150px" >
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>

<tr><td colspan="1"><input type="submit" value="Submit"/></td><td><input type="submit" value="Cancel"/></td></tr>
</table>
</form>
</div>




</body>
</html>