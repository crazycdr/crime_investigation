


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% 
String district=(request.getParameter("district"));
String date=(request.getParameter("date"));
String time=request.getParameter("time");
String type_info=(request.getParameter("type_info"));
String type_crime=request.getParameter("type_crime");
String Foreign=(request.getParameter("Foreign"));
String act=request.getParameter("act");
int fir_no=Integer.parseInt(request.getParameter("fir"));
String section=request.getParameter("section");
int ref_no=Integer.parseInt(request.getParameter("ref_no"));
String address=request.getParameter("address");
int pass_no=Integer.parseInt(request.getParameter("passport"));
int comp_no=Integer.parseInt(request.getParameter("comp_no"));
String police=request.getParameter("police");
String rec_time=request.getParameter("received_time");
String info_rec=request.getParameter("received_info");
String distance=request.getParameter("distance");
String country=request.getParameter("country");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into fir values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
		
ps.setString(1, district);
ps.setString(2, date);
ps.setString(3, time);
ps.setString (4, type_info);
ps.setString(5, type_crime);
ps.setString(6,Foreign);
ps.setString(7, act);
ps.setInt(8, fir_no);
ps.setString(9, section);
ps.setInt(10, ref_no);
ps.setString(11, address);
ps.setInt(12,pass_no);
ps.setInt(13,comp_no);
ps.setString(14, police);
ps.setString(15, rec_time);
ps.setString(16,info_rec);
ps.setString(17, distance);
ps.setString(18, country);		
int i=ps.executeUpdate();	
con.close();
ps.close();
		
		response.sendRedirect("./admin_home.jsp");
%>