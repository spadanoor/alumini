<!-- 

<form id="form1" name="form1" method="post" action="../do?MOD=ADM&Action=login">
  <table width="380" border="0" align="center">
    <tr>
      <td colspan="3" bgcolor="#003399">&nbsp;</td>
    </tr>
    <tr>
      <td width="138">&nbsp;</td>
      <td width="7">&nbsp;</td>
      <td width="213">&nbsp;</td>
    </tr>
    <tr>
      <td><em>&nbsp;&nbsp;</em>Admin Name </td>
      <td><em>:</em></td>
      <td><em>
        <label>
        <input name="name" type="text" id="name" />
          </label>
      </em></td>
    </tr>
    <tr>
      <td><em>&nbsp;</em>&nbsp;Password</td>
      <td><em>:</em></td>
      <td><em>
        <label>
        <input name="pass" type="password" id="pass" />
          </label>
      </em></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><em>
        <label>
        <input type="submit" name="Submit" value="Login Admin" />
          </label>
      </em></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td colspan="3" bgcolor="#003399">&nbsp;</td>
    </tr>
  </table>
</form>

 -->



 




    <div class="row">
    
      <div class="col-md-6 offset-md-3">

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
			<h2 class="text-center text-dark mt-5">Admin Login</h2>
        
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" id="form1" name="form1" method="post" action="../do?MOD=ADM&Action=login">

            <div class="text-center">
              <img src="../images/adminImage.png" class="img-fluid profile-image-pic img-thumbnail rounded-circle my-3"
                width="200px" alt="admin Images">
            </div>

            <div class="mb-3">
              <input  name="name" type="text" id="name" class="form-control"  aria-describedby="emailHelp"
                placeholder="User Name" required>
            </div>
            <div class="mb-3">
              <input name="pass" type="password" id="pass" class="form-control"  placeholder="password" required>
            </div>
            <div class="text-center"><button type="submit" class="btn btn-info px-5 mb-5 w-100"  name="Submit" >Login Admin</button></div>
            
          </form>
        </div>

      </div>
    </div>
  
