<%@page import = "java.sql.*" %>
<%@page import = "java.util.*" %>
<%@page import = "com.connection.DBConnection" %>


<%
String method = request.getMethod().toUpperCase();
String name = "";
StringBuffer msg = new StringBuffer("");
try{    
 name = ((String) session.getAttribute("username")).trim();
}catch(Exception e){
%>
<p>An error occurred please in callreport <a href="index.jsp">Login</a>  
<%
    return;
}

 if(method.equals( "POST" )) {
    try{ 
        int count1 =0, count2 = 0, count3 = 0, count4 = 0;
        Connection connect = null;   
        DBConnection con = new DBConnection(); 
        connect = con.getConnection();
        Statement st = connect.createStatement();

        String storeName            = request.getParameter("store_name").trim();
        long storeNumber            = Long.parseLong(request.getParameter("store_number"));
        String storeContactPerson   = request.getParameter("store_contact_person").trim();
        String customerName         = request.getParameter("customer_name").trim();
        long primaryNumber          = Long.parseLong(request.getParameter("primary_number"));
        long alternateNumber        = Long.parseLong(request.getParameter("alternate_number"));
        String nameOfSalesPerson    = request.getParameter("name_of_sales_person").trim();
        int salesPersonId           = Integer.parseInt(request.getParameter("sales_person_id"));
        String dateCalledIn         = request.getParameter("date_called_in").trim();
        String timeCalledIn         = request.getParameter("time_called_in").trim();
        String followUpCall         = request.getParameter("follow_up_call").trim();
        String dateOfApp            = request.getParameter("date_of_app").trim();
        String question1            = request.getParameter("question1").trim();
        String question2            = request.getParameter("question2").trim();
        String question3            = request.getParameter("question3").trim();
        String question4            = "something";
        String question5            = "something";
        String summary              = request.getParameter("scope").trim();
        if(!storeName.equals("") && 
            !storeContactPerson.equals("") && 
            storeNumber != 0 ){
            String insertStore = "INSERT INTO store(STORENAME, STORENUMBER, STORECONTACTPERSON) values('"+storeName+"', '" +storeNumber+"' , '"+ storeContactPerson+"')";
            count1 = st.executeUpdate(insertStore);
        }
        if(!customerName.equals("") && 
            primaryNumber != 0 && 
            alternateNumber != 0){
            String insertCustomer = "INSERT INTO CUSTOMER(CUSTOMERNAME, CSNUMBER, CSALTNUMER) values('"+customerName+"' , ' " + primaryNumber +"', '" + alternateNumber+"')";
            count2 = st.executeUpdate(insertCustomer);
        }
        if( !nameOfSalesPerson.equals("") && 
            salesPersonId != 0 && 
            !dateCalledIn.equals("") && 
            !timeCalledIn.equals("")){
            String insertSale = "INSERT INTO SALE(NAMEOFSP, SPID, TIMECALLEDIN, DATECALLEDIN, FOLLOWUPCALL, DOAPPOINTMENT, SUMMARY ) values('"+nameOfSalesPerson+"', '"+ salesPersonId + "', '" +timeCalledIn+"', '"+ dateCalledIn+"',  '"+followUpCall+"', '"+dateOfApp+"', '"+summary+"')";
            count3 = st.executeUpdate(insertSale);
        }
        if(!question1.equals("") && 
               !question2.equals("") && 
               !question3.equals("")){
                String insertQuestion = "INSERT INTO QUESTIONNAIRE(QUESTION1, QUESTION2, QUESTION3, QUESTION4, QUESTION5) values('"+question1+"', '"+ question2+"' , '" +question3+"', '"+question4+"', '"+question5+"' )";
                count4 = st.executeUpdate(insertQuestion);
            }

        if(count1 != 0 && count2 != 0 && count3 != 0 && count4 != 0 ){
            msg.append("Details updated successfully");
        }else{
            msg.append("Details not updated successfully");
        }        
    }catch(Exception e){
        System.out.println("<p>Exception Occured in callreport try2 : "+e.toString()+"</p>");
    }  
}
if(!name.equals( null )) {
%>

        <!DOCTYPE html>
        <html>
            <head>
                <title>Call Report</title>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" type="text/css" href="css/callreport.css">
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
                <link rel="stylesheet" type="text/css" href="css/menubar.css">
                <script type="text/javascript" src="js/getrfq.js"></script>
            </head>
            <body>
            <%@include file="menubar.jsp" %>
                <% if ( msg.equals("")){ %>

                <% }else { %>
            <center><span class = "msg" ><%= msg %></span></center>
                <% } %>
                <form action="callreport.jsp" method="post">
                        <!-- ============================== Fieldset 1 ============================== -->
                        <fieldset>
                            <legend>R-F-Q</legend>
                                <label for="input-one" class="float"><strong>Get RFQ</strong></label><br />
                                <input class="inp-text" name="rfq" id="input-one" type="text" size="30" onchange="getrfq(this.value)" /><br />
                        </fieldset>
                        <fieldset>
                                <legend>Store Information</legend>
                                        <label for="input-one" class="float"><strong>Store Name</strong></label><br />
                                        <input class="inp-text" name="store_name" id="store_name" type="text" size="30" /><br />

                                        <label for="input-two" class="float"><strong>Store Number</strong></label><br />
                                        <input class="inp-text" name="store_number"  id="store_number" type="text" size="30" />

                                        <label for="input-two" class="float"><strong>Store Contact Person</strong></label><br />
                                        <input class="inp-text" name="store_contact_person"  id="store_contact_person" type="text" size="30" />
                        </fieldset>
                        <fieldset>
                                <legend>Customer Information</legend>
                                        <label for="input-one" class="float"><strong>Customer Name</strong></label><br />
                                        <input class="inp-text" name="customer_name" id="customer_name" type="text" size="30" /><br />

                                        <label for="input-two" class="float"><strong>Primary Number</strong></label><br />
                                        <input class="inp-text" name="primary_number"  id="primary_number" type="text" size="30" />

                                        <label for="input-two" class="float"><strong>Alternate Number</strong></label><br />
                                        <input class="inp-text" name="alternate_number"  id="alternate_number" type="text" size="30" />
                        </fieldset>
                        <fieldset>
                                <legend>Sale Information</legend>
                                        <label for="input-one" class="float"><strong>Name Of Sales Person</strong></label><br />
                                        <input class="inp-text" name="name_of_sales_person" id="name_of_sales_person" type="text" size="30" /><br />

                                        <label for="input-two" class="float"><strong>Sales Person Id</strong></label><br />
                                        <input class="inp-text" name="sales_person_id"  id="sales_person_id" type="text" size="30" />

                                        <label for="input-two" class="float"><strong>Date Called IN</strong></label><br />
                                        <input class="inp-text" name="date_called_in"  id="date_called_in" type="text" size="30" />

                                        <label for="input-two" class="float"><strong>Time Called IN</strong></label><br />
                                        <input class="inp-text" name="time_called_in"  id="time_called_in" type="text" size="30" />
                        </fieldset>
                        <fieldset>
                                <legend>QUESTIONNAIRE</legend>
                                        <label for="input-one" class="float"><strong>Question1</strong></label><br />
                                        <input style="padding : 20px;" id = "question1" class="inp-text" name="question1" type="text" size="30" /><br />

                                        <label for="input-two" class="float"><strong>Question2</strong></label><br />
                                        <input style="padding : 20px;" id = "question2" class="inp-text" name="question2" type="text" size="30" />

                                        <label for="input-two" class="float"><strong>Question3</strong></label><br />
                                        <input style="padding : 20px;" id = "question3" class="inp-text" name="question3" type="text" size="30" />
                        </fieldset>
                        <!-- ============================== Fieldset 1 end ============================== -->


                        <!-- ============================== Fieldset 2 ============================== -->
                        <fieldset>
                                <legend>Miscellaneous</legend>
                                <label for="input-two" class="float"><strong>Requested For</strong></label>
                                <select style="width:145px;">
                                        <option for="option1">Main Bathroom</option>
                                        <option for="option2">Ensuit Bathroom</option>
                                        <option for="option3">Powder Room</option>
                                        <option for="option4">Kitchen</option>
                                        <option for="option5">Basement</option>
                                </select><br />
                                <label for="input-two" class="float"><strong>Budget</strong></label>
                                <select style = "float:left; width: 145px;">
                                        <option for="option1">5000-7000</option>
                                        <option for="option2">7000-9000</option>
                                        <option for="option3">9000-12000</option>
                                        <option for="option4">12000-15000</option>
                                        <option for="option5">15000 and Above</option>
                                </select><br />
                                <label for="input-two" class="float"><strong>Follow Up Call</strong></label><br />
                                <input class="inp-text" name="follow_up_call"  id="follow_up_call" type="text" size="30" />

                                <label for="input-two" class="float"><strong>Date Of Appointment</strong></label><br />
                                <input class="inp-text" name="date_of_app"  id="date_of_app" type="text" size="30" />

                        </fieldset>
                        <!-- ============================== Fieldset 2 end ============================== -->


                        <!-- ============================== Fieldset 3 ============================== -->
                        <fieldset>
                                <legend>Summary/Scope/Notes/Comments</legend>
                                <textarea name="scope" id="scope" cols="30" rows="5" title="Note or message"></textarea><br />
                        </fieldset>
                        <!-- ============================== Fieldset 3 end ============================== -->

                        <p><input class="submit-button" type="submit" name="update" value="update" />
                            <a class="submit-button" href="logout.jsp" >Logout</a></p>
                </form>
            <span id="setrfq" style="display:none;"></span>

            </body>
        </html>
        <%
            }
        %>