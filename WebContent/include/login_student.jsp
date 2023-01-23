<!--  
<form id="form1" name="loginStudentForm" method="post" action="do?MOD=STUD&Action=Login" >
    <table width="267" border="0" align="left">
      <tr>
        <td colspan="3"><div id="log_now"><font color="#FFFFFF"><b>Student Login</b></font></div></td>
      </tr>
      <tr>
        <td colspan="3">
		<font color="#FF0000"><b>
		
</b></font>
		</td>
      </tr>
      <tr>
        <td width="98">Student Name</td>
        <td width="5"><strong>:</strong></td>
        <td width="150"><label>
          <input type="text" name="userName" />
        </label></td>
      </tr>
      <tr>
        <td>Password</td>
        <td><strong>:</strong></td>
        <td><label>
          <input type="password" name="userPass" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2"><label>
          <div align="right">
            <input type="reset" value="Reset" />
          </div>
        </label></td>
        <td><label>
          <input type="button" name="Submit" value="Login Now" onclick="loginStudent();" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><a href="studReg.jsp">Register Now? </a></td>
        <td>&nbsp;</td>
      </tr>
  </table>
  </form>
  
  
  
  -->
  
  
  

<div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
      
      <br>
      
      
      <%
				String status = request.getParameter("error");
				if (status != null) {
					if (status.equals("YES")) {
			%><div
				class="alert alert-danger alert-dismissible fade show text-center"
				role="alert">
				<strong>Incorrect UserName Or Password</strong>
				<button type="button" class="close" data-dismiss="alert"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<%
				} else {

					}
				}
			%>
<br>
      
      
      
      
        <h2 class="text-center text-dark mt-5">Student Login Form</h2>
        
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" id="form1" name="loginStudentForm" method="post" action="do?MOD=STUD&Action=Login">

            <div class="text-center">
              <img src="https://i.ibb.co/yVGxFPR/2.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="profile">
            </div>

            <div class="mb-3">
              <input  type="email" name="userName" class="form-control" id="Username" aria-describedby="emailHelp"
                placeholder="Email" required>
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="userPass" placeholder="password" required>
            </div>
            <div class="text-center"><button type="submit" class="btn btn-info px-5 mb-5 w-100"  >Login</button></div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Not         <!-- onclick="loginStudent();"--> 
              Registered? <a href="studReg.jsp" class="text-dark fw-bold"> Create an
                Account</a>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>