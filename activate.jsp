<%@page import="java.sql.*"%>
<%@page import="Mail.Mail"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

  <%

                       
    String patient = request.getParameter("patient");
    
    String reason = request.getParameter("reason");
    String doctor = request.getParameter("doctor");
     String email = null;
   
    String msg ="Your Booking has been Confirmed, Thank You for Booking";              
     
    Connection connection = null;
    connection = databasecon.getconnection();
    
    
    try {

    
     String query1="select * from patient where username='"+patient+"'"; 
    Statement st1=connection.createStatement();
    ResultSet rs1=st1.executeQuery(query1);     
 
    
    if(rs1.next())
    {
        
        email = rs1.getString("email");
        
    }
         
    Statement st=connection.createStatement();
    int j = st.executeUpdate("update bookings set status='booked' where patient='"+patient+"' and doctor = '"+doctor+"' and reason='"+reason+"' and status='finaladmin'");
    if(j!=0)
    {
        
    Mail t= new Mail();
    t.secretMail(msg, email, email);
          
    response.sendRedirect("adminhome.jsp?m1=success");
    }

    else {
         response.sendRedirect("adminhome.jsp?m2=failed");
    
    }
    } catch (Exception e) {
    e.printStackTrace();
    }

    %>