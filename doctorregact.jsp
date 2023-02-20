<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    
    String username = request.getParameter("username"); 
    String password = request.getParameter("password");
    String location = request.getParameter("location");
     String gender = request.getParameter("gender");
    String email = request.getParameter("email");
    String category = request.getParameter("category");
    String timings = request.getParameter("timings");
    String fees = request.getParameter("fees"); 
   
    String mobile = request.getParameter("mobile");
      String info = request.getParameter("info");
        String exp = request.getParameter("exp");
   
    
    
    
    try{
    Connection co = null;
    co = databasecon.getconnection();
    PreparedStatement ps=co.prepareStatement("insert into doctor values(?,?,?,?,?,?,?,?,?,?,?)");

    ps.setString(1,username);
    ps.setString(2,password);
    ps.setString(3,location);
    ps.setString(4,gender);
    ps.setString(5,email);
    ps.setString(6,category);   
    ps.setString(7,timings);
    ps.setString(8,fees);
    ps.setString(9,mobile);
    ps.setString(10,info);
    ps.setString(11,exp);
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("doctor.jsp?msg=success");
    }
    else{
    response.sendRedirect("doctorreg.jsp?m1=Failed");    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>