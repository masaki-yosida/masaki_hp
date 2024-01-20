# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'about'
      get 'works'
      get 'contact'
    end
  end
    root 'pages#index'
end