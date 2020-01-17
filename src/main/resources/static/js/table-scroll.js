/*
var $table2 = $('#mydatatable')

/*var $button = $('#button')
var $button2 = $('#button2')

$(function() {
	$button.click(function() {
		$table2.bootstrapTable('showColumn', 'id')
	})
	$button2.click(function() {
		$table2.bootstrapTable('hideColumn', 'id')
	})
});*/
/*
$('#principal_tec').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'principal_tec')
	} else {
		$table2.bootstrapTable('hideColumn', 'principal_tec')
	}
});

$('#outras').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'outras')
	} else {
		$table2.bootstrapTable('hideColumn', 'outras')
	}
});

$('#certificacao').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'certificacao')
	} else {
		$table2.bootstrapTable('hideColumn', 'certificacao')
	}
});

$('#restricoes').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'restricoes')
	} else {
		$table2.bootstrapTable('hideColumn', 'restricoes')
	}
});

$('#beneficios').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'beneficios')
	} else {
		$table2.bootstrapTable('hideColumn', 'beneficios')
	}
});

$('#interesse_area').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'interesse_area')
	} else {
		$table2.bootstrapTable('hideColumn', 'interesse_area')
	}
});

$('#possui_filhos').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'possui_filhos')
	} else {
		$table2.bootstrapTable('hideColumn', 'possui_filhos')
	}
});

$('#qtd_filhos').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'qtd_filhos')
	} else {
		$table2.bootstrapTable('hideColumn', 'qtd_filhos')
	}
});

$('#idade_filhos').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'idade_filhos')
	} else {
		$table2.bootstrapTable('hideColumn', 'idade_filhos')
	}
});

$('#interesse_tec').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'interesse_tec')
	} else {
		$table2.bootstrapTable('hideColumn', 'interesse_tec')
	}
});

$('#interesse_idioma').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'interesse_idioma')
	} else {
		$table2.bootstrapTable('hideColumn', 'interesse_idioma')
	}
});

$('#interesse_comport').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'interesse_comport')
	} else {
		$table2.bootstrapTable('hideColumn', 'interesse_comport')
	}
});

$('#interesse_outros').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'interesse_outros')
	} else {
		$table2.bootstrapTable('hideColumn', 'interesse_outros')
	}
});

$('#ensinar_tec').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'ensinar_tec')
	} else {
		$table2.bootstrapTable('hideColumn', 'ensinar_tec')
	}
});


$('#ensinar_idioma').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'ensinar_idioma')
	} else {
		$table2.bootstrapTable('hideColumn', 'ensinar_idioma')
	}
});


$('#ensinar_comport').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'ensinar_comport')
	} else {
		$table2.bootstrapTable('hideColumn', 'ensinar_comport')
	}
});


$('#ensinar_outros').click(function() {
	// check if checkbox is checked
	if ($(this).is(':checked')) {
		$table2.bootstrapTable('showColumn', 'ensinar_outros')
	} else {
		$table2.bootstrapTable('hideColumn', 'ensinar_outros')
	}
}); */

/*
 * $('#mydatatable tfoot th').each( function() { var title = $(this).text();
 * $(this).html( '<input type="text" placeholder="Busque por ' + title + '"
 * />'); });
 * 
 * table.columns().every(function() { var that = this; $('input',
 * this.footer()).on('keyup change', function() { if (that.search() !==
 * this.value) { that.search(this.value).draw(); } }); });
 */
/*
var options = [];

$( '.dropdown-menu a' ).on( 'click', function( event ) {

   var $target = $( event.currentTarget ),
       val = $target.attr( 'data-value' ),
       $inp = $target.find( 'input' ),
       idx;

   if ( ( idx = options.indexOf( val ) ) > -1 ) {
      options.splice( idx, 1 );
      setTimeout( function() { $inp.prop( 'checked', false ) }, 0);
   } else {
      options.push( val );
      setTimeout( function() { $inp.prop( 'checked', true ) }, 0);
   }

   $( event.target ).blur();
      
   console.log( options );
   return false;
});*/
var $table = $('#mydatatable')

  $(function() {
    $('#toolbar').find('select').change(function () {
      $table.bootstrapTable('destroy').bootstrapTable({
        exportDataType: $(this).val(),
        exportTypes: ['json', 'xml', 'csv', 'txt', 'sql', 'excel', 'pdf',fileName: 'Relatório'],
      	fileName: 'Relatório'
      })
    }).trigger('change')
  });
