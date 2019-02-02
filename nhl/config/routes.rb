Rails.application.routes.draw do
  get '/nhl_teams/new' => 'nhl_teams#new'
  post '/nhl_teams' => 'nhl_teams#create'
  get 'nhl_teams' => 'nhl_teams#index'
  get '/nhl_teams/edit' => 'nhl_teams#edit'
  post '/nhl_teams/edit' => 'nhl_teams#update'
  get '/nhl_teams/delete' => 'nhl_teams#delete'
  
  get '/players/new' => 'players#new'
  post '/players' => 'players#create'
  get '/players' => 'players#index'
end
