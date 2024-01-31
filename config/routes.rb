# config/routes.rb
Rails.application.routes.draw do
  resources :pages do
    collection do
      get 'blog'
      get 'contact'
      get 'branch'
      get 'works'
      get 'change'
    end
  end

  resources :portfolios do
    collection do
      get 'change' 

    end
  end


  root 'pages#index'
end
