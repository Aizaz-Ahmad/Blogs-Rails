Rails.application.routes.draw do
  # get 'articles/show'
  # To set the root View, when / is hit
  root "articles#index"
  # The route above declares that GET /articles requests are mapped to the index action of ArticlesController.
  # get "/articles", to: "articles#index"
  # # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get "/article/:id", to: "articles#show"
  resources :articles
end
