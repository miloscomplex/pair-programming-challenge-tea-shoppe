Rails.application.routes.draw do

  get 'teas/index'
  get 'teas/show'
  get 'teas/new'
  get 'teas/create'
  # home path goes to the welcome page
  get '/', to: 'application#home', as: 'home'

  resources :teas, only: [:index, :show, :new, :create]

end
