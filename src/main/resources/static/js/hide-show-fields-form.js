$("#tecnico_ou_nao").change(
		function() {
			if ($(this).val() == "Sim") {
				$('.tecnologia').show();
				$('.atividades').hide();
			} else {
				$('.tecnologia').hide();
				$('.atividades').show();
			}
		});
$("#tecnico_ou_nao").trigger("change");

$("#possui_filhos_select").change(
		function() {
			if ($(this).val() == "Sim") {
				$('#quant_filhos_input').removeAttr('disabled');
				$('#idade_filhos_input').removeAttr('disabled');
				$('#idade_filhos_input').attr('required', true);
				$('#quant_filhos_input').val('1');
				$('#idade_filhos_btn').removeAttr('disabled');

			} else {
				$('#quant_filhos_input').attr('disabled', true);
				$('#idade_filhos_input').attr('disabled', true);
				$('#idade_filhos_input').removeAttr('required');
				$('#quant_filhos_input').val('0');
				$("#idade_filhos_input").tagsinput('removeAll');
				$('#idade_filhos_btn').attr('disabled', true);
			}
		});
$("#possui_filhos_select").trigger("change");

$('.enviar_div').hide();
$('#concordoForm').click(function() {
	if ($(this).is(':checked')) {

		$('#enviar').removeAttr('disabled'); // enable input
		$('.enviar_div').show();
		$('#limpar').removeAttr('disabled'); // enable input

	} else {
		$('#enviar').attr('disabled', true); // disable input
		$('.enviar_div').hide();
		$('#limpar').attr('disabled', true); // disable input
	}
});

$("#conhecimento_outras_tec_select").change(function() {
	if ($(this).val() == "Sim") {
		$('#possui_tec_input').removeAttr('disabled');
		$('#possui_tec_btn').removeAttr('disabled');
		$('#possui_tec_input').attr('required', true);

	} else {
		$('#possui_tec_input').attr('disabled', true);
		$("#possui_tec_input").tagsinput('removeAll');
		$('#possui_tec_btn').attr('disabled', true);
		$('#possui_tec_input').removeAttr('required');
	}
});
$("#conhecimento_outras_tec_select").trigger("change");

$("#restricao_local_select").change(function() {
	if ($(this).val() == "Sim") {
		$('#restricao_local_input').removeAttr('disabled');
		$('#restricao_local_btn').removeAttr('disabled');
		$('#restricao_local_input').attr('required', true);

	} else {
		$("#restricao_local_input").tagsinput('removeAll');
		$('#restricao_local_input').attr('disabled', true);
		$('#restricao_local_btn').attr('disabled', true);
		$('#restricao_local_input').removeAttr('required');
	}
});
$("#restricao_local_select").trigger("change");

$("#interesse_outra_area_select").change(function() {
	if ($(this).val() == "Sim") {
		$('#interesse_outra_area_input').removeAttr('disabled');
		$('#interesse_outra_area_btn').removeAttr('disabled');
		$('#interesse_outra_area_input').attr('required', true);

	} else {
		$("#interesse_outra_area_input").tagsinput('removeAll');
		$('#interesse_outra_area_input').attr('disabled', true);
		$('#interesse_outra_area_btn').attr('disabled', true);
		$('#interesse_outra_area_input').removeAttr('required');
	}
});
$("#interesse_outra_area_select").trigger("change");

$("#possui_certificados_select").change(function() {
	if ($(this).val() == "Sim") {
		$('#possui_certificados_input').removeAttr('disabled');
		$('#possui_certificados_btn').removeAttr('disabled');
		$('#possui_certificados_input').attr('required', true);

	} else {
		$("#possui_certificados_input").tagsinput('removeAll');
		$('#possui_certificados_input').attr('disabled', true);
		$('#possui_certificados_btn').attr('disabled', true);
		$('#possui_certificados_input').removeAttr('required');
	}
});
$("#possui_certificados_select").trigger("change");