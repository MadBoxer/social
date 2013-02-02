#require 'lib/env'
class Administration::ScaffoldController < Administration::AdministrationController
  
  before_filter :get_model, :except => :do
  
 # before_filter :get_object, :only => :create

  def index
    @objects = @model.all
  end

  def show
    @object = @model.find(params[:id])
  end

  def new
    @object = @model.new
  end

  def edit
    @object = @model.find(params[:id])
  end

  def create

    @object = @model.new(params[Env.model_string(controller_name)])

    if @object.save
      redirect_to get_redirect, :notice => Env.model_name(controller_name) + ' was successfully created.'
    else
      render :action => "new"
    end
  end

  def update
    @object = @model.find(params[:id])

    if @object.update_attributes(params[Env.model_string(controller_name)])
      redirect_to get_redirect, :notice => Env.model_name(controller_name) + ' was successfully updated.'
    else
      render :action => "edit"
    end
  end

  def destroy
    @object = @model.find(params[:id])
    @object.destroy
    redirect_to :back
  end
  
  def do
    render :template => 'administration/settings/index'
  end
  private #-------------------
  
  def get_model
    @model = Env.model(controller_name)
  end
  
  def get_redirect
    [:administration, @object]
  end
  
end












