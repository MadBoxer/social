require 'lib/env'
class Administration::SettingsController < Administration::ScaffoldController
  
  before_filter :set_alias, :only => [:create, :update]
  
  def create

    @object = Env.model(controller_name).new(params[Env.model_string(controller_name)])

    if @object.save
      redirect_to [:administration, :settings, @object.setting_type.alias], :notice => @object.setting_type.alias + ' was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @object = Env.model(controller_name).find(params[:id])

    if @object.update_attributes(params[Env.model_string(controller_name)])
      redirect_to [:administration, :settings, @object.setting_type.alias], :notice => @object.setting_type.alias + ' was successfully updated.'
    else
      render :action => "edit"
    end
  end
  
  def index
    @mod = controller_name
    if params[:commit]
      create
    else 
      if controller_name != 'settings'
        @mod = controller_name
        @objects = Setting.send(controller_name).all.collect{|o| o.becomes(Env.model(controller_name))}
      end
    end
  end
  
  def show
    #if controller_name != 'settings'
      @mod = controller_name
    #  @objects = Setting.send(controller_name)
    #end
  end
  
  def edit
    @object = Env.model(controller_name).find(params[:id])
    @object.setting_type = SettingType.where(:alias => controller_name).first
  end
  
  def new
    @object = Env.model(controller_name).new
    @object.setting_type = SettingType.where(:alias => controller_name).first
    #render :template => 'administration/settings/new'
  end
  
  private #-------------------
  
  def set_alias
    pars = params[Env.model_string(controller_name)]
    if pars[:alias] && pars[:alias].empty?
      params[Env.model_string(controller_name)][:alias] = Russian::translit(pars[:value]).downcase.parameterize
    end
  end
end