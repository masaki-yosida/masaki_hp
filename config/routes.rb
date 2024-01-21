# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'works'
      get 'contact'
      get 'index'
    end
  end
    root 'pages#index'
end