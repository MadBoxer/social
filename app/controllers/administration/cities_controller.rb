class Administration::CitiesController < Administration::ScaffoldController
  
  private #------------------
  
  def get_redirect
    @redirect_to = administration_cities_path
  end 
  
end
