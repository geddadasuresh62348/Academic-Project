<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%

   
   
    String patient = request.getParameter("patient");
    String doctor =request.getParameter("doctor");
   

    String name = null;
    String useremail = null;
      try{

    Connection co = null;
    co = databasecon.getconnection();

    PreparedStatement ps=co.prepareStatement("update bookings set status='doctor' where patient='"+patient+"' and doctor='"+doctor+"' and status = 'admin'");

   
     
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("patientsreq.jsp?m1=success");
    }
    else{
    response.sendRedirect("patientsreq.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>