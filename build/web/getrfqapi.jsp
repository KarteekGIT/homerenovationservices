
<%@page import = "com.connection.DBConnection" %>
<%@page import = "java.sql.*" %>
<%
  int spid = 0, snumber = 0;
  String cname="", cnumber="", calt="", spname="", timecin="", datecin="", folupcall="", doap="";
  String summary="", sname="", scperson="", ques1="", ques2="", ques3="", ques4="", ques5="";
  int rfq = Integer.parseInt(request.getParameter("rfq").trim());
  out.print(rfq);
  session.setAttribute("rfq", rfq);
  try{ 
        Connection connect = null;   
        DBConnection con = new DBConnection(); 

        connect = con.getConnection();

            Statement st = connect.createStatement();
            String getQuery = "SELECT * FROM callreport WHERE callreport_id = " + rfq;
 
            ResultSet rs = st.executeQuery(getQuery);
            while(rs.next()){
                cname = rs.getString("customer_name");
                cnumber = rs.getString("customer_number");
                calt = rs.getString("customer_alt_number");
                spname = rs.getString("name_of_sp");
                spid =Integer.parseInt(rs.getString("sales_person_id"));
                timecin = rs.getString("timecalled_in");
                datecin = rs.getString("datecalled_in");
                folupcall = rs.getString("follow_up_call");
                doap = rs.getString("date_of_appointment");
                summary = rs.getString("summary");
                sname = rs.getString("store_name");
                snumber = Integer.parseInt(rs.getString("store_number"));
                scperson = rs.getString("store_contact_person");
                ques1 = rs.getString("question1");
                ques2 = rs.getString("question2");
                ques3 = rs.getString("question3");
                ques4 = rs.getString("question4");
                ques5 = rs.getString("question5");
                
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