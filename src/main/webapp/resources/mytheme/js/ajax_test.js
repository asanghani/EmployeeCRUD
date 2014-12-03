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
/* --------------------------------------------------------------------This is for radio-table-ajax, disable or enabled*/
$(window).load(function(){
	$('#efieldset').hide();
	$('#cfieldset').hide();
});


$(function() {
	$('#eradio').on('change', function() {
        if ($(this).val() == 'emplist') {
            $('#select_1').prop('disabled', false);
            $('#select_2').prop('disabled', true);
            $('#select_2').val('NONE');
            $('#cfieldset').hide();
            $('#efieldset').show();   
        }
    });
});
$(function() {
	$('#cradio').on('change', function() {
        if ($(this).val() == 'carlist') {
            $('#select_1').prop('disabled', true);
            $('#select_1').val('NONE');
            $('#select_2').prop('disabled', false);
            $('#efieldset').hide();
            $('#cfieldset').show();
            /*$('#efieldset').prop('disabled', true);*/
        }
    });
});