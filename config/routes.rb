# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'blog'
      get 'contact'
      get 'bunnkatu'
      get 'works'
      get 'change'
    end
  end

  resources :portfolios do
    collection do
      get 'change' 
      get 'index'
    end
  end


  root 'pages#index'
end
