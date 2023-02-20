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
    <script>alert('User Registered Successfully');</script>
     if (request.getParameter("m2") != null) {%>
    <script>alert('SQL Injection');</script>
    <%}%>
    

    <div id="tooplate_wrapper">
    <div id="tooplate_header">
    <div id="site_title">
    <br/><font size="6">Online Doctor Appointment</font>
    </div>

    <div id="tooplate_menu" class="ddsmoothmenu">
    <ul>
    <li><a href="patienthome.jsp">Home</a></li>
    <li><a href="search.jsp">Search</a></li>
    <li><a href="viewstatus.jsp">View Status</a></li>
        <li><a href="feedback.jsp" class="selected">Feedback</a></li>
    
    <li><a href="logout.jsp">Logout</a></li>
    </ul>
    <br style="clear: left" />
    </div>

    <div id="tooplate_main">

    <div id="tooplate_slider">

    <img src="images/slide.jpg" alt="" height="240" width="900" />

    </div>
        <%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>

<%
String user = session.getAttribute("username").toString();
Connection co = null;
co = databasecon.getconnection();

try{

 String query="select distinct doctor from bookings where patient = '"+user+"' and status = 'booked' ";
  
      Statement st=co.createStatement();
      ResultSet rs=st.executeQuery(query);


%>
    <div id="tooplate_content">
    
    <center><p><font color="black" size="5"> Feedback</font></p></center><br/>


     
    <form action="feedbackact.jsp" method="post">
    <center><table>
            
            <tr>
                <td><font color="black">Select Doctor</td>
                <td>   <select name="organizer" required>
                    
                    <%
                    while(rs.next())
                    {
                    %>
                    <option><%=rs.getString("doctor")%></option>
                    
                    <%}%>
                </td>         
                    
                </select>
                
                
            </tr>        
            

                <tr><td><font color="black">Feedback :</td><td><textarea rows="3" cols="20" name="feedback" required="" ></textarea></td></tr>
    
    
    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="Submit" /></td></tr>
    <tr></tr>      
    </table>

    </form>
    

<%


} catch (Exception e) {
            e.printStackTrace();
        }


%>
    
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