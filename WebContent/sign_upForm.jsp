
<%@page import="java.sql.*"%>

<% 
String name=request.getParameter("name");
String uname=request.getParameter("username");
String pswd=request.getParameter("password");
String repswd=request.getParameter("re-password");
String email=request.getParameter("email");
String address=request.getParameter("address");
String country=request.getParameter("country");
String secret_question=request.getParameter("secret question");
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
PreparedStatement ps=con.prepareStatement("insert into sign_up values(?,?,?,?,?,?,?,?)");

ps.setString(1, name);
ps.setString(2, uname);
ps.setString(3, pswd);
ps.setString(4, repswd);
ps.setString(5, email);
ps.setString(6, address);
ps.setString(7, country);
ps.setString(8, secret_question);		
		int i=ps.executeUpdate();
		con.close();
		ps.close();
		if(i!=0)
		out.println("Registration suceess");
		response.sendRedirect("./admin_home.jsp");
%>