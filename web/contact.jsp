

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*,java.util.*" %>

<%
    	String name = request.getParameter("uname");
      
	String sub = request.getParameter("sub");
	
        String rate = request.getParameter("rate");

        try {

              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");

              Statement stmt = conn.createStatement();

              stmt.executeUpdate("insert into contact(username,subject,event_rating)values('"+name+"','"+sub+"','"+rate+"')");
	
		out.println("Accepted your feedback successfully!!! ");
		
		
		
         
 	}
	catch (SQLException ex)
	{
		ex.printStackTrace();
	}

	
	

%>



<%@include file="index.html"%>

