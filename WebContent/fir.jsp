
<html>
<head>
<title>
FIR
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
<font color=red size="7">FIR</font>
<form action="firForm.jsp" method="post">
<table>
<tr><td >District:</td><td><input type="text" name="district"/></td></tr>
<tr><td >Date  </td><td><input type="date" name="date"/></td></tr>
<tr><td >Time: </td><td><input type="time" name="time"/></td></tr>
<tr><td >Type of information: </td><td><input type="text" name="type_info"/></td></tr>
<tr><td >Place of occurence: </td><td><input type="text" name="type_crime"/></td></tr>
<tr><td >Foreign/Local: </td><td><input type="text" name="Foreign"/></td></tr>
<tr><td >Act: </td><td><input type="text" name="act"/></td></tr>
<tr><td >Fir No: </td><td><input type="number" name="fir"/></td></tr>
<tr><td >Section </td><td><input type="text" name="section"/></td></tr>
<tr><td >Genral Diary ref no. </td><td><input type="number" name="ref_no"/></td></tr>
<tr><td >Information address:</td><td><textarea id=myDiv rows="4" cols="50" name="address"></textarea></td></tr>
<tr><td >Passport No.: </td><td><input type="number" name="passport"/></td></tr>
<tr><td >Complaint No.: </td><td><input type="number" name="comp_no"/></td></tr>
<tr><td >Police: </td><td><input type="text" name="police"/></td></tr>
<tr><td >Received Time: </td><td><input type="time" name="received_time"/></td></tr>
<tr><td >Information Received: </td><td><input type="text" name="received_info"/></td></tr>
<tr><td >Distance from Police Station: </td><td><input type="text" name="distance"/></td></tr>

<tr><td >Country:</td><td>
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