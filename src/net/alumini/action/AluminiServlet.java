package net.alumini.action;

import javax.servlet.http.*;
import javax.servlet.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import net.alumini.action.DBConnect;

public class AluminiServlet extends HttpServlet {
	
	//
	private String driverClass="";
	private String url="";
	private String uname="";
	private String upass="";
	private String http_url="";
	
	public void init(){
		System.out.println ("In init()......");
	}
	
	public void doPost(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException {
			try {
    			process(req,res);							
			}
			catch (Exception ex) {
			}	
			
		}//doPost
	
	public void doGet(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException {
			try {
    			process(req,res);							
			}
			catch (Exception ex) {
				ex.printStackTrace();
			}
		}//doGet
	
	public void process(HttpServletRequest req,HttpServletResponse res)
			throws ServletException,IOException,Exception {
			
			HttpSession session=req.getSession();
			HttpSession session2=req.getSession(false);
			RequestDispatcher rd=null;
			
			String 	mod=req.getParameter("MOD");
			String action=req.getParameter("Action");
			//module selection code
			//-------------------------------------------------------------------------------------
			if(mod.equals("STUD")){
				
				if(action.equals("Content")){
					session.setAttribute("content_page","content.jsp");
					res.sendRedirect("student/template.jsp");		
				}
				else if(action.equals("Login")){
					int stud_id=0;
					String userName=req.getParameter("userName");
					String userPass=req.getParameter("userPass");
					System.out.println ("User Name : "+userName+"\nUser Pass: "+userPass);
					String sql="select sid, s_name, email from student_details where email='"+userName+"' and s_pass='"+userPass+"'";
					System.out.println (sql);
					HashMap rs=DBConnect.userLogin(sql);
					if(rs.size()>0){
						System.out.println ("-------------------------------");
						//stud_id=rs.getInt(1);
						session.setAttribute("s_id",(String)rs.get("s_id")+"");
						session.setAttribute("s_name",(String)rs.get("s_name"));
						//session.setAttribute("s_email",rs.getString(3));
						session.setAttribute("content_page","content.jsp");
						session.setAttribute("isStu",userName);
						session.setAttribute("logout", userName);
					}
					else {
						res.sendRedirect("login2.jsp?error=YES");		
					}//else
					String sql1="update student_details set is_login='Y' where sid="+stud_id;
				//	System.out.println (sql1);
					DBConnect.updateQuery(sql1);
					res.sendRedirect("student/template.jsp");
				}//Login
				else if(action.equals("Scrap")){
					//----------------------------------------------------------------
					String sId=req.getParameter("sId");
					String rId=req.getParameter("rId");
					session.setAttribute("rId",rId);
					session.setAttribute("content_page","newscrap.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				else if(action.equals("SA")){
					//----------------------------------------------------------------
					session.setAttribute("content_page","alumni.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				
				else if(action.equals("Reg")){//Student Reg
					//----------------------------------------------------------------
					String sname=req.getParameter("sname");
					String pass=req.getParameter("pass");
					String bname=req.getParameter("bname");
					String year=req.getParameter("year");
					String add=req.getParameter("add");
					String mob=req.getParameter("mob");
					String email=req.getParameter("email");
					String usn=req.getParameter("usn");

					
					String sql="insert into student_details (s_name,s_pass,branch_name,year,s_address,mobile,email,usn)"+
						"values('"+sname+"','"+pass+"','"+bname+"','"+year+"','"+add+"','"+mob+"','"+email+"','"+usn+"')";
					System.out.println (sql);
					int update=DBConnect.updateQuery(sql);	
				//	session.setAttribute("content_page","studadd.jsp");
					res.sendRedirect("studadd.jsp");
				}//scrap
				
				else if(action.equals("ViewScrap")){
					//-----------------------------------------------------------------
					int sId=Integer.parseInt(req.getParameter("s_id"));
					String sql="select sid,msg,date,fro from msg_details where rid="+sId;
					//System.out.println (sql);
					ArrayList al=DBConnect.viewScrap(sql);	
					session.setAttribute("all-scr",al);
					session.setAttribute("content_page","scrapList.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				else if(action.equals("PostSc")){
					//-----------------------------------------------------
					int sId=Integer.parseInt((String)session.getAttribute("s_id"));
					int rId=Integer.parseInt(req.getParameter("rId"));
					String msg=req.getParameter("msg");
					String from=(String)session.getAttribute("s_name");
					System.out.println ("Rid : "+rId+"\nMsg : "+msg);
					String sql="insert into msg_details (sid,rid,msg,date,fro) values("+sId+","+rId+",'"+msg+"',NOW(),'"+from+"')";
					System.out.println ("SQL:"+sql);
					int up=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","scrapadd.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				else if(action.equals("Profile")){
					//-----------------------------------------------------
					int sId=Integer.parseInt(req.getParameter("sId"));
					String sql="select sid, s_name, s_pass, branch_name, year, s_address, mobile, email from student_details where sid="+sId;
					HashMap hm=DBConnect.userEdit(sql);
					session.setAttribute("prof",hm);
					session.setAttribute("content_page","profile.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				else if(action.equals("AProfile")){
					//-----------------------------------------------------
					System.out.println ("AProfile********************");
					int sId=Integer.parseInt(req.getParameter("id"));
					String sql="select name, branch, yop, add1,email, mob from alumni_details where id="+sId;
					ArrayList hm=DBConnect.viewAlumniProfile(sql);
					session.setAttribute("a_prof",hm);
					System.out.println ("Alu -------"+hm);
					session.setAttribute("content_page","aprofile.jsp");
					res.sendRedirect("student/template.jsp");
				}//scrap
				else if(action.equals("Friends")){
					int sId=Integer.parseInt(req.getParameter("s_id"));
					session.setAttribute("content_page","friend.jsp");
					res.sendRedirect("student/template.jsp");		
				}//Friends	
				else if(action.equals("FindFriend")){	
					String sName=req.getParameter("fName");
					int sYear=Integer.parseInt(req.getParameter("year"));
					String sql="select sid, s_name, branch_name, year, mobile, email,s_address from student_details where s_name LIKE '"+sName+"%' and year="+sYear;
					//System.out.println (sql);
					ArrayList al=DBConnect.friendlist(sql);
					//System.out.println (al);
					session.setAttribute("fList",al);
					session.setAttribute("content_page","friendList.jsp");
					res.sendRedirect("student/template.jsp");
				}
				else if(action.equals("FindA")){	
					String sName=req.getParameter("fName");
					String sYear=req.getParameter("yop");
					String sql="select id, name, branch, yop, email, mob from alumni_details where name LIKE '"+sName+"%' and yop='"+sYear+"'";
					System.out.println (sql);
					ArrayList al=DBConnect.alumniList(sql);
					System.out.println (al);
					session.setAttribute("aList",al);
					session.setAttribute("content_page","alumniList.jsp");
					res.sendRedirect("student/template.jsp");
				}
				else if(action.equals("FriendEdit")){	
					int sId=Integer.parseInt(req.getParameter("sId"));
					String fName=req.getParameter("fName");
					String password=req.getParameter("password");
					String branch=req.getParameter("branch");
					String year=req.getParameter("year");
					String address=req.getParameter("address");
					String mobile=req.getParameter("mobile");
					String email=req.getParameter("email");
					String sql="update student_details set s_name='"+fName+"', s_pass='"+password+"',"+
						" branch_name='"+branch+"', year='"+year+"', s_address='"+address+"', mobile='"+mobile+"', email='"+email+"' "+
						"where sid="+sId;
				//	System.out.println (sql);
					int update=DBConnect.updateQuery(sql);
					if(update==1){
						session.setAttribute("content_page","editsuccess.jsp");
						res.sendRedirect("student/template.jsp");
					}else {
						session.setAttribute("content_page","editerror.jsp");
						res.sendRedirect("student/template.jsp");		
					}
					
				}
				else if(action.equals("Edit")){
					int sId=Integer.parseInt(req.getParameter("s_id"));
					String sql="select sid, s_name, s_pass, branch_name, year, s_address, mobile, email from student_details where sid="+sId;
					HashMap rs=DBConnect.userEdit(sql);
					if(rs.size()>0){
						HashMap user=new HashMap();
						user.put("u_id",rs.get("s_id")+"");	
						user.put("u_name",rs.get("s_name"));
						user.put("u_pass",rs.get("s_pass"));
						user.put("u_branch",rs.get("branch_name"));
						user.put("u_year",rs.get("year"));
						user.put("u_address",rs.get("s_address"));	
						user.put("u_mobile",rs.get("s_mobile"));	
						user.put("u_email",rs.get("s_email"));
						session.setAttribute("user",user);
						session.setAttribute("content_page","editfriend.jsp");
					}//while
					res.sendRedirect("student/template.jsp");
				}//Edit Details
				else if(action.equals("logOff")){
				//	System.out.println ("--------- LogOff ----------");
					int sId=Integer.parseInt(req.getParameter("s_id"));
					String sql="update student_details set is_login='N' where sid="+sId;
				//	System.out.println (sql);
					int update =DBConnect.updateQuery(sql);
					session.removeAttribute("s_name");
					session.removeAttribute("s_id");
					session.removeAttribute("s_email");
					session.removeAttribute("content_page");
					session.invalidate();
					res.sendRedirect("index.jsp");		
				}//LogOff
			}//MOD
			//-------------------------------------------------------------------------------------
			else if(mod.equals("ALUM")){
				if(action.equals("Reg")){
					String name=req.getParameter("name");
					String pass=req.getParameter("pass");
					String bname=req.getParameter("bname");
					String yop=req.getParameter("yop");
					String add=req.getParameter("add");
					String mob=req.getParameter("mob");
					String email=req.getParameter("email");
					String usn=req.getParameter("usn");
					String sql="insert into alumni_details (name,pass,branch,yop,add1,mob,email,usn) "+
						"values('"+name+"','"+pass+"','"+bname+"','"+yop+"','"+add+"','"+mob+"','"+email+"','"+usn+"')";
					System.out.println (sql);
					int up=DBConnect.updateQuery(sql);
					res.sendRedirect("alumadd.jsp");		
				}
				else if(action.equals("Login")){
					
					String name=req.getParameter("userName");
					String pass=req.getParameter("userPass");
					String sql="select id,name from alumni_details where email='"+name+"' and pass='"+pass+"'";
					System.out.println (sql);
					
					boolean b=DBConnect.isValid(sql);
					if(b==true){
					ArrayList a=DBConnect.loginAlumni(sql);
					session.setAttribute("ap",a);
					session.setAttribute("isAlumni",name);
					session.setAttribute("content_page","content.jsp");
					res.sendRedirect("alumni/template.jsp");	
					}else{
						res.sendRedirect("login.jsp?status=false");
					}
				}
				else if(action.equals("PostSc")){
					int sid=Integer.parseInt(req.getParameter("sId"));
					int rid=Integer.parseInt(req.getParameter("rId"));
					String msg=req.getParameter("msg");
					String from=(String)((ArrayList)session.getAttribute("ap")).get(1);
					String sql="insert into alu_msg_details (sid,rid,msg,date,fro) values("+sid+","+rid+",'"+msg+"',NOW(),'"+from+"')";
					System.out.println (sql);
					int a=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","scrapadd.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("View")){
					int id=Integer.parseInt(req.getParameter("id"));
					String sql="select sid,msg,date,fro from alu_msg_details where rid="+id;
					ArrayList al=DBConnect.viewScrap(sql);	
					session.setAttribute("alu-scr",al);
					session.setAttribute("content_page","scrapList.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("logOff")){
					System.out.println ("alumni logoff--------------");
					session.removeAttribute("ap");
					session.removeAttribute("isAlumni");
					req.getSession().invalidate();
					res.sendRedirect("login.jsp");		
				}
				else if(action.equals("Friend")){
					//System.out.println ("alumni logoff--------------");
					int id=Integer.parseInt(req.getParameter("id"));
					//session.setAttribute("aid",id+"");
					session.setAttribute("content_page","findAlum.jsp");				
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("Content")){
					session.setAttribute("content_page","content.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Edit")){
					int id=Integer.parseInt(req.getParameter("id"));
					String sql="select id, name, branch, yop, add1, email, mob from alumni_details where id="+id;
					ArrayList ea=DBConnect.editAlumni(sql);
					session.setAttribute("editAlu",ea);
					session.setAttribute("content_page","editalumni.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("AlumEdit")){
					int id=Integer.parseInt(req.getParameter("aId"));
					String name=req.getParameter("aName");
					String bname=req.getParameter("bname");
					String yop=req.getParameter("yop");
					String mob=req.getParameter("mobile");
					String email=req.getParameter("email");
					String add1=req.getParameter("add1");
					String sql="update alumni_details set name='"+name+"', branch='"+bname+"', yop='"+yop+"', add1='"+add1+"', email='"+email+"', mob='"+mob+"' where id="+id;
					int ai=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","editsuccess.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Scrap")){
					String id=req.getParameter("rId");
					session.setAttribute("idAlu",id);
					session.setAttribute("content_page","newscrap.jsp");
					res.sendRedirect("alumni/template.jsp");
				}
				else if(action.equals("Invitation")){
					System.out.println ("alumni Invitation--------------");
					String sql="select heading,msg,date from invitation";
					ArrayList inv=DBConnect.viewInvitation(sql);
					session.setAttribute("inv",inv);
					System.out.println (inv);
					session.setAttribute("content_page","invitation.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
				else if(action.equals("FindA")){
					String aname=req.getParameter("aName");
					String yop=req.getParameter("yop");
					String bname=req.getParameter("bname");
					String sql="select name,branch,yop,add1,email,mob,id from alumni_details where name LIKE '"+aname+"%' and branch='"+bname+"' and yop='"+yop+"'";
					System.out.println (sql);
					ArrayList al=DBConnect.alumlist(sql);
					session.setAttribute("aLLL",al);
					System.out.println (al);
					session.setAttribute("content_page","alumList.jsp");
					res.sendRedirect("alumni/template.jsp");		
				}
			}
			else if(mod.equals("ADM")){
				if(action.equals("login")){
					String name=req.getParameter("name");
					String pass=req.getParameter("pass");
					String sql="select admin_name,admin_pass from admin_details where admin_name='"+name+"' and admin_pass='"+pass+"'";
					boolean b=DBConnect.isValid(sql);
					if(b==true){
						
						session.setAttribute("adname", name);
						session.setAttribute("logAdmin", name);
						session.setAttribute("content_page","main.jsp");
						res.sendRedirect("admin/template.jsp");
					}else {
						session.setAttribute("content_page","test.jsp");
						res.sendRedirect("admin/index.jsp?status=false");
					}
				}//if
				else if(action.equals("logOff")){
					session.setAttribute("content_page","test.jsp");
					req.getSession().invalidate();
					res.sendRedirect("admin/index.jsp");
					
				}//if
				else if(action.equals("Send")){
					session.setAttribute("content_page","newscrap.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("Welcome")){
					session.setAttribute("content_page","main.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("Del")){
					int sid=Integer.parseInt(req.getParameter("id"));
					String sql="delete from student_details where sid="+sid;
					int u=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","main.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("DelA")){
					int sid=Integer.parseInt(req.getParameter("id"));
					String sql="delete from alumni_details where id="+sid;
					int u=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","main.jsp");
					
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("ViewF")){
					String sql="select sid,s_name,branch_name,year,mobile,email from student_details";
					ArrayList al=DBConnect.alumniList(sql);
					session.setAttribute("allStud",al);
					System.out.println (al);
					session.setAttribute("content_page","studList.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("ViewA")){
					String sql="select id,name,branch,yop,mob,email from alumni_details";
					ArrayList al=DBConnect.alumniList(sql);
					session.setAttribute("allAlum",al);
					System.out.println (al);
					session.setAttribute("content_page","alumList.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
				else if(action.equals("Post")){
					String heading=req.getParameter("heading");
					String msg=req.getParameter("msg");
					String sql="insert into invitation (heading,msg,date) values('"+heading+"','"+msg+"',NOW())";
					int u=DBConnect.updateQuery(sql);
					session.setAttribute("content_page","invit.jsp");
					res.sendRedirect("admin/template.jsp");
					
				}//if
			}
			else {
				System.out.println ("Sorry...........\n No Module Found :-(");	
			}//else
		
		}//process
}//class