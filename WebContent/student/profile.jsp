<%
java.util.HashMap hm=(java.util.HashMap)session.getAttribute("prof");
%>


<div class="container text-center">

<form id="frmEditFriend" name="frmEditFriend" method="post" action="../do?MOD=STUD&Action=FriendEdit">

<div class="card" style="width: 18rem;">
  <img class="card-img-top" width="100" height="80" src="../images/anon.gif" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=(String)hm.get("s_name")%>'s Profile </h5>
    <hr>
   <input type="hidden" name="sId" value="<%=(String)hm.get("u_id")%>">
  </div>
  <ul class="list-group list-group-flush">
  	<li class="list-group-item"><b>Name :</b> <%=(String)hm.get("s_name")%><br/></li>
    <li class="list-group-item"><b>Email :</b><%=(String)hm.get("s_email")%><br/></li>
    <li class="list-group-item"><b>Branch :</b><%=(String)hm.get("branch_name")%><br/></li>
    <li class="list-group-item"><b>Year :</b><%=(String)hm.get("year")%><br/> </li>
     <li class="list-group-item"><b>Mobile No. :</b><%=(String)hm.get("s_mobile")%><br/></li>
      <li class="list-group-item"><b>Address :</b><%=(String)hm.get("s_address")%><br/></li>
  </ul>
  <div class="card-body">
   
    
  </div>
</div>
</form>
</div>
<br>
<!-- 
<div class="box2">
<div class="heading"><%=(String)hm.get("s_name")%>'s Profile </div>

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
        <%=(String)hm.get("s_name")%>
      </label></td>
    </tr>
    <tr>
      <td>Branch</td>
      <td>:</td>
      <td><%=(String)hm.get("branch_name")%></td>
    </tr>
    <tr>
      <td>Year</td>
      <td>:</td>
      <td><%=(String)hm.get("year")%></td>
    </tr>
    <tr>
      <td>Address</td>
      <td>:</td>
      <td><%=(String)hm.get("s_address")%></td>
    </tr>
    <tr>
      <td>Mobile No. </td>
      <td>&nbsp;</td>
      <td><%=(String)hm.get("s_mobile")%></td>
    </tr>
    <tr>
      <td>E-mail</td>
      <td>:</td>
      <td><%=(String)hm.get("s_email")%></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
      <td>&nbsp;</td>
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
