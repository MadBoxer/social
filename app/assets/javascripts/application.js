//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require jquery-fileupload
function get_all_for_select(src, module, pars, where, view_field, func){
	func = func != undefined ? func : 'get_all'
	console.debug(func)
	$.ajax({
      url :'/administration/do',
      type : 'get',
      dataType : 'json', 
      data : {module : module, func : func, pars : pars},
      success: function(response){
        opts = new Array($('<option></option>').val(0).text('Не указано'));
        
        $(response).each(function(){
          opts.push($('<option></option>').val(this.id).text($(this).attr(view_field))) 
        });
        
        src.closest('form').find(where).empty().append(opts);
        
      }
    });
}