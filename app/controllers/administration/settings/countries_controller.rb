class Administration::Settings::CountriesController < Administration::SettingsController
  
  private #------------------
  
  def get_redirect
    @redirect_to = administration_settings_countries_path
  end
end
