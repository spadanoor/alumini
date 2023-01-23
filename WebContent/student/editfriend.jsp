<%
java.util.HashMap hm=(java.util.HashMap)session.getAttribute("user");
%>
<!-- 
<div class="box2">
<div class="heading">Edit <%=(String)hm.get("u_name")%>'s Profile </div>

<form id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=STUD&Action=FriendEdit">

  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283"><input type="hidden" name="sId" value="<%=(String)hm.get("u_id")%>"></td>
    </tr>
    <tr>
      <td>Friend Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="fName"  size="40" value="<%=(String)hm.get("u_name")%>"/>
      </label></td>
    </tr>
    <tr>
      <td>Password</td>
      <td>:</td>
      <td><input name="password" type="text" id="password"  size="40" value="<%=(String)hm.get("u_pass")%>"/></td>
    </tr>
    <tr>
      <td>Branch</td>
      <td>:</td>
      <td><input name="branch" type="text" id="branch"  size="40" value="<%=(String)hm.get("u_branch")%>"/></td>
    </tr>
    <tr>
      <td>Year</td>
      <td>:</td>
      <td><select name="year" >
        <option value="1">First Year</option>
        <option value="2">Second Year</option>
        <option value="3">Third Year</option>
      </select></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>:</td>
      <td><textarea name="address" cols="37" id="address"><%=(String)hm.get("u_address")%></textarea></td>
    </tr>
    <tr>
      <td>Mobile No. </td>
      <td>&nbsp;</td>
      <td><input name="mobile" type="text" id="mobile"  size="30" value="<%=(String)hm.get("u_mobile")%>"/></td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td>:</td>
      <td><input name="email" type="text" id="email"  size="40" value="<%=(String)hm.get("u_email")%>"/></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td><label>
        <div align="right">
          <input type="reset" name="Submit2" value="Reset" />
          </div>
      </label></td>
      <td>&nbsp;</td>
      <td><label>																		
        <input  type="button" value="Edit <%=(String)hm.get("u_name")%>'s Profile"  onclick="findEditFriend();"/>
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






<!--  Begin Bootstrap  -->



 
 <!-- Bootstrap -->
 
 <div class="container border">
 
 <h2 class="text-center text-dark mt-5">Edit <%=(String)hm.get("u_name")%>'s Profile </h2><br></br>
 <form  id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=STUD&Action=FriendEdit">
   <div class="form">
   <input type="hidden" name="sId" value="<%=(String)hm.get("u_id")%>">
    <div class="form-group ">
      <label for="sname">Name</label>
      <input  class="form-control" type="text" name="fName"  value="<%=(String)hm.get("u_name")%>" required>
    </div>
    </div>
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="password">Password</label>
      <input name="password" type="text" id="password"   value="<%=(String)hm.get("u_pass")%>" class="form-control"  placeholder="Password" required>
    </div>
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input name="email" type="text" id="email" value="<%=(String)hm.get("u_email")%>" class="form-control"  placeholder="Email" required>
    </div>
   
  </div>
  
  
  
  <div class="form-row">
    
    
  </div>
  
  
  
  <div class="form-group">
    <label for="address">Address</label>
    <textarea name="address" cols="37" id="address" class="form-control" placeholder="1234 Main St" required><%=(String)hm.get("u_address")%></textarea>
    
  </div>
 
  <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="branch">Branch Name</label>
      <select name="branch"  id="branch" class="form-control" required>
       
        <option value="Conmputer Science">Computer Science</option>
			<option value="ele">E&C</option>
		    <option value="Mech">Mech Engineering</option>
			<option value="IT">Information Technology</option>
			<option value="Prod">Production Engineering</option>
			<option value="Mca">MCA</option>
			<option value="Mba">MBA</option>
        
      </select>
    </div>
    
    
    <div class="form-group col-md-3">
      <label for="inputBranch">Year of Passing</label>
      <select id="inputBranch" name="year" class="form-control" required>
       
       <option value="1">First Year</option>
        <option value="2">Second Year</option>
        <option value="3">Third Year</option>
        
      </select>
    </div>
    
    <div class="form-group col-md-5">
      <label for="mob">Mobile No</label>
      <input name="mobile" type="text" id="mobile"  value="<%=(String)hm.get("u_mobile")%>" class="form-control" required>
    </div>
  </div>
  <div class="text-center">
  <button type="reset" name="Submit2" value="Reset" class="btn btn-danger">Reset</button>
  <button type="submit" class="btn btn-success" onclick="findEditFriend();">Edit <%=(String)hm.get("u_name")%>'s Profile</button>
  </div>
 
</form>
<br></br>
</div>
<!-- Close bootstrap -->
</div>
 <br></br>


<!--  End Bootstrap -->

