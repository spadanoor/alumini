<!--
<div class="box2">
<div class="heading">Find a Friend</div>

<form id="frmFindFriend" name="frmFindFriend" method="post" action="../do?MOD=STUD&Action=FindFriend">
  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283">&nbsp;</td>
    </tr>
    <tr>
      <td>Friend Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="fName"  size="40"/>
      </label></td>
    </tr>
    <tr>
      <td>Year</td>
      <td>:</td>
      <td><label>
        <select name="year" >
		<option value="1">First Year</option>
		<option value="2">Second Year</option>
		<option value="3">Third Year</option>
		<option value="4">fourth Year</option>
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
        <input  type="button" value="Find Friend"  onclick="findFriend();"/>
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
        <h2 class="text-center text-dark mt-5">Find A Friend</h2>
        
        <div class="card my-5">

          <form class="card-body cardbody-color p-lg-5" id="frmFindFriend" name="frmFindFriend" method="post" action="../do?MOD=STUD&Action=FindFriend">

            
            <div class="form-group row">
   				 <label for="inputEmail3" class="col-sm-2 col-form-label">Friend Name</label>
    			<div class="col-sm-10">
     				 <input type="text"  name="fName"  class="form-control" id="inputEmail3" placeholder="Friend Name" required>
    			</div>
 		   </div>


					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Year</label>
						<div class="col-sm-10">
							<select id="inputYOP" name="year" class="form-control" required>

							<option value="1">1st Year</option>
							<option value="2">2nd Year</option>
							<option value="3">3rd Year</option>
							<option value="4">4th Year</option>
								
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






