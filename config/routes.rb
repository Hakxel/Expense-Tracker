Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'static_pages#home'
    get '/about', to: 'static_pages#about'
    get '/signup', to: 'users#new'
    get '/signin', to: 'sessions#new'
    post '/signin', to: 'sessions#create'
    delete '/signout', to: 'sessions#destroy'
    resources :users    

  end
  get '*path', to: redirect("/#{I18n.default_locale}/%{path}")
  get '', to: redirect("/#{I18n.default_locale}/")

end
