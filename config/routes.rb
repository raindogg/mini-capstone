Rails.application.routes.draw do
  get '/' => 'monsters#index'
  get '/monsters' => 'monsters#index'
  get '/monsters/new' => 'monsters#new'
  post '/monsters' => 'monsters#create'
  get '/monsters/:id' => 'monsters#show'
  get '/monsters/:id/edit' => 'monsters#edit'
  patch '/monsters/:id' => 'monsters#update'
  delete '/monsters/:id' => 'monsters#destroy'
end
