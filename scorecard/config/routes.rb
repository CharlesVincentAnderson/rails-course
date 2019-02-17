Rails.application.routes.draw do
  devise_for :users
  resources :courses
  
  resources :courses do
    member do 
      delete 'remove'
    end
  end
  
end
