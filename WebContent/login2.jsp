<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Alimini Association</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link href="css/mystyle.css" rel="stylesheet" type="text/css" />
<link href="css/menu-css.css" rel="stylesheet" type="text/css" />
<script src="js/yav.js"  language="javascript"></script>
<script src="js/yav-config.js" language="javascript"></script>
<script src="js/utils-functions.js"  language="javascript"></script>
</head>

<body class="bg-secondary">
<div class="container bg-light">
<br>
<div id="top" >
<jsp:include page="include/header.jsp" flush="true" />
</div>
<div>

<jsp:include page="include/left-menu.jsp" flush="true" />


</div>



      <jsp:include page="include/login_student.jsp" flush="true" />
    



<div class="footer">
<jsp:include page="student/footer.jsp" flush="true" />
</div>

</div>
</body>
</html>
