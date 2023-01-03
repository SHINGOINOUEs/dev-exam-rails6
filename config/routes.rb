Rails.application.routes.draw do
  get '/properties', to: 'properties#index' 
  resources :properties
end
