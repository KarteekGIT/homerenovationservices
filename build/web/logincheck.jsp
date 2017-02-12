<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.connection.DBConnection" %>

<%
 
    StringBuffer msg = new StringBuffer("");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String usr = "";
    String pwd = "";

    Connection connect = null;
try{ 
        connect = DBConnection.getConnection();
        String query = "SELECT Email, Password FROM Login";
        Statement st = connect.createStatement();
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()){
            usr = rs.getString("Email");
            pwd = rs.getString("Password");
        }
       
       
        
        if((username.equals(usr.trim()) && password.equals(pwd.trim())))
            { 
                session.setAttribute("username" ,username);
                response.sendRedirect("callreport.jsp"); 
%>
 <p> <h2>Redirecting : please <a href="http://localhost:8080/hrs/callreport.jsp" >click here</a>
 <%
                return;
            }else{
               response.sendRedirect("logout.jsp");
               return;
        }
}catch(Exception e){ 
        System.out.println("<p>Exception Occured in logincheck : "+e.getMessage()+e.toString()+e.getLocalizedMessage()+"</p>");
}finally{
    out.print("An Error Occured Please try again");
%>
<p><a href="index.jsp" >Login Here </a></p>
<%
    }
%>