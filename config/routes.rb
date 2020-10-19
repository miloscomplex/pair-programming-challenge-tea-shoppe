Rails.application.routes.draw do

  # home path goes to the welcome page
  get '/', to: 'application#home', as: 'home'

end
