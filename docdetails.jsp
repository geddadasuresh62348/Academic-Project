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
    <br/><h1>Online Doctor Appointment</h1>
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
    
<table width="547" border="1.5" align="center"  cellpadding="0" cellspacing="0"  >    

<%@page import="java.sql.*"%>
<%@page import="databaseconnection.databasecon"%>
<%@ page session="true" %>
    <%
				
       Connection connection = null;
       connection = databasecon.getconnection();
						String user= request.getParameter("doc");
						
						String s1,s2,s3,s4,s5;
						int i=0;
						try 
						{
						   	String query="select * from doctor where username='"+user+"'"; 
						   	Statement st=connection.createStatement();
						   	ResultSet rs=st.executeQuery(query);
					   		if ( rs.next() )
					   		{
							
								s1=rs.getString(5);
								s2=rs.getString("phone");
								s3=rs.getString("experience");
								s5=rs.getString("info");
								s4=rs.getString("category");
								
								
								
								
								
								
					%>
        
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>E-Mail</strong></div></td>
          <td  width="164" valign="middle" height="40" style="color:#000000;"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s1);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Mobile</strong></div></td>
          <td  width="164" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s2);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Experience</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s3);%>
          </div></td>
        </tr>
        <tr>
          <td  width="145" align="left" valign="middle" height="40" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Info</strong></div></td>
          <td  width="164" align="left" valign="middle" height="40"><div align="left" class="style23 style9 style10" style="margin-left:20px;">
            <%out.println(s5);%>
          </div></td>
        </tr>
        <tr>
          <td   width="145" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left" class="style3 style4 style14 style7 style15 style20 style8 style9" style="margin-left:20px;"><strong>Category</strong></div                        ></td>
          <td  width="164" align="left" valign="middle" height="51" style="color: #2c83b0;"><div align="left">
              <div align="left" class="style23 style9 style10" style="margin-left:20px;">
                <%out.println(s4);%>
              </div></td>
        </tr>
        <%
						}
						connection.close();
					}
					catch(Exception e)
					{
						out.println(e.getMessage());
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