Rails.application.routes.draw do
  resources :clubs
  resources :students
  
  post '/student/add_club' => 'students#add_club'
end
