MoldyMandrakes::Application.routes.draw do

  get "reviews/new"
  get "reviews/create"
  get "sessions/new"
  get "sessions/create"
  get "students/new"
  get "students/create"
resources :courses do
  resources :reviews, only: [:new, :create]
end

resources :students, only: [:new, :create]
resources :sessions, only: [:new, :create, :destroy]
root to: 'courses#index'
end
