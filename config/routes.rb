Social::Application.routes.draw do  namespace :administration do
    namespace :settings do
      resources :politics
      resources :religions
      resources :countries
      resources :maritalstatuses
      resources :sexes
      resources :studentstatuses
    end
    resources :users
    resources :cities
    resources :universities
    resources :faculties
  end
  
  get 'id:id', :controller => :user, :action => :show, :id => /[0-9]+/
  
  post 'administration/settings', :controller => 'administration/settings', :action => :index
  get 'administration', :controller => 'administration/administration', :action => 'index'
  get 'administration/do(/:params)', :controller => 'administration/administration', :action => 'do', :params => :params
  get 'administration/settings', :controller => 'administration/scaffold', :action => :do
  match 'register' => 'login#register'
  match 'user_added' => 'login#user_added'
  match 'activate_user' => 'login#activate_user'
  match 'add_user' => 'login#add_user'
  match 'login' => 'login#index'
  match '' => 'login#index'
  match 'unlogin' => 'login#unlogin'
  match 'login/authorize' => 'login#authorize'
  match 'edit' => 'user#edit'
  match 'update' => 'user#update'
  match 'update_universities' => 'user#update_universities'
  match 'add_university' => 'user#add_university'
  match 'albums' => 'user#get_albums'
  match 'new_album' => 'user#new_album'
  match 'add_album' => 'user#add_album'
  get 'album_:alias', :controller => :album, :action => :show, :alias => :alias
  post 'album:alias/add_photos', :controller => :album, :action => :add_photos, :alias => :alias
  post 'add_photos', :controller => :album, :action => :add_photos
  match 'friends' => 'user#get_friends'
  match 'dialogs' => 'user#get_dialogs'
  #get 'send_message_form/:user_id', :controller => :user, :action => :send_message, :user_id => :user_id
  get 'delete_friend/:id', :controller => :user, :action => :delete_friend, :id => :id
  get 'dialog/:user_id', :controller => :user, :action => :show_dialog, :user_id => :user_id 
  get 'show_sent_messages/:user_id', :controller => :user, :action => :show_sent_messages, :user_id => :user_id 
  post '/send_message/', :controller => :user, :action => :send_message
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
