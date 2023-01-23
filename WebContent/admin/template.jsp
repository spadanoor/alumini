<%@ page import="java.util.*;"%>
<%
//HashMap user=(HashMap)session.getAttribute("user");
//String s_name=(String)session.getAttribute("s_name");
//String sid=(String)session.getAttribute("s_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Admin Page</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="../css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="../js/common.js"  language="javascript"></script>
<script src="../js/yav.js"  language="javascript"></script>
<script src="../js/yav-config.js" language="javascript"></script>
<script src="../js/utils-functions.js"  language="javascript"></script>



</head>

<body>

<%
String email = (String) session.getAttribute("adname");
if(email == null){
	response.sendRedirect("index.jsp");
}
%>
<div id="container">
<div id="top">
<jsp:include page="header.jsp" flush="true" />
</div>





<!--start Bootstrap  -->



<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
 
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link h5" href="../do?MOD=ADM&Action=Welcome">Welcome,&nbsp;<spam class="badge badge-success"> Admin </spam></a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ADM&Action=Send">Send Invitation</a>
      </li>
       <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ADM&Action=ViewF">View All Student</a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ADM&Action=ViewA">View All Alumni</a>
      </li>
     
      
     
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      
      
     
      
      <a class="btn btn-outline-danger my-2 mr-sm-2" href="../do?MOD=ADM&Action=logOff" role="button">Logout</a>
     
    </form>
  </div>
</nav>


<br>
<!--END Bootstrap  -->

<!-- 


<div id="leftnav">
<!-- 
Left Menu

<div id="ddblueblockmenu">
  <div class="menutitle">Admin Settings</div>
  <ul>
    <li><a href="../do?MOD=ADM&Action=Welcome">Welcome,&nbsp;Admin</a></li>
    <li><a href="../do?MOD=ADM&Action=Send">Send Invitation</a></li>
    <li><a href="../do?MOD=ADM&Action=ViewF">View All Student</a></li>
    <li><a href="../do?MOD=ADM&Action=ViewA">View All Alumni</a></li>
	<li><a href="../do?MOD=ADM&Action=logOff">Logout</a></li>
  </ul>
  <div class="menutitle">Alumini Column</div>
  
</div>

 -->





<%
String conPage=(String)session.getAttribute("content_page");
System.out.print("conPage ==> "+conPage);
if(conPage!=null){
%>
 
<jsp:include page="<%=conPage%>"/>
<%
}
else {
%>
<jsp:include page="test.jsp"/>
<%
}
%>
<!-- 
Closing of Prod
-->



<!--
Closing of Conetent
 -->
</div>
<br></br>
<div id="footer">
<jsp:include page="footer.jsp" flush="true" />


</div>
</body>
</html>
