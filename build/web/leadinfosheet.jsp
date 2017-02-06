<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.connection.DBConnection" %>
<%
    String name = "";
try{    
 name = ((String) session.getAttribute("username")).trim();
}catch(Exception e){
%>
<p>An error occurred in leadinfosheet please <a href="index.jsp">Login</a>  
<%
    return;
}    
    
%>

<!DOCTYPE html>
<html>
    <head>
        <title>Call Report</title>
         <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/leadinfosheet.css">
        <link rel="stylesheet" type="text/css" href="css/menubar.css">
    </head>
    <body>
        <div class="menu-items">
            <%@include file="menubar.jsp" %>
        </div>
        <form action="leadinfosheet.jsp" method="post">
		<!-- ============================== Fieldset 1 ============================== -->
		<fieldset>
			<legend>Store Information</legend>
				<label for="input-one" class="float"><strong>Store Name</strong></label><br />
				<input class="inp-text" name="store_name" id="input-one" type="text" size="30" /><br />

				<label for="input-two" class="float"><strong>Store Number</strong></label><br />
				<input class="inp-text" name="store_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Department</strong></label><br />
				<input class="inp-text" name="department"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Email</strong></label><br />
				<input class="inp-text" name="email"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Primary Contact Name</strong></label><br />
				<input class="inp-text" name="primary_contact_name"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Primary Contact Number</strong></label><br />
				<input class="inp-text" name="primary_contact_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="extension#"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>FAX#</strong></label><br />
				<input class="inp-text" name="fax#"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Store Address</strong></label><br />
				<input class="inp-text" name="store_address"  id="input-two" type="text" size="30" />
		</fieldset>
                <fieldset>
			<legend>Customer Information</legend>
                        
                                <label for="input-two" class="float"><strong>Customer Id</strong></label><br />
				<input class="inp-text" name="customer_id"  id="input-two" type="text" size="30" />
                                
				<label for="input-one" class="float"><strong>Customer Name</strong></label><br />
				<input class="inp-text" name="customer_name" id="input-one" type="text" size="30" /><br />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="extension#"  id="input-two" type="text" size="30" />

				<label for="input-two" class="float"><strong>Primary Number</strong></label><br />
				<input class="inp-text" name="primary_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Alternate Number</strong></label><br />
				<input class="inp-text" name="alternate_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Address</strong></label><br />
				<input class="inp-text" name="address"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Type of Dwelling</strong></label><br />
				<input class="inp-text" name="type_of_dwelling"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Single/Semi Detached</strong></label><br />
				<input class="inp-text" name="single/semi_detached"  id="input-two" type="text" size="30" />
                                
                                
                                
                                
		</fieldset>
                 <fieldset>
			<legend>Site Information</legend>
                        
                                <label for="input-two" class="float"><strong>Site Id</strong></label><br />
				<input class="inp-text" name="customer_id"  id="input-two" type="text" size="30" />
                                
				<label for="input-one" class="float"><strong>Contact Name</strong></label><br />
				<input class="inp-text" name="customer_name" id="input-one" type="text" size="30" /><br />
                                
                                <label for="input-two" class="float"><strong>Extension#</strong></label><br />
				<input class="inp-text" name="extension#"  id="input-two" type="text" size="30" />

				<label for="input-two" class="float"><strong>Primary Number</strong></label><br />
				<input class="inp-text" name="primary_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Alternate Number</strong></label><br />
				<input class="inp-text" name="alternate_number"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Address</strong></label><br />
				<input class="inp-text" name="address"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>Town House</strong></label><br />
				<input class="inp-text" name="town_house"  id="input-two" type="text" size="30" />
                                
                                <label for="input-two" class="float"><strong>High Rise Triplex</strong></label><br />
				<input class="inp-text" name="high_rise_triplex"  id="input-two" type="text" size="30" />
                                
                                
                                
                                
		</fieldset>
               


		<!-- ============================== Fieldset 3 ============================== -->
		<fieldset>
			<legend>Summary/Scope/Notes/Comments</legend>
			<textarea name="scope" id="message" cols="30" rows="5" title="Note or message"></textarea><br />
		</fieldset>
		<!-- ============================== Fieldset 3 end ============================== -->

		<p><input class="submit-button" type="submit" name="Submit" value="SUBMIT" />
                <a class="submit-button" href="logout.jsp" >Logout</a></p></p>
	</form>

    </body>
</html>
