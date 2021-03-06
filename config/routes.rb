Rails.application.routes.draw do
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/ports', to: 'ports#index'
  get '/ports/new', to: 'ports#new'
  get '/ports/:id', to: 'ports#show'
  post '/ports', to: 'ports#create'
  get '/ports/:id/edit', to: 'ports#edit'
  patch '/ports/:id', to: 'ports#update'
  delete '/ports/:id', to: 'ports#delete'

  get '/ports/:port_id/ships', to: 'port_ships#index'
  get '/ports/:port_id/ships/new', to: 'port_ships#new'
  post '/ports/:port_id/ships', to: 'port_ships#create'

  get '/ships', to: 'ships#index'
  get '/ships/:id', to: 'ships#show'
  get '/ships/:id/edit', to: 'ships#edit'
  patch '/ships/:id', to: 'ships#update'
  delete '/ships/:id', to: 'ships#delete'

  post '/vehicles', to: 'vehicles#create'
  get '/vehicles', to: 'vehicles#index'
  get '/vehicles/new', to: 'vehicles#new'
  get 'vehicles/:id', to: 'vehicles#show'
  patch '/vehicles/:id', to: 'vehicles#update'
  delete '/vehicles/:id', to: 'vehicles#destroy' #destroy
  get '/vehicles/:id/edit', to: 'vehicles#edit'

  get '/vehicles/:id/passengers', to: 'vehicle_passengers#index' #Move these to new controller
  get '/vehicles/:id/passengers/new', to: 'vehicle_passengers#new'
  post '/vehicles/:id/passengers', to: 'vehicle_passengers#create'

  get '/passengers', to: 'passengers#index'
  get '/passengers/:id', to: 'passengers#show'
  get '/passengers/:id/edit', to: 'passengers#edit'
  patch '/passengers/:id', to: 'passengers#update'
  delete '/passengers/:id', to: 'passengers#destroy'
end
