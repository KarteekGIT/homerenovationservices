function getrfq_lead(rf){
    var rfq = rf;

    $.ajax({
        'url':'getrfq_lead.jsp',
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
            var cid           = document.getElementById("cid").innerHTML;
            var cadd         = document.getElementById("cadd").innerHTML;
            var cname            = document.getElementById("cname").innerHTML;
            var cext          = document.getElementById("cext").innerHTML;
            var cnumber            = document.getElementById("cnumber").innerHTML;
            var calt         = document.getElementById("calt").innerHTML;
            var type_of_dwell         = document.getElementById("type_of_dwell").innerHTML;
            var single_semi_detached       = document.getElementById("single_semi_detached").innerHTML;
            var sname            = document.getElementById("sname").innerHTML;
            var snumber         = document.getElementById("snumber").innerHTML;
            var dep           = document.getElementById("dep").innerHTML;
            var email         = document.getElementById("email").innerHTML;
            var pcname        = document.getElementById("pcname").innerHTML;
            var pcnumber    = document.getElementById("pcnumber").innerHTML;
            var ext    = document.getElementById("ext").innerHTML;
            var fax  = document.getElementById("fax").innerHTML;
            var sadd  = document.getElementById("sadd").innerHTML;
            var site_id  = document.getElementById("site_id").innerHTML;
            var site_contact_name  = document.getElementById("site_contact_name").innerHTML;
            var site_ext  = document.getElementById("site_ext").innerHTML;
            var site_p_number  = document.getElementById("site_p_number").innerHTML;
            var site_alt_number  = document.getElementById("site_alt_number").innerHTML;
            var site_add  = document.getElementById("site_add").innerHTML;
            var site_town_house  = document.getElementById("site_town_house").innerHTML;
            var high_triplex  = document.getElementById("high_triplex").innerHTML;
            var summary  = document.getElementById("summary").innerHTML;
            
                    
            document.getElementById("customer_id").value             = cid;
            document.getElementById("customer_address").value           = cadd;
            document.getElementById("customer_name").value   = cname;
            document.getElementById("customer_extension").value          = cext;
            document.getElementById("customer_primary_number").value         = cnumber;
            document.getElementById("customer_alternate_number").value       = calt;
            document.getElementById("type_of_dwelling").value   = type_of_dwell;
            document.getElementById("single_semi").value        = single_semi_detached;
            document.getElementById("store_name").value         = sname;
            document.getElementById("store_number").value         = snumber;
            document.getElementById("department").value              = dep;
            document.getElementById("em").value              = email;
            document.getElementById("primary_contact_name").value              = pcname;
            document.getElementById("primary_contact_number").value         = pcnumber;
            document.getElementById("extension").value            = ext;
            document.getElementById("fax#").value                  = fax;
            document.getElementById("store_address").value                  = sadd;
            document.getElementById("site_identification").value                  = site_id;
            document.getElementById("site_customer_name").value                  = site_contact_name;
            document.getElementById("site_extension").value                  = site_ext;
            document.getElementById("site_primary_number").value                  = site_p_number;
            document.getElementById("site_alternate_number").value                  = site_alt_number;
            document.getElementById("site_address").value                  = site_add;
            document.getElementById("site_town").value                  = site_town_house;
            document.getElementById("high_rise_triplex").value                  = high_triplex;
            document.getElementById("notes").value                  = summary;
                   
        }
    });
}
