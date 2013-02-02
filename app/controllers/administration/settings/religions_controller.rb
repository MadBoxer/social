class Administration::Settings::ReligionsController < Administration::SettingsController
  
  private #------------------
  
  def get_redirect
    @redirect_to = administration_settings_religions_path
  end 
end
