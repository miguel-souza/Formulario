 $("#paymentType").change(function() {
	  if ($(this).val() == "pizza") {
	    $("#firstName").prop('required', true);
	  } else {
	    $("#firstName").prop('required', false);
	  }
	});
  
$('#firstName,#paymentType').change(function() {
        var isValid = true;
         $('#firstName,#paymentType').filter('[required]:visible').each(function() {
          if ( $(this).val() === '' )
             isValid = false;
        });
        if( isValid ) {
        	$('#submitBtn').attr('disabled', true);
        	//$('#submitBtn').prop('disabled', true);
          
        } else {
        	$('#submitBtn').removeAttr('disabled');
        	 //$('#submitBtn').prop('disabled', false);
        };
    });
 
/*
$('input,textarea,select').change(function() {
        var isValid = true;
         $('input,textarea,select').filter('[required]:visible').each(function() {
          if ( $(this).val() === '' )
             isValid = false;
        });
        if( isValid ) {
        	$('#submitBtn').attr('disabled', true);
        	//$('#submitBtn').prop('disabled', true);
          
        } else {
        	$('#submitBtn').removeAttr('disabled');
        	 //$('#submitBtn').prop('disabled', false);
        };
    });
*/