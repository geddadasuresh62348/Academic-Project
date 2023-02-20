<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");
    String email = request.getParameter("email");
    String dob = request.getParameter("dob"); 
    String gender = request.getParameter("gender");
    String mobile = request.getParameter("mobile");
   
    String address = request.getParameter("address");
    
    
    try{
    Connection co = null;
    co = databasecon.getconnection();
    PreparedStatement ps=co.prepareStatement("insert into patient values(?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,email);
    ps.setString(4,dob);
    ps.setString(5,gender);
    ps.setString(6,mobile);
   
    ps.setString(7,address);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("patient.jsp?msg=success");
    }
    else{
    response.sendRedirect("patientreg.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>