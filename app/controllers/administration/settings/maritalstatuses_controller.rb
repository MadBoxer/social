class Administration::Settings::MaritalstatusesController < Administration::SettingsController
  
  private #---------------
  
  def get_redirect
    administration_settings_maritalstatuses_path
  end
end
