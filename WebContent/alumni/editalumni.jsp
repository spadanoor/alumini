<%
java.util.ArrayList hm=(java.util.ArrayList)session.getAttribute("editAlu");
%>
<!-- 
<div class="box2">
<div class="heading">Edit <%=(String)hm.get(1)%>'s Profile </div>

<form id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=ALUM&Action=AlumEdit">

  <table width="423" border="0">
    <tr>
      <td width="117">&nbsp;</td>
      <td width="8">&nbsp;</td>
      <td width="283"><input type="hidden" name="aId" value="<%=(String)hm.get(0)%>"></td>
    </tr>
    <tr>
      <td>Alumni Name </td>
      <td>:</td>
      <td><label>
        <input type="text" name="aName"  size="40" value="<%=(String)hm.get(1)%>"/>
      </label></td>
    </tr>
    <tr>
      <td>Branch</td>
      <td>:</td>
      <td><select name="bname">
        <option value="Computer">Computer Engineering</option>
        <option value="Mech">Mech Engineering</option>
        <option value="IT">Information Technology</option>
        <option value="Prod">Production Engineering</option>
      </select></td>
    </tr>
    <tr>
      <td>Year od Passing </td>
      <td>:</td>
      <td><select name="yop">
        <%
		for(int i=1980;i<=2016;i++){
		%>
        <option value="<%=i%>"><%=i%></option>
        <%
		}
		%>
      </select></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>:</td>
      <td><textarea name="add1" cols="37" id="address"><%=(String)hm.get(4)%></textarea></td>
    </tr>
    <tr>
      <td>Mobile No. </td>
      <td>&nbsp;</td>
      <td><input name="mobile" type="text" id="mobile"  size="30" value="<%=(String)hm.get(5)%>"/></td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td>:</td>
      <td><input name="email" type="text" id="email"  size="40" value="<%=(String)hm.get(6)%>"/></td>
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
        <input  type="submit" value="Edit <%=(String)hm.get(1)%>'s Profile"  />
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
 
 <h2 class="text-center text-dark mt-5">Edit <%=(String)hm.get(1)%>'s Profile</h2><br></br>
 <form  id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=ALUM&Action=AlumEdit">
   <div class="form-row">
   <input type="hidden" name="aId" value="<%=(String)hm.get(0)%>">
    <div class="form-group col-md-6">
      <label for="sname">Name</label>
      <input  class="form-control" type="text" name="aName"  value="<%=(String)hm.get(1)%>" required>
    </div>
    
    <div class="form-group col-md-6">
      <label for="email">Email</label>
      <input name="email" type="text" id="email" value="<%=(String)hm.get(5)%>" class="form-control"  placeholder="Email" required>
    </div>
   
  </div>
  
  
  
  <div class="form-row">
    
    
  </div>
  
  
  
  <div class="form-group">
    <label for="add">Address</label>
    <textarea name="add1"  id="address" class="form-control" placeholder="1234 Main St" required><%=(String)hm.get(4)%></textarea>
    
  </div>
 
  <div class="form-row">
    
    <div class="form-group col-md-5">
      <label for="inputBranch Name">Branch Name</label>
      <select id="inputBranch" name="bname" class="form-control" required>
       
        <option value="Computer science">Computer Engineering</option>
			<option value="ele">E&C</option>
		    <option value="Mech">Mech Engineering</option>
			<option value="IT">Information Technology</option>
			<option value="Prod">Production Engineering</option>
			<option value="Mca">MCA</option>
			<option value="Mba">MBA</option>
        
      </select>
    </div>
    
    
    <div class="form-group col-md-4">
      <label for="inputYOP">Year of Passing</label>
      <select id="inputYOP" name="yop" class="form-control" required>
       
        <%
		for(int i=2001;i<=2025;i++){
		%>
		<option value="<%=i%>"><%=i%></option>
		<%
		}
		%>
      </select>
    </div>
    
    
    <div class="form-group col-md-3">
      <label for="mob">Mobile No</label>
      <input name="mobile" type="text" id="mobile"  value="<%=(String)hm.get(6)%>" class="form-control" required>
    </div>
  </div>
  <div class="text-center">
  <button type="reset" name="Submit2" value="Reset" class="btn btn-danger">Reset</button>
  <button type="submit" class="btn btn-success">Edit <%=(String)hm.get(1)%>'s Profile</button>
  </div>
 
</form>
<br></br>
</div>
<!-- Close bootstrap -->
</div>
 <br></br>


<!--  End Bootstrap -->
