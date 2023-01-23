 <%@page import="java.sql.*" %>
 <%

        try {
            String usrname = request.getParameter("usn");


            Class.forName("com.mysql.jdbc.Driver");
            //out.println("Drivers Installed");
           Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/alumini_data","root", "root");
           Statement st = conn.createStatement();
           String check1="none";
           boolean exists = false;

       ResultSet rs = st.executeQuery("select * from alumni_details");

            while(rs.next())
                {
                check1=rs.getString("usn");


                if (usrname.equals(check1)) {
                   exists =  true;
                    break;
                }
               }
       if(exists)
            {
             %><%="usn already exists"%><%
            }
            else
            {
            %>
            <%=""%><%
                  }
       }

          
            catch (Exception e) {
            e.printStackTrace();
            out.println("Error Occured");
        }

        %>


