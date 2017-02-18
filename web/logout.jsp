<%@page import = "com.connection.DBConnection" %>
<%
HttpSession newsession = request.getSession(false);
    if (newsession != null) 
    {
         newsession.invalidate();

    }

   response.sendRedirect("index.jsp");
   DBConnection.getConnection().close();
   return;
%>