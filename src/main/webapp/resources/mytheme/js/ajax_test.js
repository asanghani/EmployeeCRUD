function getemp(){
		    $.getJSON("ajaxupdate", {empid: $('#select_1').val()}, function(data){
		             $('#test').text('');
		             $('#test').append('<p>' + data.firstName + '</p>');
		             $('#test').append('<p>' + data.middleName + '</p>');
		             $('#test').append('<p>' + data.lastName + '</p>');
		             $('#test').append('<p>' + data.age + '</p>');
		             $('#test').append('<p>' + data.phone + '</p>');
		             $('#test').append('<p>' + data.address + '</p>');
		      
		            /* This code for ajax-form-fill.jsp*/
		             $('#EId').val(data.EId);
		             $('#firstname').val(data.firstName);
		             $('#middlename').val(data.middleName);
		             $('#lastname').val(data.lastName);
		             $('#age').val(data.age);
		             $('#phone').val(data.phone);
		             $('#address').val(data.address);
		            
		         });  		
	}