# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'blog'
      get 'contact'
      get 'index'
      get 'bunnkatu'
    end
  end
    root 'pages#index'
end