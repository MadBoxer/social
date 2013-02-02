class Administration::AdministrationController < ApplicationController
  layout 'administration'
  
  def do
    render :json => params[:module].classify.constantize.send(params[:func], params[:pars]).to_json
  end
end
