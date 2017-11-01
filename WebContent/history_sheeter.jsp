<<<html>
<head>
<title>
History Sheet
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
<font color=red size="7">History sheet</font>
<form action="index.html" method="post">
<table>
<tr><td height="80px">Prisoner No:</td><td><input type="number" name="Prisoner_No"/></td></tr>
<tr><td height="80px">Date of occurence </td><td><input type="date" name="date"/></td></tr>
<tr><td height="80px">Place of occurence: </td><td><input type="text" name="place"/></td></tr>
<tr><td height="80px">Type of crime: </td><td><input type="text" name="type_crime"/></td></tr>
<tr><td height="80px">Brief description of case:</td><td><textarea id=myDiv rows="4" cols="50"></textarea></td></tr>
<tr><td height="80px">Country:</td><td>
<select name="country" style="width:150px" >
<option>Select Country</option>
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>

<tr><td colspan="1"><input type="submit" value="Save"/></td><td ><input type="submit" value="cancel"/></td></tr>
</table>
</form>
</div>

</body>
</html>