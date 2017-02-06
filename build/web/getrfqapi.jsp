<%-- 
    Document   : getrfqapi
    Created on : 30-Jan-2017, 9:45:15 AM
    Author     : praveen
--%>
<%@page import = "com.connection.DBConnection" %>
<%@page import = "java.sql.*" %>
<%
  int spid = 0, snumber = 0;
  String cname="", cnumber="", calt="", spname="", timecin="", datecin="", folupcall="", doap="";
  String summary="", sname="", scperson="", ques1="", ques2="", ques3="";
  int rfq = Integer.parseInt(request.getParameter("rfq").trim());
  out.print(rfq);
  session.setAttribute("rfq", rfq);
  try{ 
        Connection connect = null;   
        DBConnection con = new DBConnection(); 

        connect = con.getConnection();

            Statement st = connect.createStatement();
            String getQuery = "SELECT "
                    + "CUSTOMER.CUSTOMERNAME, CUSTOMER.CSNUMBER,CUSTOMER.CSALTNUMER, "
                    + "SALE.NAMEOFSP, SALE.SPID, SALE.TIMECALLEDIN, SALE.DATECALLEDIN, SALE.FOLLOWUPCALL,SALE.DOAPPOINTMENT, SALE.SUMMARY,"
                    + "QUESTIONNAIRE.QUESTION1,QUESTIONNAIRE.QUESTION2,QUESTIONNAIRE.QUESTION3,"
                    + "store.STORENAME,store.STORENUMBER,store.STORECONTACTPERSON "
                    + "FROM CUSTOMER JOIN SALE ON CUSTOMER.ID=SALE.ID "
                    + "JOIN QUESTIONNAIRE ON CUSTOMER.ID=QUESTIONNAIRE.id "
                    + "JOIN store ON CUSTOMER.ID=store.ID WHERE CUSTOMER.ID = "+rfq;
            ResultSet rs = st.executeQuery(getQuery);
            while(rs.next()){
                cname = rs.getString("CUSTOMERNAME");
                cnumber = rs.getString("CSNUMBER");
                calt = rs.getString("CSALTNUMER");
                spname = rs.getString("NAMEOFSP");
                spid =Integer.parseInt(rs.getString("SPID"));
                timecin = rs.getString("TIMECALLEDIN");
                datecin = rs.getString("DATECALLEDIN");
                folupcall = rs.getString("FOLLOWUPCALL");
                doap = rs.getString("DOAPPOINTMENT");
                summary = rs.getString("SUMMARY");
                sname = rs.getString("STORENAME");
                snumber = Integer.parseInt(rs.getString("STORENUMBER"));
                scperson = rs.getString("STORECONTACTPERSON");
                ques1 = rs.getString("QUESTION1");
                ques2 = rs.getString("QUESTION2");
                ques3 = rs.getString("QUESTION1");
                
            }
            
                    
  }catch(Exception e){
      out.println("Something went wrong in getrfqapi please<a href='callreport.jsp'> click here</a> to go back"+e.getMessage());
  }
  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <span class="rfq">
            <span id="cname"><%= cname %></span><br>
            <span id="cnumber"><%= cnumber %></span><br>
            <span id="calt"><%= calt %></span><br>
            <span id="spname"><%= spname %></span><br>
            <span id="spid"><%= spid %></span><br>
            <span id="timecin"><%= timecin %></span><br>
            <span id="datecin"><%= datecin %></span><br>
            <span id="folupcall"><%= folupcall %></span><br>
            <span id="doap"><%= doap %></span><br>
            <span id="summary"><%= summary %></span><br>
            <span id="sname"><%= sname %></span><br>
            <span id="snumber"><%= snumber %></span><br>
            <span id="scperson"><%= scperson %></span><br>
            <span id="ques1"><%= ques1 %></span><br>
            <span id="ques2"><%= ques2 %></span><br>
            <span id="ques3"><%= ques3 %></span><br>
        </span>
    </body>
</html>