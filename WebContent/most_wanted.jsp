<!Doctype html>
<html>
<head>
<title>
Most Wanted
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
<font color=red size="7">MOST WANTED</font>
<form action="mostWantedForm.jsp" method="post">
<table>
<tr><td width="100px" height="80px">Name:</td><td><input type="text" name="name"/></td></tr></br>
<tr><td width="100px" height="80px">Age:</td><td><input type="number" name="age"/></td></tr></br>
<tr><td height="80px">Hair:</td><td><input type="text" name="hair"/></td></tr>
<tr><td height="80px">Complexion:</td><td><input type="text" name="complexion"/></td></tr>
<tr><td height="80px">Type of Crime</td><td><input type="text" name="crime"/></td></tr>
<tr><td height="80px">Address:</td><td><textarea id=myDiv rows="4" cols="50" name="address"></textarea></td></tr>
<tr><td height="80px">Country:</td><td>
<select name="country" style="width:150px" >
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>

<tr><td colspan="2"><input type="submit" value="Submit"/></td></tr>
</table>
</form>
</div>

</body>
</html>