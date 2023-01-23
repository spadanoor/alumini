
<%
java.util.ArrayList al=(java.util.ArrayList)session.getAttribute("all-scr");
int size=al.size(); %>
<h5 class="card-header text-white bg-primary">Scrap Details &nbsp;<samp class="badge badge-warning"><%=size%>&nbsp;Scraps</samp></h5>
<% 
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList o=(java.util.ArrayList)al.get(i);
%>




<div class="card">
  
  <div class="card-body">
    <h5 class="card-title"><b >Scrap No.&nbsp; <%=i+1%></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Posted at (&nbsp;<b><%=(String)o.get(2)%></b>&nbsp;)</b></h5>
   	<h5 class="card-title"><b>From :&nbsp;<b><%=(String)o.get(3)%></b></h5>
  </div>
  <div class="card-body">
    <hr class="hr">
    <p class="card-text"><%=(String)o.get(1)%></p>
  </div>
</div>

<br/>

<!-- 
<div class="heading">Scrap Details&nbsp;(<%=size%>&nbsp;Scrap)</div>

<div class="box2">
<b ><a href="" style="border-bottom:2px;">Scrap No.&nbsp; <%=i+1%></a></b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%=(String)o.get(2)%><br/>
<br/>From&nbsp;:<a href="../do?MOD=STUD&Action=Profile&sId=<%=o.get(0)%>"><%=(String)o.get(3)%></a>
<hr width="500" align="left"/>
<%=(String)o.get(1)%>
</div><br/>

 -->
<%
}//for
}//if
else {
%>

<h3 class="text-danger">Sorry<br/><br/>

</h3>

<div class="alert alert-danger" role="alert">
  No Scrap Founds
</div>
<%
}
%>
