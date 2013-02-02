$(document).ready(function(){
  $('select.country').change(function(){
  	get_all_for_select($(this), 'countries', {country : $(this).val()}, '.country_city', 'name')
  });
  $('select.country_city').change(function(){
  	get_all_for_select($(this), 'cities', {city : $(this).val()}, '.university', 'abbr')
  });
  $('select.university').change(function(){
  	get_all_for_select($(this), 'universities', {university : $(this).val()}, '.faculty', 'name', 'get_faculties')
  	get_all_for_select($(this), 'universities', {university : $(this).val()}, '.faculty', 'name', 'get_faculties')
  });
  
  $('#new_album').click(function(){
  	$('#new_album_form').dialog({width:450});
  });
});