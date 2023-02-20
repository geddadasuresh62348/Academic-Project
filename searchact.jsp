<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
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
  <li><a href="patienthome.jsp">Home</a></li>
    <li><a href="search.jsp" class="selected">Search</a></li>
    <li><a href="viewstatus.jsp">View Status</a></li>
     <li><a href="feedback.jsp">Feedback</a></li>
    
    
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
<center>
        <h2><font color="black" size="5"> Results </font></h2>
       
                    <table border="2" width="100%">

                        <tr style="background-color: #FC339D">
                            <th><font color="black">Doctor Name</th>
                            <th><font color="black">Category</th>
                            <th><font color="black">Mobile No</th>
                            <th><font color="black">Fees</th>
                            <th><font color="black">Timings</th>
                            <th><font color="black">E-Mail</th>
                            <th><font color="black">Location</th>
                            
                            <th><font color="black">Book</th>
                        </tr>
    
       <%
           
    String location = request.getParameter("location");
       String category = request.getParameter("category");
       String reason = request.getParameter("reason");
          String[] animalsArray = location.split(", ");
  

   int ii = animalsArray.length;
   
   System.out.println("arraysize"+ii);
   
   String a = null;
   String b = null;
   String[] vname  = new String[50];  
   String[] finaldata  = new String[50]; 
   int i=10;
    int j =0;
   
      Connection co = null;
    co = databasecon.getconnection();
    try{
       
  
     for( i=0;i<animalsArray.length;i++)
    {
       System.out.println("city"+animalsArray[i]);
           
      String query1="select * from doctor where location = '"+animalsArray[i]+"' and category = '"+category+"'"; 
      Statement st1=co.createStatement();
    ResultSet rs=st1.executeQuery(query1);
      
      while(rs.next())
      { 
            
               
   
      
    %>
    

                       

        <tr>
            <th><font color="black"><a href="docdetails.jsp?doc=<%=rs.getString("username")%>"><%=rs.getString("username")%></a></th>
        <th><font color="black"><%=rs.getString("category")%></th>
        <th><font color="black"><%=rs.getString("phone")%></th>
        <th><font color="black"><%=rs.getString("fees")%></th>
        <th><font color="black"><%=rs.getString("timings")%></th>
        <th><font color="black"><%=rs.getString("email")%></th>
        <th><font color="black"><%=rs.getString("location")%></th>
      
          <th><a href="searchact1.jsp?username=<%=rs.getString("username")%>&category=<%=rs.getString("category")%>&phone=<%=rs.getString("phone")%>&fees=<%=rs.getString("fees")%>&timings=<%=rs.getString("timings")%>&email=<%=rs.getString("email")%>&location=<%=rs.getString("location")%>&reason=<%=reason%>"><font size="2" color="#FC339D">Book</a></td>
        </tr>
            <%
                        }
      
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