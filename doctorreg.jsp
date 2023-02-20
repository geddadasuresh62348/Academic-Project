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
    
    
    
    <script>
    function validateform(){  
var username=document.myform.username.value;  
var password=document.myform.password.value;
var x=document.myform.email.value;
var phoneno = document.getElementById('txtphoneno');
var num=document.myform.mobile.value;
 
  
if (document.myform.username.value == "") {
        alert("Enter a username");
        document.myform.username.focus();
        return false;
    }
    if (!/^[a-zA-Z]*$/g.test(document.myform.username.value)) {
        alert("Please use only characters for username");
        
        document.myform.username.focus();
        return false;
    }
else if(password.length<6){  
  alert("Password must be at least 6 characters long.");  
  return false;  
  }
  
   var atposition=x.indexOf("@");  
var dotposition=x.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=x.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
}
  if (phoneno.value == "" || phoneno.value == null) {
            alert("Please enter your Mobile No.");
            return false;
        }
        
        
        
        
        if (phoneno.value.length < 10 || phoneno.value.length > 10) {
            alert("Mobile No. is not valid, Please Enter 10 Digit Mobile No.");
            return false;
        }
        
        if (isNaN(num)){
   document.getElementById("numloc").innerHTML="Enter Numeric value only";
  return false;
}
        
    

    }
    </script>

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
      
    <p align="justify">
    <center><p><font color="black" size="5"> Doctor Registration</font></p></center><br/>
 
         <form name="myform" id="loginForm" action="doctorregact.jsp" method="post"  onsubmit="return validateform()" >

    <center><table width="321">
    <tr>
    <td width="191" height="43"><font color="black"> Name </td>
    <td width="218"><input name="username" required="" placeholder="User Name" /></td>
    </tr>
    <tr>
    <td height="43"><font color="black">Password </td>
    <td width="218"><input type="password" name="password" required="" placeholder="Password" /></td>
    </tr>
            
    <tr>
    <td height="43"><font color="black">Location </td>
    <td width="218"><input type="text" name="location" required="" placeholder="Location" /></td>
    </tr>
            
     <tr>
    <td height="43"><font color="black">Select Gender</td>
    <td><select name="gender" style="width:170px;" required="">
    <option>--Select--</option>
    <option>MALE</option>
    <option>FEMALE</option>
    </select></td>
    </tr>      
            
           
               
    <tr>
    <td height="43"><font color="black"> Email ID</td>
    <td><input name="email" required="" id="email" placeholder="Email ID"/></td>
    </tr>

   <tr>
    <td height="43"><font color="black">Category</td>
    <td><input name="category" required="" placeholder="Category"></input></td>
    </tr> 
            
   <tr>
    <td height="43"><font color="black">Timings</td>
    <td><input name="timings" type="time" required="" placeholder="Timings"></input></td>
    </tr>          
    
    <tr>
    <td height="43"><font color="black">Fees</td>
    <td><input name="fees" required="" placeholder="Fees"></input></td>
    </tr>         
            
    <tr>
    <td height="43"><font color="black">Mobile Number </td>
    <td><input name="mobile" required="" id="txtphoneno" onkeypress="return isNumber(event)" placeholder="Mobile Number"/><span id="numloc"></span></td>
    </tr>
    
    <tr>
    <td height="43"><font color="black">Info</td>
    <td><input name="info" required="" placeholder="Information"></input></td>
    </tr>         
          
            
    <tr>
    <td height="43"><font color="black">Experience</td>
    <td><input name="exp" required="" placeholder="Experience"></input></td>
    </tr>         
                  
         
            

    <tr>
    <td height="43" rowspan="3">
    <p>&nbsp;</p></td>
    <td align="left" valign="middle"> <p>&nbsp;
    </p>
    <p>
    <input name="submit" type="submit" value="REGISTER" />
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