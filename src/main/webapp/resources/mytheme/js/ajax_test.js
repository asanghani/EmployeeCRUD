function getemp(){
		    $.getJSON("ajaxupdate", {empid: $('#select_1').val()}, function(data){
		             $('#test').text('');
		             $('#test').append('<p>' + data.firstName + '</p>');
		             $('#test').append('<p>' + data.middleName + '</p>');
		             $('#test').append('<p>' + data.lastName + '</p>');
		             $('#test').append('<p>' + data.age + '</p>');
		             $('#test').append('<p>' + data.phone + '</p>');
		             $('#test').append('<p>' + data.address + '</p>');
		             
		         });  		
	}