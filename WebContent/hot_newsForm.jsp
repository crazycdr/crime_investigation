


<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<% 
String place=request.getParameter("place");
SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm-dd");
java.util.Date udate=sdf.parse(request.getParameter("Dated"));	
java.sql.Date sdate =new java.sql.Date(udate.getTime());
System.out.println(sdate);

String matter=request.getParameter("matter");
String country=request.getParameter("country");

Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into hotnewstemp values(?,?,?,?)");
		
ps.setString(1, place);
ps.setDate( 2, sdate);
//ps.setTime(3, );
ps.setString(3, matter);
ps.setString(4, country);
		
int i=ps.executeUpdate();	
con.close();
ps.close();
		
		response.sendRedirect("./admin_home.jsp");
%>