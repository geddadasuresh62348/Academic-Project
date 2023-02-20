<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    try{

    	
    	if(password.equals("' or '1'='1")){
    		
    		response.sendRedirect("patient.jsp?m2=Login_Failed");
    	    		
    	    	}	
    	    		
    	
    Connection co = null;
    co = databasecon.getconnection();
    String query1="select * from patient where username='"+username+"' and password='"+password+"'"; 
    Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);

    if(rs.next())
    {

    

    session.setAttribute("username",username);
   


    response.sendRedirect("patienthome.jsp?msg=success");
    }
    else 
    {
    response.sendRedirect("patient.jsp?m1=Login_Failed");
    %>

    <%
    }
    } catch (Exception e) {
    e.printStackTrace();
    }

    %>