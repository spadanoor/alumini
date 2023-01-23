
<!-- 
<form id="frmFindFriend" name="frmFindFriend" method="post" action="../do?MOD=STUD&Action=FindA">
  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283">&nbsp;</td>
    </tr>
    <tr>
      <td>Alumni Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="fName"  size="40"/>
      </label></td>
    </tr>
    <tr>
      <td>Year od Passing </td>
      <td>:</td>
      <td><label>
        <select name="yop">
		<%
		for(int i=1980;i<=2016;i++){
		%>
		<option value="<%=i%>"><%=i%></option>
		<%
		}
		%>
		</select>
      </label></td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset" />
          </div>
      </label></td>
      <td>&nbsp;</td>
      <td><label>																		
        <input  type="button" value="Find Alumni"  onclick="findFriend();"/>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
</div>


 -->




<div class="container">
    <div class="row">
      <div class="col-md-6 offset-md-3">
        <h2 class="text-center text-dark mt-5">Find Alumni</h2>
        
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" id="frmFindFriend" name="frmFindFriend" method="post" action="../do?MOD=STUD&Action=FindA">

            
            <div class="form-group row">
   				 <label for="inputEmail3" class="col-sm-2 col-form-label">Alumni Name</label>
    			<div class="col-sm-10">
     				 <input type="text"  name="fName"  class="form-control" id="inputEmail3" placeholder="Alumni Name" required>
    			</div>
 		   </div>


					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Year
							of Passing</label>
						<div class="col-sm-10">
							<select id="inputYOP" name="yop" class="form-control" required>

								<%
									for (int i = 2001; i <= 2025; i++) {
								%>
								<option value="<%=i%>"><%=i%></option>
								<%
									}
								%>
							</select>
						</div>
					</div>



					




					
    
    
           <div class="row center">
            <div class="text-center col-6"><button type="reset" name="Submit2" class="btn btn-danger px-5 mb-5 w-100" >Reset</button></div>
            <div class="text-center col-6"><button type="submit" class="btn btn-success px-5 mb-5 w-100"   onclick="findFriend();">Find Alumni</button></div>
           </div>
          </form>
        </div>

      </div>
    </div>
  </div>
