<script>
function deleteAlum(sid){
	if (confirm('Do you want to delete this Alumni?')) {
		window.location.href = '../do?MOD=ADM&Action=DelA&id='+sid;
		//alert('../do?MOD=ADM&Action=Del&id='+sid);
	}
}
</script>




<body>


<h2 class="h2 text-center">All Alumni List</h2>

<div>


<table class="table">
  <thead class="thead-dark">
    <tr>
			<th scope="col">#</th>
			<th scope="col">Name</th>
			<th scope="col">Branch</th>
			<th scope="col">Y.O.P</th>
			<th scope="col">Mobile</th>
			<th scope="col">E-mail</th>
			<th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
    
     
<%
//String sId=(String)session.getAttribute("s_id");
java.util.ArrayList al=(java.util.ArrayList)session.getAttribute("allAlum");
int size = al.size();
if(size>0){
for(int i=0;i<size;i++){
java.util.ArrayList one=(java.util.ArrayList)al.get(i);
String id =(String)one.get(0);
%>
    <tr>
    
    
    <th scope="row"><%= i + 1 %></th>
    <td><%=(String)one.get(1)%></td>
    <td><%=(String)one.get(2)%></td>
    <td><%=(String)one.get(3)%></td>
    <td><%=(String)one.get(4)%></td>
    <td><%=(String)one.get(5)%></td>
	<td><a class="btn btn-danger" href="javascript:deleteAlum(<%=id%>);">Delete</a></td>
    
    </tr>
    
      
<%
}//for
}//if
else {
%>


<h3 class="text-danger">Sorry<br/><br/>

</h3>

<div class="alert alert-danger" role="alert">
  Oops.. Alumni Not Found....
</div>
<%
}
%>
    
  </tbody>
</table>
</diV>
</body>
