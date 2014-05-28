RailsDevisePundit::Application.routes.draw do
  
  resources :miners do
    collection do
      get :lease
      get :assign
    end
  end
  
  resources :pools
  
  get 'cloud/index'
  
  
  root 'cloud#index'
  
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end