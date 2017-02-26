<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.connection.DBConnection" %>
<%
String method = request.getMethod().toUpperCase();
String name = "";
try{    
 name = ((String) session.getAttribute("username")).trim();
}catch(NullPointerException e){
%>
<p>An error occurred in leadinfosheet please <a href="index.jsp">Login</a>  
<%
    return;
}    
if(method.equals( "POST" )) {
    try{ 
        int count1 =0;
        Connection connect = null;    
        connect = DBConnection.getConnection();
        Statement st = connect.createStatement();

        String storeName                = request.getParameter("store_name").trim();
        String storeNumber              = request.getParameter("store_number").trim();
        String department               = request.getParameter("department").trim();
        String email                    = request.getParameter("email").trim();
        String primaryContactName       = request.getParameter("primary_contact_name").trim();
        String primaryContactNumber     = request.getParameter("primary_contact_number").trim();
        String storeExtension           = request.getParameter("extension#").trim();
        String storeFax                 = request.getParameter("fax#");
        String storeAddress             = request.getParameter("store_address").trim();
        String custName                 = request.getParameter("customer_name").trim();
        String custId                   = request.getParameter("customer_id").trim();
        String custExtension            = request.getParameter("customer_extension#").trim();
        String custPriNumber            = request.getParameter("customer_primary_number").trim();
        String custAltNumber            = request.getParameter("customer_alternate_number").trim();
        String custAdress               = request.getParameter("customer_address").trim();
        String typeOfDwell              = request.getParameter("type_of_dwelling").trim();
        String singleSemi               = request.getParameter("single_semi_detached").trim();
        String siteId                   = request.getParameter("site_id").trim();
        String siteContactName          = request.getParameter("site_customer_name").trim();
        String siteExtension            = request.getParameter("site_extension#").trim();
        String sitePrimNumber           = request.getParameter("site_primary_number").trim();
        String siteAltNumber            = request.getParameter("site_alternate_number").trim();
        String siteAddress              = request.getParameter("site_address").trim();
        String townHouse                = request.getParameter("site_town_house").trim();
        String highRiseTriplex          = request.getParameter("high_rise_triplex").trim();
        String summary                  = request.getParameter("scope").trim();
        
        if(!storeName.equals("") && 
            !department.equals("") && 
            !storeNumber.equals("") ){
            String insertleadinfo = "INSERT INTO leadinfosheet(store_name, store_number, department,"
                                       + "email, primary_contact_name, primary_contact_number, extension, "
                                       + "fax, store_address, customer_id, customer_name, customer_extension, customer_primary_number,"
                                       + "customer_alternate_number, customer_address, type_of_dwelling, single_semi_detached, "
                                       + "site_id,  site_contact_name,  site_extension, site_primary_number, site_alt_number,"
                                       + "site_address, site_town_house,"
                                       + " high_risk_triplex, summary)"
                                       +"values('"+storeName+"', '" +storeNumber+"', '"+ department
                                       +"', '"+email+"', '" +primaryContactName+"', '"+ primaryContactNumber
                                       +"', '"+storeExtension+"', '" +storeFax+"', '"+ storeAddress
                                       +"', '"+custId+"', '" +custName+"', '"+ custExtension
                                       +"', '"+custPriNumber+"', '" +custAltNumber+"' , '"+ custAdress
                                       +"', '"+typeOfDwell+"', '" +singleSemi+"', '" +siteId
                                       +"', '"+siteContactName+"', '"+ siteExtension+"','"+sitePrimNumber
                                       +"', '"+siteAltNumber+"', '"+siteAddress+"', '"+townHouse+"', '"+highRiseTriplex
                                       +"', '"+summary+"')";

            count1 = st.executeUpdate(insertleadinfo);
            ResultSet rs = st.executeQuery("select last_insert_id() as last_id from callreport");
            while(rs.next()){
                int lastid = rs.getInt("last_id");
            }
            
        }

        if(count1 != 0){
%>
            <script type="text/javascript">alert("Details updated successfully");</script>
<%
        }else{
            connect.setAutoCommit(false);
            connect.rollback();
            connect.commit();
%>
            <script type="text/javascript">alert("Details not updated successfully");</script>
<%
        }        
    }catch(Exception e){
        System.out.println("<p>Exception Occured in callreport try2 : "+e.toString()+"</p>");
    }  
}
if(!name.equals( null )) {
java.util.Date date = new java.util.Date();
String d = date.toString();
String dat = d.substring(0, 11);
String time = d.substring(11, 16);
String year = d.substring(24);
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Lead Info Sheet</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/leadinfosheet.css">
        <link rel="stylesheet" type="text/css" href="css/menubar.css">
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
        <script type="text/javascript" src="js/getrfq_lead.js"></script>
        
    </head>
    <body>
        <div class="menu-items">
            <%@include file="menubar.jsp" %>
        </div>
        <form action="leadinfosheet.jsp" method="post">
                <span style="position:absolute; top:44px; right:2px">
                    <label for="input-one" class="float"><strong>Get RFQ</strong></label><br />
                    <input class="inp-text" name="rfq" id="input-one" type="text" size="30" onchange="getrfq_lead(this.value)" /><br />
                    
                    <label for="input-one" class="float"><strong>Date</strong></label><br />
                    <p><b><span><%= dat %></span>&nbsp;&nbsp;<span><%= year %></span></b></p>
                    <p><%= time %></p>
                    <br />
                </span>
		<!-- ============================== Fieldset 1 ============================== -->
		<fieldset>
			<legend>Store Information</legend>
				<label for="input-one" class="float"><strong>Store Name</strong></label><br />
				<input class="inp-text" name="store_name" id="store_name" type="text" size="30" /><br />

				<label for="input-two" class="float"><strong>Store Number</strong></label><br />
				<input class="inp-text" name="store_number"  id="store_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Department</strong></label><br />
				<input class="inp-text" name="department"  id="department" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Email</strong></label><br />
				<input class="inp-text" name="email"  id="em" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Primary Contact Name</strong></label><br />
				<input class="inp-text" name="primary_contact_name"  id="primary_contact_name" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Primary Contact Number</strong></label><br />
				<input class="inp-text" name="primary_contact_number"  id="primary_contact_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="extension#"  id="extension" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Fax#</strong></label><br />
				<input class="inp-text" name="fax#"  id="fax#" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Store Address</strong></label><br />
				<input class="inp-text" name="store_address"  id="store_address" type="text" size="30" />
		</fieldset>
                <fieldset>
			<legend>Customer Information</legend>
                        
                                <label for="input-two" class="float"><strong>Customer Id</strong></label><br />
				<input class="inp-text" name="customer_id"  id="customer_id" type="text" size="30" />
                                
				<label for="input-one" class="float"><strong>Customer Name</strong></label><br />
				<input class="inp-text" name="customer_name" id="customer_name" type="text" size="30" /><br />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="customer_extension#"  id="customer_extension" type="text" size="30" />

				<label for="input-two" class="float"><strong>Primary Number</strong></label><br />
				<input class="inp-text" name="customer_primary_number"  id="customer_primary_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Alternate Number</strong></label><br />
				<input class="inp-text" name="customer_alternate_number"  id="customer_alternate_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Address</strong></label><br />
				<input class="inp-text" name="customer_address"  id="customer_address" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Type of Dwelling</strong></label><br />
				<input class="inp-text" name="type_of_dwelling"  id="type_of_dwelling" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Single/Semi Detached</strong></label><br />
				<input class="inp-text" name="single_semi_detached"  id="single_semi" type="text" size="30" />                             
		</fieldset>
                <fieldset>
			<legend>Site Information</legend>
                        
                                <label for="input-two" class="float"><strong>Site Id</strong></label><br />
				<input class="inp-text" name="site_id"  id="site_identification" type="text" size="30" />
                                
				<label for="input-one" class="float"><strong>Contact Name</strong></label><br />
				<input class="inp-text" name="site_customer_name" id="site_customer_name" type="text" size="30" /><br />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="site_extension#"  id="site_extension" type="text" size="30" />

				<label for="input-two" class="float"><strong>Primary Number</strong></label><br />
				<input class="inp-text" name="site_primary_number"  id="site_primary_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Alternate Number</strong></label><br />
				<input class="inp-text" name="site_alternate_number"  id="site_alternate_number" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Address</strong></label><br />
				<input class="inp-text" name="site_address"  id="site_address" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Town House</strong></label><br />
				<input class="inp-text" name="site_town_house"  id="site_town" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>High Rise Triplex</strong></label><br />
				<input class="inp-text" name="high_rise_triplex"  id="high_rise_triplex" type="text" size="30" />
		</fieldset>
               


		<!-- ============================== Fieldset 3 ============================== -->
		<fieldset>
			<legend>Summary/Scope/Notes/Comments</legend>
			<textarea name="scope" id="notes" cols="30" rows="5" title="Note or message"></textarea><br />
		</fieldset>
		<!-- ============================== Fieldset 3 end ============================== -->

		<p><input class="submit-button" type="submit" name="Submit" value="Update" /></p>
                
                <span id="setrfq" style="display:none;"></span>
	</form>

    </body>
</html>
<%
  }  
%>