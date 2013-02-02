$(document).ready(function(){
  $('select#country').change(function(){
  	get_all_for_select($(this), 'countries', {country : $(this).val()}, '#country_city_id', 'name')
  });
});