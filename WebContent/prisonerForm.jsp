


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% 
int prisoner_no=Integer.parseInt(request.getParameter("Prisoner_No"));
int chargeno=Integer.parseInt(request.getParameter("Chargesheet_no"));
String nickname=request.getParameter("n_name");
String crime=request.getParameter("type_crime");
String mark=request.getParameter("Mark");
int height=Integer.parseInt(request.getParameter("height"));
int weight=Integer.parseInt(request.getParameter("weight"));
String color=request.getParameter("color");
String country=request.getParameter("country");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into prisoner values(?,?,?,?,?,?,?,?,?)");
		
ps.setInt(1, prisoner_no);
ps.setInt(2, chargeno);
ps.setString(3, nickname);
ps.setString(4, crime);
ps.setString(5, mark);
ps.setInt(6, height);
ps.setInt(7, weight);
ps.setString(8, color);
ps.setString(9, country);
int i=ps.executeUpdate();	
con.close();
ps.close();
		
		response.sendRedirect("./admin_home.jsp");
%>