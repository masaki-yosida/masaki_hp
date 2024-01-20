# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'ma'
    end
  end
    root 'pages#index'
end