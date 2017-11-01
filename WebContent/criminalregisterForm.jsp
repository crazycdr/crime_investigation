


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% 
int criminal_no=Integer.parseInt(request.getParameter("criminal_no"));
String name=(request.getParameter("name"));
String nickname=request.getParameter("n_name");
int age=Integer.parseInt(request.getParameter("Age"));
String occupation=request.getParameter("occupation");
String crime=(request.getParameter("crime"));
String country=request.getParameter("country");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into criminal_registraton values(?,?,?,?,?,?,?)");
		
ps.setInt(1, criminal_no);
ps.setString(2, name);
ps.setString(3, nickname);
ps.setInt(4, age);
ps.setString(5, occupation);
ps.setString(6,crime);
ps.setString(7, country);
int i=ps.executeUpdate();	
con.close();
ps.close();
		
		response.sendRedirect("./admin_home.jsp");
%>