
<%@ page import="java.sql.*,java.util.*"%>
<%

	String uname =request.getParameter("username"); 
	
	String pass =request.getParameter("pass");
        
        session.setAttribute("abc",uname);
 
	 Class.forName("com.mysql.jdbc.Driver").newInstance();

         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");

	Statement st= conn.createStatement(); 

	ResultSet rs=st.executeQuery("select * from login where username='"+uname+"' and password='"+pass+"'"); 

	try
	{
		rs.next();
		if(rs.getString("password").equals(pass)&&rs.getString("username").equals(uname)) 
		{ 
			out.println("Welcome " +uname); 
                        response.sendRedirect("profile/profile.jsp");
			
	
			
		} 
		
		
	}


	catch (Exception e)
	{
		out.println("Invalid password or username.");
		e.printStackTrace();
	}
%>
	
<%//@include file="/profile/profile.html" %> 