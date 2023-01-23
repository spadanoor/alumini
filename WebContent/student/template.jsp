
<%

String email = (String) session.getAttribute("isStu");
if(email == null){
	response.sendRedirect("../login2.jsp");
}else{
%>



<%@ page import="java.util.*;"%>
<%
//HashMap user=(HashMap)session.getAttribute("user");
String s_name=(String)session.getAttribute("s_name");
String sid=(String)session.getAttribute("s_id");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><%=s_name%>'s Profile</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="../css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="../js/common.js"  language="javascript"></script>
<script src="../js/yav.js"  language="javascript"></script>
<script src="../js/yav-config.js" language="javascript"></script>
<script src="../js/utils-functions.js"  language="javascript"></script>
</head>

<body  >


<% 
if(email == null){
	response.sendRedirect("../login2.jsp");
}
%>

<div class="container">
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
        <a class="nav-link h5" href="../do?MOD=STUD&Action=Content">Welcome,&nbsp;<spam class="badge badge-success"> <%=s_name%> </spam></a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5"href="../do?MOD=STUD&Action=Friends&s_id=<%=sid%>">My Friends</a>
      </li>
       <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=STUD&Action=ViewScrap&s_id=<%=sid%>">Scrap</a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=STUD&Action=Edit&s_id=<%=sid%>">Edit Details</a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=STUD&Action=SA">Search Alumni</a>
      </li>
      
     
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      
      
     
      
      <a class="btn btn-outline-danger my-2 mr-sm-2" href="../do?MOD=STUD&Action=logOff&s_id=<%=sid%>" role="button">Logout</a>
     
    </form>
  </div>
</nav>


<br>


<div id="leftnav">
<!--  


<!-- 
Left Menu

<div id="ddblueblockmenu">
  <div class="menutitle">Student Column</div>
  <ul>
    <li><a href="../do?MOD=STUD&Action=Content">Welcome,&nbsp;<%=s_name%></a></li>
    <li><a href="../do?MOD=STUD&Action=Friends&s_id=<%=sid%>">My Friends</a></li>
    <li><a href="../do?MOD=STUD&Action=ViewScrap&s_id=<%=sid%>">Scrap</a></li>
    <li><a href="../do?MOD=STUD&Action=Edit&s_id=<%=sid%>">Edit Details</a></li>
	<li><a href="../do?MOD=STUD&Action=logOff&s_id=<%=sid%>">Logout</a></li>
  </ul>
  <div class="menutitle">Alumini Column</div>
  <ul>
     <li><a href="../do?MOD=STUD&Action=SA">Search Alumni </a></li>
    </ul>
</div>
-->
</div>


<!--
<div id="login_left">
  sasasm dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
</div>


<div id="login_right">
  sasasm dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut.
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
<jsp:include page="content.jsp"/>
<%
}
%>
<!-- 
Closing of Prod
-->


</div>
<!--
Closing of Conetent
 -->


<div id="footer">
<jsp:include page="footer.jsp" flush="true" />
</div>

</body>
</html>
<%} %>