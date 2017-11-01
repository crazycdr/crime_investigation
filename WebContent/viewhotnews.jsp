
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" src="file.js" language="javascript">
</script>
</head>
<body >

 <% 
 Class.forName("com.mysql.jdbc.Driver");
 Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
 String place=request.getParameter("place");
 String date=request.getParameter("Dated");
 String time=request.getParameter("matter");
 HttpSession hs=request.getSession();
 ResultSet resultset;
	
	PreparedStatement ps;

	ps=con.prepareStatement("select * from hotnewstemp" );
	 resultset=ps.executeQuery();
 if(!resultset.next()) {
     out.println("Sorry, could not find that publisher. ");
 }
 else{
	  
	 
	 %>
 <TABLE BORDER="1">
	  <tr>
	    <th >matter</th>
	    <th>date</th>
	    <th>place</th>
	  </tr>
  <% while (resultset.next()){ %>
  <TABLE BORDER="1">
<TR onclick='javascript:showRow(this)'>
    <TD > <%= resultset.getString(1) %> </TD>
    <TD > <%= resultset.getString(2) %> </TD>
    <TD > <%= resultset.getString(3) %> </TD>
     <TD ><a href="deleteUser.jsp">Delete</a></TD>
    <%//hs.setAttribute("matter",resultset.getString(1) ); %>
    <%//hs.setAttribute("place",resultset.getString(3) ); %>
    <%//hs.setAttribute("matter",resultset.getString(1) ); %>
   
</TR>

</TABLE>

<% 
}
%>
<% }%>

</body>
</html>