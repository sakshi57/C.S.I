

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*,java.util.*" %>

<%
    	String name = request.getParameter("name");
        String col = request.getParameter("col");
	String event = request.getParameter("event");
String year = request.getParameter("year");
String mob = request.getParameter("mob");
String status = request.getParameter("status");
	
        

        

              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");
		
              Statement stmt = conn.createStatement();

              stmt.executeUpdate("insert into event_reg(name,college,event,year,status,mobile)values('"+name+"','"+col+"','"+event+"','"+year+"','"+status+"','"+mob+"')");
	try {
		out.println("Registered successfully for the Event!!! ");
		
		
		
         
 	}
	catch (Exception e)
	{
		e.printStackTrace();
	}

	
	

%>



<%@include file="index.html"%>

