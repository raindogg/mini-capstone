Rails.application.routes.draw do
  get '/favorite_monster' => 'monsters#cthulu'
end
