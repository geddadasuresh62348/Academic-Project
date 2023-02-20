<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String feedback = request.getParameter("feedback");
    String organizer = request.getParameter("organizer");

    String user = session.getAttribute("username").toString();
             Connection connection = null;
    connection = databasecon.getconnection();
    try{

    PreparedStatement ps=connection.prepareStatement("insert into feedback values(?,?,?)");

    ps.setString(1,user);
    ps.setString(2,organizer);                
    ps.setString(3,feedback);
   
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("feedback.jsp?m1=Success");
    }
    else{
    response.sendRedirect("feedback.jsp?m2=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>