/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function getrfq(rf){
    var rfq = rf;
    var id = 0;
    //var data;
    $.ajax({
        'url':'getrfqapi.jsp',
        'type':'POST',
        'async':false,
        'data':{'rfq' : rfq},
        'statusCode': {
            404: function () { $(".setrfq").text("Page not found"); },
            500: function () { $("#setrfq").text("internal server error"); }
        },
        'success':function(data){
            id = data;
            document.getElementById("setrfq").innerHTML = data;
            var cname           = document.getElementById("cname").innerHTML;
            var cnumber         = document.getElementById("cnumber").innerHTML;
            var calt            = document.getElementById("calt").innerHTML;
            var spname          = document.getElementById("spname").innerHTML;
            var spid            = document.getElementById("spid").innerHTML;
            var timecin         = document.getElementById("timecin").innerHTML;
            var datecin         = document.getElementById("datecin").innerHTML;
            var folupcall       = document.getElementById("folupcall").innerHTML;
            var doap            = document.getElementById("doap").innerHTML;
            var summary         = document.getElementById("summary").innerHTML;
            var sname           = document.getElementById("sname").innerHTML;
            var snumber         = document.getElementById("snumber").innerHTML;
            var scperson        = document.getElementById("scperson").innerHTML;
            var question_one    = document.getElementById("ques1").innerHTML;
            var question_two    = document.getElementById("ques2").innerHTML;
            var question_three  = document.getElementById("ques3").innerHTML;
                    
            document.getElementById("store_name").value             = sname;
            document.getElementById("store_number").value           = snumber;
            document.getElementById("store_contact_person").value   = scperson;
            document.getElementById("customer_name").value          = cname;
            document.getElementById("primary_number").value         = cnumber;
            document.getElementById("alternate_number").value       = calt;
            document.getElementById("name_of_sales_person").value   = spname;
            document.getElementById("sales_person_id").value        = spid;
            document.getElementById("date_called_in").value         = datecin;
            document.getElementById("time_called_in").value         = timecin;
            document.getElementById("question1").value              = question_one;
            document.getElementById("question2").value              = question_two;
            document.getElementById("question3").value              = question_three;
            document.getElementById("follow_up_call").value         = folupcall;
            document.getElementById("date_of_app").value            = doap;
            document.getElementById("scope").value                  = summary;
                   
        }
    });
}
