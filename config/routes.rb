Giveawayr::Application.routes.draw do
  root :to => 'main#index'
  
  # authentication
  match 'auth/:provider/callback', to: 'sessions#create'
  match 'auth/failure', to: redirect('/')
  match 'signout', to: 'sessions#destroy', as: 'signout'
  
  # entry creation
  match 'entry/create', to: 'entries#create'
end
