<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    
    String password = request.getParameter("password");

    try{

if(password.equals("' or '1'='1")){
    		
	response.sendRedirect("doctor.jsp?m1=Login_Failed");
    		
    	}	
    	
    	
    	
    	
    Connection co = null;
    co = databasecon.getconnection();
    String query1="select * from doctor where username='"+username+"' and password='"+password+"'"; 
    Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);

    if(rs.next())
    {

   session.setAttribute("username",username);
   



    response.sendRedirect("doctorhome.jsp?msg=success");
    }
    else 
    {
    response.sendRedirect("doctor.jsp?m1=Login_Failed");
    %>

    <%
    }
    } catch (Exception e) {
    e.printStackTrace();
    }

    %>