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
    <script>alert('Login Successful');</script>
    <%}%>

    <div id="tooplate_wrapper">
    <div id="tooplate_header">
    <div id="site_title">
    <br/><font size="6">Online Doctor Appointment</font>
    </div>

    <div id="tooplate_menu" class="ddsmoothmenu">
    <ul>
    <li><a href="adminhome.jsp" class="selected">Home</a></li>
    <li><a href="viewdoctors.jsp">View Doctors</a></li>
    <li><a href="viewpatients.jsp">View Patients</a></li>
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
    <br/>
    <center><p><font color="black" size="5"> Welcome Admin </font></p></center>
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