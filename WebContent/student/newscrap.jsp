<%
String r_id=(String)session.getAttribute("rId");
%>
<!-- 
<div class="heading">Scrap Details</div>
<form action="../do?MOD=STUD&Action=PostSc" method="post">
<div class="box2">
  <b>Scrap to Friend</b>
  <input type="hidden" value="<%=r_id%>" name="rId"/>
  <p>
    <label>
    <textarea name="msg" cols="60" rows="5"></textarea>
    </label>
  </p>
      <input type="submit" value=" Post Scrap "  align="right"/>
 
</div><br/>
</form>


-->



<form action="../do?MOD=STUD&Action=PostSc" method="post">

<div class="card">
  <h5 class="card-header text-white bg-primary">Scrap Details </h5>
  <div class="card-body">
    <h5 class="card-title">Scrap to Friend</h5>
   	 <input type="hidden" value="<%=r_id%>" name="rId"/>
  </div>
  <div class="card-body">
    
    <textarea class="form-control" name="msg"  rows="5" ></textarea>
  </div>
   <div class="text-center"><button type="submit" class="btn btn-success px-5 mb-5" >Post Scrap</button></div>
</div>
</form>
