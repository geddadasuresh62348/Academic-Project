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
<%
    if (request.getParameter("m3") != null) {%>
    <script>alert('User Already Exist');</script>
    <%}%>
<body>
    

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
        <%
        String doctor = request.getParameter("username");
    String location = request.getParameter("location");
    String phone = request.getParameter("phone");
    String email = request.getParameter("email");
    String category = request.getParameter("category");
    String reason = request.getParameter("reason");
    String patient =session.getAttribute("username").toString();
        
        %>
    <div id="tooplate_content">
      
    <p align="justify">
    <center><p><font color="black" size="5">Book</font></p></center><br/>
 
         <form name="myform" id="loginForm" action="book.jsp" method="get" >

    <center><table>
    <tr>
    <td width="191" height="43"><font color="black"> Doctor </td>
    <td width="218"><input name="username"  value="<%=doctor%>"required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Location </td>
    <td width="218"><input  name="location" required="" value="<%=location%>"/></td>
    </tr>
    
    <tr>
    <td height="43"><font color="black">Mobile </td>
    <td><input name="phone" required="" value="<%=phone%>"/></td>
    </tr>
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" required="" value="<%=email%>"/></td>
    </tr>

    <tr>
    <td height="43"><font color="black">Reason</td>
    <td><input value="<%=reason%>" name="reason" required="" ></td></label>
    </td>
    </tr>
    
    
    <tr>
    <td height="43"><font color="black">Category</td>
    <td><input value="<%=category%>" name="category" required="" ></td></label>
    </td>
    </tr>
    
    <tr>
    <td height="43"><font color="black">Patient</td>
    <td><input value="<%=patient%>" name="patient" required="" ></td></label>
    </td>
    </tr>
    
    
    
   
   
    
    <tr>
    <td height="43"><font color="black">Slot</td>
            <td><select name="slot" required="" >
                    <option value="">Select</option>
                    <option value="1011">10:00 to 11:00</option>
                    <option value="1112">11:00 to 12:00</option>
                    <option value="1201">12:00 to 01:00</option>
                        
                    
                    
        </select></td>
    </tr> 
            
       
            

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="Book" />
    </p>
    <div align="right">
    </div></td>
    </tr>
    </table>
    </form>
    </p>
        
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