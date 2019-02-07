Rails.application.routes.draw do
    get '/franchises/new' => 'franchises@new'
    post '/franchises' => 'franchises#create'
    get '/franchises' => 'franchises#index'
    get '/franchises/edit' => 'franchises#edit'
    post '/franchises/edit' => 'franchises#update'
    get '/franchises/delete' => 'franchises#delete'
    get '/franchises/show' => 'franchises#show'
    
    get '/players/new' => 'players#new'
    post '/players'=> 'players#create'
    get '/players' => 'players#index'
end
