Rails.application.routes.draw do
  devise_for :users
  resources :dishes
  
  resources :orders do
    member do 
      get 'prepare'
      post 'add'
      delete 'remove'
      put 'submit'
    end
  end
  
  get '/restaurant/orders' => 'restaurant_orders#index'
  put '/restaurant/orders/:id/prepare' => 'restaurant_orders#prepare', as: :prepare
  
  root 'orders#index'
end
