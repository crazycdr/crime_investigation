<%@page import="java.sql.*"%>
<% 
Class.forName("com.mysql.jdbc.Driver");
Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/try","root","mysql");
ResultSet resultset;
	
	PreparedStatement ps;
HttpSession hs=request.getSession();
			String matter=(String)hs.getAttribute("matter");
		String place=(String)hs.getAttribute("place");
		System.out.println(matter+place);
//	ps=con.prepareStatement("delete from hotnewstemp " );
	// resultset=ps.executeQuery();
	 %>
	 <script>
	 myfunction()
	 {
		 var a[i];
		 for(i=0;i<3;i++)
			 {
			 a[i]=
			 }
	 }
	 </script>