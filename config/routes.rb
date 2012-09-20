Giveawayr::Application.routes.draw do
  root :to => 'entries#index' #Same as: match "/", to: 'entries#index'
  # authentication
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  # entry creation
  match 'entry/create', to: 'entries#create'
  
  #admin page
  match 'admin_page', to: 'admin#create'
end
