class Administration::FacultiesController < Administration::ScaffoldController
  
  private #------------------
  
  def get_redirect
    [:administration, :faculties]
  end
  
end
