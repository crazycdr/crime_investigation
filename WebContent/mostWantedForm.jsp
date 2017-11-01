


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% 
String place=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
String hair=request.getParameter("hair");
String complexion=request.getParameter("complexion");
String crime=request.getParameter("crime");
String address=request.getParameter("address");
String country=request.getParameter("country");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into most_wanted values(?,?,?,?,?,?,?)");
		
ps.setString(1, place);
ps.setInt(2, age);
ps.setString(3, hair);
ps.setString(4, complexion);
ps.setString(5, crime);
ps.setString(6, address);
ps.setString(7, country);
int i=ps.executeUpdate();	
con.close();
ps.close();
		
		response.sendRedirect("./admin_home.jsp");
%>