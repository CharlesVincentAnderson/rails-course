Rails.application.routes.draw do
  devise_for :users
  resources :courses
  resources :gamecards
  
  resources :courses do
    member do 
      delete 'remove'
    end
  end
  
  root 'menu#menu'
  
end
