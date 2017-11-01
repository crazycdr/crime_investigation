<!Doctype html>
<html>
<html>
<head>
<title>
Missing persons
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
<font color=red size="7">Missing Person</font>
<form action="index.html" method="post">
<table>
<tr><td width="100px" height="80px">FIR NO:</td><td><input type="number" name="fir"/></td></tr></br>
<tr><td width="100px" height="80px">District:</td><td><input type="text" name="District"/></td></tr></br>
<tr><td height="80px">Place:</td><td><input type="text" name="place"/></td></tr>
<tr><td height="80px">Date of missing:</td><td><input type="date" name="Date"/></td></tr>
<tr><td height="80px">Time of missing</td><td><input type="time" name="Time"/></td></tr>
<tr><td height="80px">Date of Report</td><td><input type="date" name="Time"/></td></tr>
<tr><td height="80px">Address:</td><td><textarea id=myDiv rows="4" cols="50"></textarea></td></tr>
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