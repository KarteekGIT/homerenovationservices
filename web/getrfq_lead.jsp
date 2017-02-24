
<%@page import = "com.connection.DBConnection" %>
<%@page import = "java.sql.*" %>
<%
  int spid = 0;
  String cid="", cname="", cext="", cnumber="", cadd="", calt="", type_of_dwell="", single_semi_detached="";
  String pcname="", pcnumber="", ext="", fax="", sadd="";
  String snumber="", sname="", dep="", email="", ques1="", ques2="", ques3="", ques4="", ques5="", summary="";
  String site_id="", site_contact_name="", site_ext="", site_p_number="", site_alt_number="", site_add="";
  String site_town_house="", high_triplex=""; 
  int rfq = Integer.parseInt(request.getParameter("rfq").trim());
  out.print(rfq);
  session.setAttribute("rfq", rfq);
  try{ 
        Connection connect = null;   
        DBConnection con = new DBConnection(); 

        connect = con.getConnection();

            Statement st = connect.createStatement();
            String getQuery = "SELECT * FROM leadinfosheet WHERE leadsheet_id = " + rfq;
 
            ResultSet rs = st.executeQuery(getQuery);
            while(rs.next()){
                cid                     = rs.getString("customer_id");
                cadd                    = rs.getString("customer_address");
                cname                   = rs.getString("customer_name");
                cext                    = rs.getString("customer_extension");
                cnumber                 = rs.getString("customer_primary_number");
                calt                    = rs.getString("customer_alternate_number");
                type_of_dwell           = rs.getString("type_of_dwelling");
                single_semi_detached    = rs.getString("single_semi_detached");
                sname                   = rs.getString("store_name");
                snumber                 = rs.getString("store_number");
                dep                     = rs.getString("department");
                email                   = rs.getString("email");
                pcname                  = rs.getString("primary_contact_name");
                pcnumber                = rs.getString("primary_contact_number");
                ext                     = rs.getString("extension");
                fax                     = rs.getString("fax");
                sadd                    = rs.getString("store_address");
                site_id                 = rs.getString("site_id");
                site_contact_name       = rs.getString("site_contact_name");
                site_ext                = rs.getString("site_extension");
                site_p_number           = rs.getString("site_primary_number");
                site_alt_number         = rs.getString("site_alt_number");
                site_add                = rs.getString("site_address");
                site_town_house         = rs.getString("site_town_house");
                high_triplex            = rs.getString("high_risk_triplex");
                summary                 = rs.getString("summary");
                
            }
            
                    
  }catch(Exception e){
      out.println("Something went wrong in getrfqapi please<a href='leadinfosheet.jsp'> click here</a> to go back"+e.getMessage());
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
            <span id="cid"><%= cid %></span><br>
            <span id="cadd"><%= cadd %></span><br>
            <span id="cname"><%= cname %></span><br>
            <span id="cext"><%= cext %></span><br>
            <span id="cnumber"><%= cnumber %></span><br>
            <span id="calt"><%= calt %></span><br>
            <span id="type_of_dwell"><%= type_of_dwell %></span><br>
            <span id="single_semi_detached"><%= single_semi_detached %></span><br>
            <span id="sname"><%= sname %></span><br>
            <span id="snumber"><%= snumber %></span><br>
            <span id="dep"><%= dep %></span><br>
            <span id="email"><%= email %></span><br>
            <span id="pcname"><%= pcname %></span><br>
            <span id="pcnumber"><%= pcnumber %></span><br>
            <span id="ext"><%= ext %></span><br>
            <span id="fax"><%= fax %></span><br>
            <span id="sadd"><%= sadd %></span><br>
            <span id="site_id"><%= site_id %></span><br>
            <span id="site_contact_name"><%= site_contact_name %></span><br>
            <span id="site_ext"><%= site_ext %></span><br>
            <span id="site_p_number"><%= site_p_number %></span><br>
            <span id="site_alt_number"><%= site_alt_number %></span><br>
            <span id="site_add"><%= site_add %></span><br>
            <span id="site_town_house"><%= site_town_house %></span><br>
            <span id="high_triplex"><%= high_triplex %></span><br>
            <span id="summary"><%= summary %></span><br>
        </span>
    </body>
</html>