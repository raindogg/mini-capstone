Rails.application.routes.draw do
  get '/favorite_monster' => 'monsters#cthulu'
  get '/all_monsters' => 'monsters#index'
end
