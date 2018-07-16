// JavaScript Document
$(document).ready(function() {
	var $mod_modulegroupcode = $('#mod_modulegroupcode');
	var $confirme = $('#confirme');

	// chargement de la liste de localité un
	$.ajax({
		url: 'liste.php',
		data: 'go', // on envoie $_GET['go']
		dataType: 'json', // on veut un retour JSON
		success: function(json) {
			$.each(json, function(index, value) {
				// pour chaque noeud JSON
				// on ajoute l option dans la liste
				$('#mod_modulegroupcode').append('<option value="'+ index +'">'+ value +'</option>');
			});
		}
	});

	// à la sélection de la localité un dans la liste
	$mod_modulegroupcode.on('change', function() {
		var val = $(this).val(); // on récupère la valeur de la localité un
		if(val != '') {
			$.ajax({
				url: 'liste.php',
				data: 'mod_modulegroupcode='+ val, // on envoie $_GET['mod_modulegroupcode']
				dataType: 'json',
				success: function(json) {
					$.each(json, function(index, value) {
						$confirme.append('<option value="'+ value +'">confirmer </option>');
                                                $test.empty();
                                                $test.append('<input type="text" value="'+value+'"/>');
					});
				}
			});
		}
		else {
			
		}
	});

	// à la sélection de la localité deux dans la liste
	$confirme.on('click',function() {
		var val = $(this).val(); // on récupère la valeur de la localité deux
		if(val != '') {
			
			$.ajax({
				url: 'liste.php',
				data: 'confirme='+ val, // on envoie $_GET['confirme']
				dataType: 'json',
				success: function(json) {
					$.each(json, function(index, value) {
						//$confirme.append('<a id="cat" href="#">'+ value +'</a> ');
                                                window.location=("index.php?name="+value);
					});
				}
			});
		}
		else {
			
		}
	});
});