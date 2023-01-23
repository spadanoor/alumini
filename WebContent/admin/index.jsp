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

<body class="container">
<div id="top">
<div id="top">
<jsp:include page="header.jsp" flush="true" />
<jsp:include page="main.jsp" flush="true" />

</div>


<!-- 
Left Menu
-->






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
<jsp:include page="test.jsp"/>
<%
}
%>


</div>

<div class="footer">
<jsp:include page="footer.jsp" flush="true" />
</div>

</body>
</html>
