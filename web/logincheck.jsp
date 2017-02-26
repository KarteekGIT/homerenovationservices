<%@page import="java.security.MessageDigest"%>
<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.connection.DBConnection" %>

<%
 
    StringBuffer msg = new StringBuffer("");
    String username=request.getParameter("username");
    String password=request.getParameter("password");
    String usr = "";
    String pwd = "";
    
    MessageDigest md5 = MessageDigest.getInstance("MD5");
    md5.update(password.getBytes());
    
    byte[] digest = md5.digest();
    StringBuffer hexa = new StringBuffer();
    
    for(int i=0; i < digest.length; i++){
        password = Integer.toHexString(0XFF & digest[i]);
        if(password.length() < 2){
            password = "0" + password;
        }
        hexa.append(password);
    }
    String pass = hexa.toString();
    Connection connect = null;
try{ 
        connect = DBConnection.getConnection();
        String query = "SELECT name, password FROM login";
        Statement st = connect.createStatement();
        ResultSet rs = st.executeQuery(query);
        
        while(rs.next()){
            usr = rs.getString("name");
            pwd = rs.getString("password");
        }
       
       
        
        if((username.equals(usr.trim()) && pass.equals(pwd.trim())))
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
    out.print("An Error Occured Please try again ");
%>
<p><a href="index.jsp" >Login Here </a></p>
<%
    }
%>