Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ports', to: 'ports#index'
  get '/ports/:id', to: 'ports#show'
  get '/ships', to: 'ships#index'
  get '/ships/:id', to: 'ships#show'

  post '/vehicles', to: 'vehicles#create'
  get '/vehicles', to: 'vehicles#index'
  get '/vehicles/new', to: 'vehicles#new'
  get 'vehicles/:id', to: 'vehicles#show'
  patch '/vehicles/:id', to: 'vehicles#update'
  delete '/vehicles/:id', to: 'vehicles#delete'
  get '/vehicles/:id/edit', to: 'vehicles#edit'
  
  get '/vehicles/:id/passengers', to: 'vehicles#passengers'
  get '/vehicles/:id/passengers/new', to: 'passengers#new'

  get '/passengers', to: 'passengers#index'
  get '/passengers/:id', to: 'passengers#show'
end
