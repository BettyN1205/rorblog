Rails.application.routes.draw do
  resources :blog_articles
  root "pages#home"
  get "about" => "pages#about"
  resources :article, only: [:show, :index, :new, :create] #等价于：get "/blog_articles/:id", to: "blog_articles#show"  # show action 。也就是说，resources会生成一批路由，加了only就指定生成
  

end
