$(document).ready(function(){
  $('select#country_city_id').change(function(){
    get_all_for_select($(this), 'cities', {city : $(this).val()}, '#university_id', 'abbr')
  });
});