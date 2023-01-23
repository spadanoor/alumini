<div class="container text-center">
<h2 class="h2">Alumni List</h2>
<%
//String sId=(String)session.getAttribute("s_id");
java.util.ArrayList al=(java.util.ArrayList)session.getAttribute("aList");
int size=al.size();
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList one=(java.util.ArrayList)al.get(i);
String id=(String)one.get(0);
%>




<div class="card" style="width: 18rem;">
  <img class="card-img-top" width="100" height="80" src="../images/anon.gif" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title"><%=(String)one.get(1)%></h5>
   
  </div>
  <ul class="list-group list-group-flush">
    <li class="list-group-item"><b>Email: :</b><%=(String)one.get(4)%><br/></li>
    <li class="list-group-item"><b>Branch :</b><%=(String)one.get(2)%><br/></li>
    <li class="list-group-item"><b>Year of Passing - :</b>&nbsp;<%=(String)one.get(3)%><br/> </li>
     <li class="list-group-item"><b>Mobile No. :</b><%=(String)one.get(5)%><br/></li>
  </ul>
  <div class="card-body">
    <a href="../do?MOD=STUD&Action=AProfile&id=<%=id%>" class="card-link">View <%=(String)one.get(1)%>'s Profile</a>
    
  </div>
</div>


<!-- 

<div class="box1">
<div class="photo">
<img width="100" height="80" src="../images/anon.gif" alt="Friends Photo" />
</div>
<div class="heading"><%=(String)one.get(1)%></div>
<div class="box_content">
<b>Email :</b><%=(String)one.get(4)%><br/>
<b>Branch :</b><%=(String)one.get(2)%><br/>
<b>Year of Passing:</b>&nbsp;<%=(String)one.get(3)%><br/> 
<b>Mobile No. :</b><%=(String)one.get(5)%><br/>
<a href="../do?MOD=STUD&Action=AProfile&id=<%=id%>">View <%=(String)one.get(1)%>'s Profile</a>
</div>
</div>
 -->
<%
}//for
}//if
else {
%>

<h3 class="text-danger">Sorry<br/><br/>

</h3>

<div class="alert alert-danger" role="alert">
  There is No Alumni with this Name.
</div>
<%
}
%>
</div>