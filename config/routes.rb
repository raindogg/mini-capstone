Rails.application.routes.draw do
  get '/' => 'monsters#index'
  get '/monsters' => 'monsters#index'
  get '/monsters/random' => 'monsters#random'
  get '/monsters/new' => 'monsters#new'
  post '/monsters' => 'monsters#create'
  get '/monsters/:id' => 'monsters#show'
  get '/monsters/:id/edit' => 'monsters#edit'
  patch '/monsters/:id' => 'monsters#update'
  delete '/monsters/:id' => 'monsters#destroy'
  
  get '/suppliers' => 'suppliers#index'
  get '/suppliers/new' => 'suppliers#new'
  post '/suppliers' => 'suppliers#create'
  get '/suppliers/:id' => 'suppliers#show'
  get 'suppliers/:id/edit' => 'suppliers#edit'
  patch '/suppliers/:id' => 'suppliers#update'
  delete '/suppliers/:id' => 'suppliers#destroy'
  get '/images/new' => 'images#new'
  post '/images' => 'images#create'
  delete '/images/:id' => 'images#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

end
