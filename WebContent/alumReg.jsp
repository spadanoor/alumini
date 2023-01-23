<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="js/yav.js"  language="javascript"></script>
<script src="js/yav-config.js" language="javascript"></script>
<script src="js/utils-functions.js"  language="javascript"></script>
</head>

<script type="text/javascript">
            function validate()
            {
                var a = document.getElementById("sname");
                var b = document.getElementById("pass");
                var c = document.getElementById("add");
            //    var d = document.getElementById("mob");
                var e = document.getElementById("email");
                var f = document.getElementById("usn");
            	var namecheck = new RegExp("^[a-zA-Z]+$","g");
            	var phoneno = /^\d{10}$/;  
            	var x=document.form1.email.value;
            	var atpos=x.indexOf("@");
            	var dotpos=x.lastIndexOf(".");
            	var strongpsw1 = ("^(?=.*[a-zA-Z])(?=.*[0-9])(?=.*[!@#\$%\^&\*])(?=.{6,})");
            	var strongpsw = ("^(?=.*[a-zA-Z])(?=.*[0-9])(?=.{6,})");
            	var alpha=/^[a-zA-Z]+$/;
            	var alpha1=/[1-4][A-Z][A-Z][0-9][0-9][A-Z][A-z][0-9][0-9][0-9]$/
                var valid = true;
                if(a.value.length<=0||b.value.length<=0||c.value.length<=0||e.value.length<=0)
                {
                     alert("please enter all the fields");
                      // alert("mobile number should be 10 digits");
                        valid = false;
                 }
                else if(!(document.form1.sname.value.match(alpha)))
                {  
             	alert("Enter a valid name");
             		 return false;
             	}
             
                else if(!document.form1.pass.value.match(strongpsw))
    			{
    		alert("Password Field must be alphanumeric with 6 characters ");
    		return false;
    	}
    			
    	else if(document.form1.pass.value.length<6)
    		
    	{
    		alert("Password Field Should Contain atleast 6 characters");
    		return false;
    	}
              
                else if(c.value.length<=10)
              { 	
                alert("enter adress more than 10 charactor or digits ");
                valid = false;
             }
                else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=x.length)
            	  {
            	  alert("Not a valid e-mail address");
            	  return false;
            	  }
                else if(document.form1.usn.value.length==0)
            	{
            	alert("usn number is empty");
            	valid=false;
            	}
            else if(!document.form1.usn.value.match(alpha1))
            	{
            	alert("usn number should be in in DAADDAADDD format");
            	return false;
            	}
                else if(!(document.form1.mob.value.match(phoneno)))
                {  
            alert("enter valid phone number");

            return false;
                }  
            else
            	{
            		return true;
            	}
                
         
                
                
              return valid;
            };
        
            
          
             
            

        </script>
        <script>
        function checkUser()
        {
            var req;
            try
            {
                req=new XMLHttpRequest();

            }
                catch(e)
                {
                    try
                    {

                     req=new ActiveX0bject("msxml2.XMLHttp");
                     }
                     catch(e)
                     {
                         try{
                             req=new ActiveX0bject("MicrosoftXMLHttp");
                         }
                         catch(e){
                         alert("browser doesn't recognise ajax");
                         return false;
                     }
                     }
                   }
             req.onreadystatechange=function()
             {
                 if(req.readyState==4)
                 {
                   document.getElementById("display").innerHTML=req.responseText;
                 }
             }
             var url="bbvalid.jsp?usn="+document.form1.usn.value;
             req.open("GET",url,true);
             req.send(null);
         }
         function blank()
         {
            document.getElementById("display").innerHTML="";
         }
</script>
<body class="bg-secondary">

<div class="container bg-light">
<div id="top">
<jsp:include page="include/header.jsp" flush="true" />
</div>
<div id="">

<jsp:include page="include/left-menu.jsp" flush="true" />


</div>

<!-- 
Closing of Prod
-->



<!--
Closing of Conetent
 -->
 
 <!-- Bootstrap -->
 <br></br>
 <div class="container border">
 
 <h2 class="text-center text-dark mt-5">Alumni Registration</h2><br></br>
 <form  id="form1" name="form1" method="post" action="do?MOD=ALUM&Action=Reg" onsubmit="return  validate();">
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="sname">Name</label>
      <input type="text" class="form-control" name="name" id="sname" placeholder="Enter Your Name" required>
    </div>
    <div class="form-group col-md-6">
      <label for="usn">USN</label>
      <input name="usn" type="text" id="usn" class="form-control"  placeholder="Enter Your USN" required onblur="checkUser()" onselect="blank()" <span id="userNameError" style="color:red;"></span><span id="display"</span> >  </input>
    </div>
  </div>
  
  
  
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input type="email" name="email" id="email" class="form-control"  placeholder="Email" required>
    </div>
    <div class="form-group col-md-6">
      <label for="pass">Password</label>
      <input name="pass" type="password" id="pass" class="form-control"  placeholder="Password" required>
    </div>
  </div>
  
  
  
  <div class="form-group">
    <label for="add">Address</label>
    <textarea name="add" cols="40" rows="5" id="add" class="form-control" placeholder="1234 Main St" required></textarea>
    
  </div>
 
  <div class="form-row">
    
    <div class="form-group col-md-5">
      <label for="inputBranch Name">Branch Name</label>
      <select id="inputBranch" name="bname" class="form-control" required>
       
        <option value="Computer science">Computer Engineering</option>
			<option value="ele">E&C</option>
		    <option value="Mech">Mech Engineering</option>
		    <option value="Mba">MThec</option>
			<option value="IT">Information Technology</option>
			<option value="Prod">Production Engineering</option>
			<option value="Mca">MCA</option>
			<option value="Mba">MBA</option>
        
      </select>
    </div>
    
    
    <div class="form-group col-md-4">
      <label for="inputYOP">Year of Passing</label>
      <select id="inputYOP" name="yop" class="form-control" required>
       
        <%
		for(int i=2001;i<=2025;i++){
		%>
		<option value="<%=i%>"><%=i%></option>
		<%
		}
		%>
      </select>
    </div>
    
    
    <div class="form-group col-md-3">
      <label for="mob">Mobile No</label>
      <input name="mob" type="text" id="mob" class="form-control" required>
    </div>
  </div>
  <div class="text-center">
  <button type="reset" name="Submit2" value="Reset" class="btn btn-danger">Reset</button>
  <button type="submit" name="Submit" value="Register Now" onclick="return checkForm();" class="btn btn-success">Register Now</button>
  </div>
 
</form>
<br></br>
</div>
<!-- Close bootstrap -->

 <br></br>
 
 
 


<div class="footer">
<jsp:include page="include/footer.jsp" flush="true" />
</div>
</div>
</body>
</html>
