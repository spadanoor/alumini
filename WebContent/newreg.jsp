<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<meta http-equiv="content-type" content="text/html; charset=utf-8" />


<link href="style.css" rel="stylesheet" type="text/css" />

<LINK rel="stylesheet" href="general.css" type="text/css"><style type="text/css">
<!--
.style1 {color: #FFFFFF}
-->
</style>
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>

<script src="./script/reg.js"></script>


<script src="./script/reg1.js"></script>

<script type="text/javascript">

function uservalidate()
{

	var index=document.form1.user.selectedIndex;
	
	var alpha=/^[a-zA-Z]+$/;
	var numbers = /^[0-9]+$/;  
	var phoneno = /^\d{10}$/;  
	var x=document.form1.email.value;
	var atpos=x.indexOf("@");
	var dotpos=x.lastIndexOf(".");
	var strongpsw1 = ("^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,})");
	var strongpsw = ("^(?=.*[a-zA-Z])(?=.*[0-9])(?=.{6,})");
	
	
	/*var pat= "(1|2)[A-Z]{2}\\d{2}(CS|EC|ME|IS)\\d{3}";

	
	 if(!document.form1.firstName.value.match(pat)) 
		{	
			alert("INVALID USN");
			return false;
		}
		*/	
	
	if(index==0)
	{
		alert("Please select the user type");
		return false;
	}
	
	
else if(!(document.form1.firstName.value.match(alpha)) || !(document.form1.lastName.value.match(alpha)))
   {  
	alert("Enter a valid name");
		 return false;
	}
//{
    //document.getElementById("error").innerHTML="enter valid na name";
    //return false;
  //}	
		
		
	else if(document.form1.firstName.value==""||document.form1.lastName.value==""||document.form1.pwd.value==""||document.form1.repwd.value==""||document.form1.UserName.value==""||document.form1.email.value==""||document.form1.mobile.value=="")
	{
		alert("All The Fields Muste Be Entered");
		return false;
	}
	/*else if(document.form1.pwd.value.length<6)
	{
		alert("Password Field Should Contain atleast 6 characters");
		return false;
	}*/
	else if(!document.form1.pwd.value.match(strongpsw))
			{
		alert("Password Field must be alphanumeric with 6 characters ");
		return false;
	}
			
	else if(document.form1.repwd.value.length<6)
		
	{
		alert("Password Field Should Contain atleast 6 characters");
		return false;
	}
	else if(document.form1.pwd.value!=document.form1.repwd.value)
	{
		alert("Password MisMatch");
		return false;
	}
	
	
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
	  {
	  alert("Not a valid e-mail address");
	  return false;
	  }
	
	else if(!(document.form1.mobile.value.match(phoneno)))
    {  
alert("enter valid phone number");

return false;
    }  
	

			
	
	else
	{
		return true;
	}
	
}


function fun()
{
	document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="hidden";
}
function fun1()
{
	
	var index=document.form1.user.selectedIndex;
	if(index==0)
	{
		alert("Please select the user type");
	}
	if(index==1)
	{
	document.getElementById("member").style.visibility="visible";
	document.getElementById("gov").style.visibility="hidden";
	}
	if(index==2)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==3)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==4)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==5)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==6)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==7)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	if(index==8)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
	
	if(index==9)
	{
		document.getElementById("member").style.visibility="hidden";
	document.getElementById("gov").style.visibility="visible";
	}
}

</script>


<script type="text/javascript">


function UploadValidate(){
	
	up=document.form1.filename.value;
	if(up==""){
alert("Please Upload Your file");

	return false;	
}
return true;
}

</script>



</head>

<body ><div class="main">
  <div class="header">
    <div class="header_resize">
      <div class="logo">
       <h1><span> Attendance management System</span></h1>
      </div>
      <div class="menu_nav">
        <ul>
          <li ><a href="index.jsp"><span><span>Home</span></span></a></li>
          <li class="active"><a href="newreg.jsp"><span><span>Signup</span></span></a></li>
          <li><a href="Aboutus.jsp"><span><span>About Us</span></span></a></li>
          <li><a href="Login.jsp"><span><span>Login</span></span></a></li>
          <li><a href="contact.jsp"><span><span>Contact Us</span></span></a></li>
        </ul>
      </div>
      <div class="clr"></div>


    </div>
  </div>
  <div class="hbg1">&nbsp;<img src="images/re1.jpg" width="975" /></div>
  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
			<td align="center">
	
				<form name="form1" action="REG" method="post"     >

						<table align="center">
										
										<tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr><tr></tr>
											<tr align="center"><td><b>User-Type<select name="user" ></b>
																					<option>-----Select-----</option>
																					<option >Student</option>
                                                              						 <option >faculty</option>
                                                              
																				</select>		
															</td>
											</tr>
											<tr align="center"><td>

																	<table align="center"><tr><td>		
			
																									<table align="center">
<tr><td><h1  > </h1></td></tr>   

    

	<tr><td>First Name<span class="required"> *</span> :</td><td><input type="text" name="firstName" ></td></tr>
	<tr><td>Last Name<span class="required"> *</span> :</td><td><input type="text" name="lastName"></td></tr>						
	<tr><td>User_ID<span class="required"> *</span> :</td><td><input type="text" name="UserName"></td></tr>
	<tr><td>password<span class="required"> *</span> :</td><td><input type="password" name="pwd"></td></tr>
	<tr><td>Re-Password<span class="required"> *</span> :</td><td><input type="password" name="repwd"></td></tr>
	
	<tr><td>Email-Id<span class="required"> *</span> :</td><td><input type="text" name="email"></td></tr>
	<tr><td>Mobile No.<span class="required"> *</span> :</td><td><input type="text" name="mobile"></td></tr>

<table align="center">
<tr><td><input type="submit" value="REGISTER" onclick="return uservalidate()"></td><td><input type="reset" value="Clear"></td></tr>
</table>
</table>
	
</td>
</table>				
</td></tr>
</table>

</body>
</html>