Rails.application.routes.draw do
  get 'pages/contact'
  get 'pages/about'
  get 'pages/home'
  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
