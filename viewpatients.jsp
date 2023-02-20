<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Doctor Appointment</title>
<meta name="keywords" content="" />
<meta name="description" content="" />

<link href="css/tooplate_style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/swfobject.js"></script>
<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />
<script type="text/javascript" src="js/jquery.min.js"></script>

</head>
<body>
    
   <%
       if (request.getParameter("msg") != null) {%>
       <script>alert('Approved');</script>
       <%}%>
       
       <%
       if (request.getParameter("m1") != null) {%>
       <script>alert('Rejected');</script>
       <%}%>

    <div id="tooplate_wrapper">
    <div id="tooplate_header">
    <div id="site_title">
    <br/><font size="6">Online Doctor Appointment</font>
    </div>

    <div id="tooplate_menu" class="ddsmoothmenu">
    <ul>
  <li><a href="adminhome.jsp">Home</a></li>
    <li><a href="viewdoctors.jsp">View Doctors</a></li>
    <li><a href="viewpatients.jsp" class="selected">View Patients</a></li>
    <li><a href="patientsreq.jsp">Patient's Req</a></li>
    <li><a href="doctorsreq.jsp">Doctors's Req</a></li>
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    <br style="clear: left" />
    </div>

    <div id="tooplate_main">

    <div id="tooplate_slider">

    <img src="images/slide.jpg" alt="" height="240" width="900" />

    </div>
    <div id="tooplate_content">
    
    

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    
       <%
        try {

    Connection co = null;
    co = databasecon.getconnection();
    String query1="select * from patient"; 
    Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);
      
    %>
    <center>
        <h2><font color="black" size="5"> View Patients </font></h2>
       
                    <table border="2" width="100%">

                        <tr style="background-color: #FC339D">
                            <th><font color="black">Patient Name</th>
                            <th><font color="black">Gender</th>
                            <th><font color="black">Mobile No</th>
                            <th><font color="black">E-Mail</th>
                            <th><font color="black">Address</th>
                            
                            
                        </tr>

                        <%                while (rs.next()) {
                        %>

        <tr>
        <th><font color="black"><%=rs.getString("username")%></th>
        <th><font color="black"><%=rs.getString("gendr")%></th>
        <th><font color="black"><%=rs.getString("mobile")%></th>
        <th><font color="black"><%=rs.getString("email")%></th>
        <th><font color="black"><%=rs.getString("address")%></th>
        </tr>
            <%
                }
                } catch (Exception e) {
                    e.printStackTrace();
                }

            %>
        </table>
    <br/><br/>
    </div>
    </div> 

    <div id="tooplate_footer">
    <p>Developed by: <a href="http://www.  .org/"><font color="orange">  </font></a></p>
    <div class="cleaner"></div>
    </div>
    </div> 
    </div> 

</body>
</html>