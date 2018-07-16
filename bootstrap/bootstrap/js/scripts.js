

$(document).ready(function(){
	
	$(function (){
		$('#ajouter,#pdfl1, #pdfl2isr, #pdfl2gel').tooltip({ placement:'left'});
		$("#pop").popover({placement:'top', trigger:'hover'});
	});
	$('.carousel').carousel({
        interval: 5000 //changes the speed
    })
	//Domaine Licence 1
	$l1algoepr='<tr class="alert alert-success"><td>ajouter une chambre i</td></tr>';
	$("#inser").click(function(){
		$("#ajouter").empty();
		$("#ajouter").html($l1algoepr);
	});

	$l1progcepr='<tr class="alert alert-success"><td>PROGRAMMATION C</td></tr><tr><td><a href="#"><input type="text">Controle Continu 2015/2016</a> | <a href="#">Normale 2015/2016</a> | <a href="#">Rattrapage 2015/2016</a></td></tr> <tr><td><a href="#">Controle Continu 2014/2015</a> | <a href="#">Normale 2014/2015</a> | <a href="#">Rattrapage 2014/2015</a></td></tr> <tr><td><a href="#">Controle Continu 2013/2014</a> | <a href="#">Normale 2013/2014</a> | <a href="#">Rattrapage 2013/2014</a></td></tr> <tr><td><a href="#">Controle Continu 2012/2013</a> | <a href="#">Normale 2012/2013</a> | <a href="#">Rattrapage 2012/2013</a></td></tr>';
	$("#modifier").click(function(){
		$("#ajouter").empty();
		$("#ajouter").html($l1progcepr);
	});
	$l1progce='<tr class="alert alert-success"><td>surprimer C</td></tr><tr><td><a href="#">Controle Continu 2015/2016</a> | <a href="#">Normale 2015/2016</a> | <a href="#">Rattrapage 2015/2016</a></td></tr> <tr><td><a href="#">Controle Continu 2014/2015</a> | <a href="#">Normale 2014/2015</a> | <a href="#">Rattrapage 2014/2015</a></td></tr> <tr><td><a href="#">Controle Continu 2013/2014</a> | <a href="#">Normale 2013/2014</a> | <a href="#">Rattrapage 2013/2014</a></td></tr> <tr><td><a href="#">Controle Continu 2012/2013</a> | <a href="#">Normale 2012/2013</a> | <a href="#">Rattrapage 2012/2013</a></td></tr>';
	$("#modifier").click(function(){
		$("#ajouter").empty();
		$("#ajouter").html($l1progce);
	});

	
});