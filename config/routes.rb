Rails.application.routes.draw do
  root "pages#home"
  
  get 'home', to: "pages#home", as: "home"
  get 'yello(/:user_name)', to: "pages#yello", as: "yello"
  
  resources :books
  
  resources :authors

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
