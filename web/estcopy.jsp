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
                <form action="callreport.jsp" method="post">
                        <!-- ============================== Fieldset 1 ============================== -->
                        <span style="position:absolute; top:44px; right:2px">
                                <label for="input-one" class="float"><strong>Get RFQ</strong></label><br />
                                <input class="inp-text" name="rfq" id="input-one" type="text" size="30" onchange="getrfq(this.value)" /><br />
                        </span>
                        <fieldset>
                                <legend>Store Information</legend>
                                <label for="input-two" class="float"><strong>Sur-Charge:</strong></label>
                                <select style="width:145px;" name="sur_charge">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                                </select><br />

                                <label for="input-two" class="float"><strong>Bin</strong></label><br />
                                <select style="width:145px;" name="bin">
                                        <option for="option1" value="14yd">14 Yard</option>
                                        <option for="option2" value="20yd">20 Yard</option>
                                </select><br />        

                                <label for="input-two" class="float"><strong>Permit</strong></label><br />
                                <select style="width:145px;" name="permit">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                                </select><br />                                
                                <label for="input-two" class="float"><strong>Customer Permit</strong></label><br />
                                <select style="width:145px;" name="cust_permit">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                                </select><br />
                        </fieldset>
                        <fieldset>
                                <legend>Main Area Renovation</legend>
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
                                        
                                        <label for="input-two" class="float"><strong>Question4</strong></label><br />
                                        <input style="padding : 20px;" id = "question4" class="inp-text" name="question4" type="text" size="30" />
                                        
                                        <label for="input-two" class="float"><strong>Question5</strong></label><br />
                                        <input style="padding : 20px;" id = "question5" class="inp-text" name="question5" type="text" size="30" />
                        </fieldset>
                        <!-- ============================== Fieldset 1 end ============================== -->


                        <!-- ============================== Fieldset 2 ============================== -->
                        <fieldset>
                                <legend>Miscellaneous</legend>
                                <label for="input-two" class="float"><strong>Requested For</strong></label>
                                <select style="width:145px;" name="requested_for">
                                        <option for="option1" value="Main Bathroom">Main Bathroom</option>
                                        <option for="option2" value="Ensuit Bathroom">Ensuit Bathroom</option>
                                        <option for="option3" value="Powder Room">Powder Room</option>
                                        <option for="option4" value="Kitchen">Kitchen</option>
                                        <option for="option5" value="Basement">Basement</option>
                                </select><br />
                                <label for="input-two" class="float"><strong>Budget</strong></label>
                                <select style = "float:left; width: 145px;" name="budget">
                                        <option for="option1" value="5000-7000">5000-7000</option>
                                        <option for="option2" value="7000-9000">7000-9000</option>
                                        <option for="option3" value="9000-12000">9000-12000</option>
                                        <option for="option4" value="12000-15000">12000-15000</option>
                                        <option for="option5" value="15000 and above">15000 and Above</option>
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
