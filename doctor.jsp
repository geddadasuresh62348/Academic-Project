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
    <%}%>
    <%
    if (request.getParameter("m1") != null) {%>
    <script>alert('Login Failed');</script>
    <%}%>

    <div id="tooplate_wrapper">
    <div id="tooplate_header">
    <div id="site_title">
    <br/><font size="6">Online Doctor Appointment</font>
    </div>

    <div id="tooplate_menu" class="ddsmoothmenu">
    <ul>
    <li><a href="index.html">Home</a></li>
    <li><a href="admin.jsp">Admin</a></li>
    <li><a href="doctor.jsp" class="selected">Doctor</a></li>
    <li><a href="patient.jsp">Patient</a></li>
    </ul>
    <br style="clear: left" />
    </div>

    <div id="tooplate_main">

    <div id="tooplate_slider">

    <img src="images/slide.jpg" alt="" height="240" width="900" />

    </div>
    <div id="tooplate_content">
    
    <center><p><font color="black" size="5"> Doctor Login</font></p></center><br/>

    <center>
    <form name="myform" action="doctoract.jsp" method="post">
    <table border="0" >

    <tr><td><font color="black"> Doctor Name</td><td><input type="text" name="username" required="" Placeholder="User Name" /></td></tr>
    <tr><td><font color="black">Password</td><td><input type="password" name="password" required="" Placeholder="Password" /></td></tr>

    <tr rowspan="2" align="center"><td><br><input type="submit" name="submit" value="Login" /></td></tr>
    <tr></tr>      
    </table>
    </form>
    </center>
    <br/>
    <center><a href="doctorreg.jsp">New User..?Register Here...</a> </center>
    
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