class Administration::Settings::PoliticsController < Administration::SettingsController
  private #------------------
  
  def get_redirect
    @redirect_to = administration_settings_politics_path
  end 
end
