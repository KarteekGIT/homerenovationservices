        <!DOCTYPE html>
        <html>
            <head>
                <title>Estimated Cost</title>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" type="text/css" href="css/callreport.css">
                <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3/jquery.min.js"></script>
                <link rel="stylesheet" type="text/css" href="css/menubar.css">
                <script type="text/javascript" src="js/getrfq.js"></script>
                <style>
                    div {padding: 0px 0px 15px 0px;}
                    div {border: solid black 1px;}
                </style>    
            </head>
            <body>
            <%@include file="menubar.jsp" %>
                <form action="callreport.jsp" method="post" style="width:645px;">
                        <!-- ============================== Fieldset 1 ============================== -->
                        <span style="position:absolute; top:44px; right:2px">
                                <label for="input-one" class="float"><strong>Get RFQ</strong></label><br />
                                <input class="inp-text" name="rfq" id="input-one" type="text" size="30" onchange="getrfq(this.value)" /><br />
                        </span>
                        <fieldset>
                            
                                <legend>Store Information</legend>
                            <div style="">
                                <label for="input-two" class="float"><strong>Sur-Charge:</strong></label>
                                <select style="width:145px;" name="sur_charge">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                                </select>
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Bin</strong></label>
                                <select style="width:145px;" name="bin">
                                        <option for="option1" value="14yd">14 Yard</option>
                                        <option for="option2" value="20yd">20 Yard</option>
                                </select>        
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Permit</strong></label>
                                <select style="width:145px;" name="permit">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                                </select>                                
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Customer Permit</strong></label>
                                <select style="width:145px;" name="cust_permit">
                                        <option for="option1" value="Yes">Yes</option>
                                        <option for="option2" value="No">No</option>
                            
                                </select>
                            </div>    
                        </fieldset>
                        <fieldset>
                                <legend>Main Area Renovation</legend>
                            <div>    
                                <label for="input-two" class="float"><strong>Ceiling Wallboard</strong></label><br />
                                <select style="width:145px;" name="ceiling">
                                        <option for="option1" value="remove">Remove</option>
                                        <option for="option2" value="replace">Replace</option>
                                        <option for="option2" value="tapping">Tapping</option>
                                </select>
                                <select style="width:145px;" name="ceil">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Wallboarding</strong></label><br />
                                <select style="width:145px;" name="wallboard">
                                        <option for="option1" value="remove">Remove</option>
                                        <option for="option2" value="replace">Replace</option>
                                        <option for="option2" value="tapping">Tapping</option>
                                </select>
                                <select style="width:145px;" name="wall">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                                
                            <div>
                                <label for="input-two" class="float"><strong>Remove Wall</strong></label><br />
                                <select style="width:145px;" name="remove_wall">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />                                
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Build Wall</strong></label><br />
                                <select style="width:145px;" name="build_wall">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Surcharge</strong></label><br />
                                <select style="width:145px;" name="surcharge_wall">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Flooring(Remove existing and replace with tiles)</strong></label><br />
                                <select style="width:145px;" name="flooring">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Tile/Wood Baseboard</strong></label><br />
                                <select style="width:145px;" name="baseboard">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Install Waincoating</strong></label><br />
                                <select style="width:145px;" name="waincoating">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                                <select style="width:145px;" name="install">
                                        <option for="option1" value="48inch">48 Inches</option>
                                        <option for="option2" value="96inch">96 Inches</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Trim(Doors/Windows)</strong></label><br />
                                <select style="width:145px;" name="trim">
                                        <option for="option1" value="remove">Remove</option>
                                        <option for="option2" value="replace">Replace</option>
                                </select>
                                <input type="checkbox" name="wdtrim" value="base_shoe" />Base Shoe &nbsp;&nbsp;
                                <input type="checkbox" name="wdtrim" value="set_door" />Set Door &nbsp;&nbsp;
                                <input type="checkbox" name="wdtrim" value="set_window" />Set Window&nbsp;&nbsp;
                                <br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Electric Permit</strong></label><br />
                                <select style="width:145px;" name="ele_permit">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Relocating or Closing Circuit</strong></label><br />
                                <select style="width:145px;" name="circuit">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>  
                                <label for="input-two" class="float"><strong>Adding</strong></label><br />
                                <select style="width:145px;" name="adding">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Fan(Retro-Fit)</strong></label><br />
                                <select style="width:145px;" name="fan">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Pots/Shower Lights(Non-insulated)</strong></label><br />
                                <select style="width:145px;" name="pots">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Infloor Heating</strong></label><br />
                                <select style="width:145px;" name="infloor_heating">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Change/Replace Electricals</strong></label>
                                <input type="checkbox" name="crele" value="fixtures" />Fixtures &nbsp;&nbsp;
                                <input type="checkbox" name="crele" value="switches" />Switches &nbsp;&nbsp;
                                <input type="checkbox" name="crele" value="plugs" />Plugs &nbsp;&nbsp;<br /><br />
                            </div>
                            <div>  
                                <label for="input-two" class="float"><strong>Insulate Vapour Barrier</strong></label><br />
                                <select style="width:145px;" name="insulate_vapour">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>   
                                <label for="input-two" class="float"><strong>Licensed Plumber</strong></label><br />
                                <select style="width:145px;" name="licensed_plumber">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Roughs-In(New)</strong></label>
                                <input type="checkbox" name="rinnew" value="Toilet" />Toilet &nbsp;&nbsp;
                                <input type="checkbox" name="rinnew" value="Tub" />Tub &nbsp;&nbsp;
                                <input type="checkbox" name="rinnew" value="Shower" />Shower &nbsp;&nbsp;
                                <input type="checkbox" name="rinnew" value="vanity" />Vanity &nbsp; &nbsp;<br /><br />                                
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Roughs-In(Relocate)</strong></label>
                                <input type="checkbox" name="rinrelocate" value="Toilet" />Toilet &nbsp;&nbsp;
                                <input type="checkbox" name="rinrelocate" value="Tub" />Tub &nbsp;&nbsp;
                                <input type="checkbox" name="rinrelocate" value="Shower" />Shower &nbsp;&nbsp;
                                <input type="checkbox" name="rinrelocate" value="vanity" />Vanity &nbsp; &nbsp;<br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Painting(Prime & Paint)</strong></label>
                                <input type="checkbox" name="painting" value="under_50sf" />Under 50 SF &nbsp;&nbsp;
                                <input type="checkbox" name="painting" value="50sf_100sf" />50 SF - 100 SF &nbsp;&nbsp;
                                <input type="checkbox" name="painting" value="over_100sf" />Over 100 SF &nbsp;&nbsp;<br /><br />
                            </div>    
                        </fieldset>
                        <fieldset>
                                <legend>Lavatory Area Renovation</legend>
                            <div>    
                                <label for="input-two" class="float"><strong>Vanity</strong></label><br />
                                <input type="checkbox" name="vanity" value="2sinks" />2 Sinks &nbsp;&nbsp;
                                <input type="checkbox" name="vanity" value="add_2ndsinks" />Add 2nd Sink &nbsp;&nbsp;
                                <input type="checkbox" name="vanity" value="wall_hung" />Wall Hung &nbsp;&nbsp;
                                <input type="checkbox" name="vanity" value="mirror_me" />Mirror/Me &nbsp;&nbsp;
                                <input type="checkbox" name="vanity" value="upper" />Upper &nbsp;&nbsp;<br /><br />
                            </div>
                            <div> 
                                <label for="input-two" class="float"><strong>Toilet(Remove&Install New/Existing)</strong></label><br />
                                <select style="width:145px;" name="toiletri">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Accessories</strong></label><br />
                                <select style="width:145px;" name="accessories">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>    
                        </fieldset>
                        <fieldset>
                                <legend>Wet Area Renovation</legend>
                                <legend>Tub Area</legend>
                            <div>    
                                <label for="input-two" class="float"><strong>Tub To Tub</strong></label><br />
                                <select style="width:145px;" name="tub_to_tub">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Tub To Tub Prefab Acrylic</strong></label><br />
                                <select style="width:145px;" name="tub_to_tub_pa">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Tub To Shower</strong></label><br />
                                <select style="width:145px;" name="tub_to_shower">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Tub To Shower(Condo or Basement)</strong></label><br />
                                <select style="width:145px;" name="tub_to_shower_cb">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select><br /><br />                        

                                <input type="checkbox" name="rbh" value="remove_bulk_head" />Remove Bulk Head &nbsp;&nbsp;
                                <input type="checkbox" name="rbh" value="tile_ceiling" />Tile Ceiling &nbsp;&nbsp;
                                <input type="checkbox" name="rbh" value="build_nishe" />Build Nishe &nbsp;&nbsp;
                                <input type="checkbox" name="rbh" value="build_bench" />Build Bench &nbsp;&nbsp;
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Grab Bars</strong></label> &nbsp;&nbsp;
                                <label for="input-two" class="float"><strong>Points</strong></label>
                                <input type="text" name="points" class="inp-text" size="30" />
                                <select style="width:145px;" name="grab_bars">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select>
                            </div>    
                                <legend>Show Area</legend>
                            <div>
                                <label for="input-two" class="float"><strong>Custom Tiled Shower</strong></label>
                                <select style="width:145px;" name="tiled_shower">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select>
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Prefab Shower Stahl(Acrylic)</strong></label>
                                <select style="width:145px;" name="prefab_shower_stahl">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select>
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Grab Bars</strong></label>
                                <label for="input-two" class="float" ><strong>Points</strong></label>
                                <input type="text" name="sa_points" class="inp-text" size="30" /> &nbsp;&nbsp;
                                <select style="width:145px;" name="grab_bars_sa">
                                        <option for="option1" value="yes">Yes</option>
                                        <option for="option2" value="no">No</option>
                                </select>
                            </div>    
                        </fieldset>
                        <fieldset>
                                <legend>Estimation</legend>
                            <div>    
                                <label for="input-one" class="float"><strong>Estimated Sub Total</strong></label>
                                <input class="inp-text" size="30" name="es_sub_total" id="customer_name" type="text"  />
                            </div>
                            <div>
                                <label for="input-two" class="float"><strong>Less Promotion If Applicable</strong></label>
                                <input class="inp-text" name="promotion"  id="primary_number" type="text" size="30" />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Sub Total</strong></label><br />
                                <input class="inp-text" name="sub_total"  id="alternate_number" type="text" size="30" />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>H.S.T @ 13%</strong></label>
                                <input class="inp-text" name="hst"  id="alternate_number" type="text" size="30" />
                            </div>
                            <div>    
                                <label for="input-two" class="float"><strong>Estimated Total E & OE</strong></label>
                                <input class="inp-text" name="e_total"  id="alternate_number" type="text" size="30" />
                            </div>    
                        </fieldset>
                        <!-- ============================== Fieldset 1 end ============================== -->


                        <!-- ============================== Fieldset 2 ============================== -->
                        <fieldset>
                                <input type="checkbox" name="last_estimation" value="sub_total_without_tax" />Sub Total Without Tax &nbsp;&nbsp;
                                <input type="checkbox" name="last_estimation" value="follow_up" />Requires Follow Up &nbsp;&nbsp;
                                <input type="checkbox" name="last_estimation" value="declined" />Estimation Declined No Follow Up Required &nbsp;&nbsp;<br />
                        </fieldset>

                        <p><input class="submit-button" type="submit" name="update" value="Update" />
                            <input type="button" onClick="location.href='logout.jsp';" value="Logout" /></p>
                </form>

            </body>
        </html>
