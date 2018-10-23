Rails.application.routes.draw do

  root 'static_pages#home'
  get '/acerca_de', to: 'static_pages#about'
  get '/crear_usuario', to: 'users#new'
  resources :users

end
