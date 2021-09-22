Rails.application.routes.draw do
  
  resources :categories
  get 'cart/index'

  devise_for :users
  resources :items
  root 'static_pages#home'
  
  get '/items' => 'items#index'
  
  get '/cart', to: 'cart#index'
  
  get '/cart/:id', to: 'cart#add'
  
  get '/cart/remove/:id' => 'cart#remove'
  
  get '/clearcart', to: 'cart#clearCart'
  
  get '/about_us' => 'static_pages#about_us'
  
  get '/contact_us' => 'static_pages#contact_us'
  
  get '/faq' => 'static_pages#faq'
  
  get '/sizing' => 'static_pages#sizing'
  
  get 'category/:title', to: 'static_pages#category'

  get '/cart/decrease/:id' => 'cart#decrease'

  get '/cart/increase/:id' => 'cart#increase'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
