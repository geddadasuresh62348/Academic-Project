<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
    String doctor = request.getParameter("username");
    String location = request.getParameter("location");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String category = request.getParameter("category");
    String reason = request.getParameter("reason");
    String patient =session.getAttribute("username").toString();
    String slot =request.getParameter("slot");

    String name = null;
    String useremail = null;
    Connection co = databasecon.getconnection();
      try{
          
          
          
          
          
          
          
    
    String query = "select * from bookings where patient='"+patient+"' and doctor='"+doctor+"' and reason='"+reason+"' and slot='"+slot+"'";
    Statement st = co.createStatement();
    ResultSet rs = st.executeQuery(query);
    
    if(rs.next())
    {
        
        response.sendRedirect("search.jsp?m3=Already Booked");
        
    }
  
    else{
    PreparedStatement ps=co.prepareStatement("insert into bookings values(?,?,?,?,?,?,?,?,?)");

    ps.setString(1,patient);
    ps.setString(2,doctor);                
    
    ps.setString(3,location);
    ps.setString(4,phone);
   
    ps.setString(5,email);
    ps.setString(6,category);
    
    ps.setString(7,"admin");
    ps.setString(8,reason);
     ps.setString(9,slot);
     
    
    int i=ps.executeUpdate();
    if(i>0)
    {
    response.sendRedirect("search.jsp?m2=success");
    }
    else{
    response.sendRedirect("search.jsp?m1=Failed");    
    }
    
    }
    %>
    <%
    }

    catch(Exception e)
    {
            out.println(e.getMessage());
    }
    %>