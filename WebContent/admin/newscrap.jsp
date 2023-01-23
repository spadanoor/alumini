<%
//String r_id=(String)session.getAttribute("rId");
%>

<!-- 

<form action="../do?MOD=ADM&Action=Post" method="post">
<div class="box2">
  <p><b>Invite to Alumni</b> </p>
  <table width="509" border="0">
    <tr>
      <td width="100">Heading</td>
      <td width="8">:</td>
      <td width="464"><label>
        <input type="text" name="heading" />
      </label></td>
    </tr>
    <tr>
      <td>Message</td>
      <td>:</td>
      <td><label>
        <textarea name="msg" cols="60" rows="10"></textarea>
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td><label>
        <input type="reset" name="Reset" value="Reset" />
        <input type="submit" name="Submit2" value="Invite" />
      </label></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
    </tr>
  </table>
  <p>&nbsp;    </p>
</div><br/>
</form>

 -->









<form action="../do?MOD=ADM&Action=Post" method="post">

<div class="card">
  <h5 class="card-header text-white bg-primary">Invite to Alumni </h5>
  <div class="card-body">
    <h5 class="card-title">Heading</h5>
    <input type="text" name="heading"   class="form-control" required>
   	   </div>
  <div class="card-body">
      <h5 class="card-title">Message</h5>
    <textarea class="form-control" name="msg"   rows="5" required></textarea>
  </div>
   <div class="text-center"><button type="reset" name="Reset" class="btn btn-danger px-5 mb-5" >Reset</button>
   <button type="submit" class="btn btn-success px-5 mb-5" name="Submit2">Invite</button></div>
</div>
</form>
