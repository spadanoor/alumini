
<%

String email = (String) session.getAttribute("isAlumni");
if(email == null){
	response.sendRedirect("../login.jsp");
}else{
%>


<%@ page import="java.util.*;"%>


<%
ArrayList us=(ArrayList)session.getAttribute("ap");
String id=(String)us.get(0);
String name=(String)us.get(1);

%>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title><%=name%>'s Profile</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" />
<link href="../css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="../css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="../js/common.js"  language="javascript"></script>
<script src="../js/yav.js"  language="javascript"></script>
<script src="../js/yav-config.js" language="javascript"></script>
<script src="../js/utils-functions.js"  language="javascript"></script>
</head>

<body><% 
if(email == null){
	response.sendRedirect("../login.jsp");
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
        <a class="nav-link h5" href="../do?MOD=ALUM&Action=Content">Welcome,&nbsp;<spam class="badge badge-success"> <%=name%> </spam></a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ALUM&Action=Invitation&id=<%=id%>">View Invitation</a>
      </li>
       <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ALUM&Action=Friend&id=<%=id%>">Find Friend</a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ALUM&Action=View&id=<%=id%>">View Scrap</a>
      </li>
      <li class="nav-item">
        <a class="nav-link h5" href="../do?MOD=ALUM&Action=Edit&id=<%=id%>">Edit Details</a>
      </li>
      
     
      
    </ul>
    <form class="form-inline my-2 my-lg-0">
      
      
     
      
      <a class="btn btn-outline-danger my-2 mr-sm-2"  href="../do?MOD=ALUM&Action=logOff" role="button">Logout</a>
     
    </form>
  </div>
</nav>



<!-- End Bootstrap -->

<div id="leftnav">
<!-- 
Left Menu

<div id="ddblueblockmenu">
  <div class="menutitle">Alumni Column</div>
  <ul>
    <li><a href="../do?MOD=ALUM&Action=Content">Welcome,&nbsp;<%=name%></a></li>
    <li><a href="../do?MOD=ALUM&Action=Invitation&id=<%=id%>">View Invitation</a></li>
    <li><a href="../do?MOD=ALUM&Action=Friend&id=<%=id%>">Find Friend</a></li>
	<li><a href="../do?MOD=ALUM&Action=View&id=<%=id%>">View Scrap</a></li>
	<li><a href="../do?MOD=ALUM&Action=Edit&id=<%=id%>">Edit Details</a></li>
	<li><a href="../do?MOD=ALUM&Action=logOff">Logout</a></li>
  </ul>
  <div class="menutitle">&nbsp;</div>
  
</div>

-->

</div>

<br></br>

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
</div>
</body>
</html>

<%} %>
