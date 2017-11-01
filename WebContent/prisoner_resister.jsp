<html>
<head>
<title>
Prisoner register
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
<font color=red size="7">Prisoner Register</font>
<form action="prisonerForm.jsp" method="post">
<table>
<tr><td height="80px">Prisoner No:</td><td><input type="number" name="Prisoner_No"/></td></tr>
<tr><td height="80px">Chargesheet no: </td><td><input type="number" name="Chargesheet_no"/></td></tr>
<tr><td height="80px">Nickname: </td><td><input type="text" name="n_name"/></td></tr>
<tr><td height="80px">Type of crime: </td><td><input type="text" name="type_crime"/></td></tr>
<tr><td height="80px">Identification marks: </td><td><input type="text" name="Mark"/></td></tr>
<tr><td height="80px">Height : </td><td><input type="number" name="height" title="height in inch"/></td></tr>
<tr><td height="80px">Weight : </td><td><input type="number" name="weight" title="weight in k.g."/></td></tr>
<tr><td height="80px">Color : </td><td><input type="text" name="color"/></td></tr>
<tr><td height="80px">Country:</td><td>
<select name="country" style="width:150px" >
<option>Select Country</option>
<option>India</option>
<option>USA</option>
<option>UK</option>
<option>Other</option>
</select>

<tr><td colspan="1"><input type="submit" value="Save"/></td></tr>
</table>
</form>
</div>

</body>
</html>