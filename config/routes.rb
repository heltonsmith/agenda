Rails.application.routes.draw do
  resources :calls
  resources :clients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users, skip: :registrations, controllers: {
    sessions: "users/sessions"
  }

  get 'homes/index'

  get '/users/sign_up', to: redirect('/users/sign_in')
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  devise_scope :user do
    # tus rutas de Devise aquí
    root to: "homes#index"
  end

end
