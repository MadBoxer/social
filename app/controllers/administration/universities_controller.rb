class Administration::UniversitiesController < Administration::ScaffoldController
  
  private #-----------------
  def get_redirect
    [:administration, :universities]
  end
  
end
