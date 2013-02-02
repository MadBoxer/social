class EditUserController < UserController
  def edit
    @view = render_to_string(:partial => params[:act] ? params[:act] : 'main', :locals => {:user => @user}).html_safe
  end
  
  def update
    @user.update_attributes(params[:user])
    redirect_to :back
  end
  
  def update_universities
    
  end
  
  def add_university
    @user.universities_relations.push(UsersUniversity.new_based_on(params))
    redirect_to :back
  end
end
