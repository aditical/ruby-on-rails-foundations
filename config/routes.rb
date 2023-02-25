Rails.application.routes.draw do
  get 'tasks/show'
  get 'tasks/new'
  get 'tasks/edit'
  get "contact", to: "pages#contact"
  get "about", to: "pages#about"
  get "blog", to: redirect("https://aditi.com.np")
  get "error", to: "pages#error"

  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"
  get "*path", to: redirect("/error")
end
