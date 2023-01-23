<!-- 
<form id="form1" name="loginAluminiForm" method="post" action="do?MOD=ALUM&Action=Login" >
    <table width="257" border="0" align="left">
      <tr>
        <td colspan="3"><div id="log_now"><font color="#FFFFFF"><b>Alumini Login</b></font></div></td>
       </tr>
      <tr>
        <td width="87">Alumini Name</td>
        <td width="3"><strong>:</strong></td>
        <td width="153"><label>
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
          <input type="button" name="Submit" value="Login Now" onclick="loginAlumini();" />
        </label></td>
      </tr>
      <tr>
        <td colspan="2">&nbsp;</td>
        <td>&nbsp;</td>
      </tr>
      <tr>
        <td colspan="2"><a href="alumReg.jsp">Register Now? </a></td>
        <td>&nbsp;</td>
      </tr>
    </table>
  </form>
  
  
  <div class="container">
  
  <form id="form1" name="loginAluminiForm" method="post" action="do?MOD=ALUM&Action=Login" >
  <!-- Email input
  <div class="form-outline mb-4">
    <input id="form2Example1" class="form-control" type="text" name="userName"  />
    <label class="form-label" for="form2Example1">Name</label>
  </div>

  <!-- Password input
  <div class="form-outline mb-4">
    <input type="password" name="userPass" id="form2Example2" class="form-control" />
    <label class="form-label" for="form2Example2">Password</label>
  </div>

  

  <!-- Submit button
  <button type="button" class="btn btn-primary btn-block mb-4" name="Submit" onclick="loginAlumini();">Sign in</button>

  <!-- Register buttons
  <div class="text-center">
    <p>Not a member? <a href="alumReg.jsp">Register</a></p>
  </div>
</form>
</div>
 -->

 

<div class="container">



    <div class="row">
    
      <div class="col-md-6 offset-md-3">
<br>
			<%
				String status = request.getParameter("status");
				if (status != null) {
					if (status.equals("false")) {
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
			<h2 class="text-center text-dark mt-5">Alumni Login Form</h2>
        
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" id="form1" name="loginAluminiForm" method="post" action="do?MOD=ALUM&Action=Login">

            <div class="text-center">
              <img src="https://cdn.pixabay.com/photo/2016/03/31/19/56/avatar-1295397__340.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="profile">
            </div>

            <div class="mb-3">
              <input  type="email" name="userName" class="form-control" id="Username" aria-describedby="emailHelp"
                placeholder="Email" required>
            </div>
            <div class="mb-3">
              <input type="password" class="form-control" id="password" name="userPass" placeholder="password" required>
            </div>
            <div class="text-center"><button type="submit" class="btn btn-info px-5 mb-5 w-100" >Login</button></div>
            <div id="emailHelp" class="form-text text-center mb-5 text-dark">Not   <!-- onclick="loginAlumini();" -->
              Registered? <a href="alumReg.jsp" class="text-dark fw-bold"> Create an
                Account</a>
            </div>
          </form>
        </div>

      </div>
    </div>
  </div>