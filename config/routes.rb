AlrightValentine::Application.routes.draw do
  get "winks/create"
  resources :winks, :only => [:create]

  resources :messages, :only => [:new, :create, :destroy]

  get "/login" => "session#new"

  post "/login" => "session#create"

  delete "/logout" => "session#destroy"

  resources :users


  root :to => 'home#index'

end
