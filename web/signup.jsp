

<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*,java.util.*" %>

<%
    	String name = request.getParameter("uname");
        String pass = request.getParameter("psw");
        String branch = request.getParameter("branch");
	String year = request.getParameter("year");
	String status = request.getParameter("desg");
	
        

        try {

              Class.forName("com.mysql.jdbc.Driver").newInstance();
              Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/niksh", "root", "harrypotter");
		System.out.println("Success!!!");

              Statement stmt = conn.createStatement();

              stmt.executeUpdate("insert into users(username,password,branch,year,status)values('"+name+"','"+pass+"','"+branch+"','"+year+"','"+status+"')");
	
		out.println("Registered new user successfully!!! ");
		
		
		
         
 	}
	catch (SQLException ex)
	{
		ex.printStackTrace();
	}

	
	

%>



<%@include file="index.html"%>

