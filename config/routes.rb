Rails.application.routes.draw do
  resources :blog_articles
  root "pages#home"
  get "about" => "pages#about"
end
