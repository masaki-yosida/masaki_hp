# config/routes.rb
Rails.application.routes.draw do
  resources :pages
  resources :masaki_pages 


  root 'pages#index'
end

