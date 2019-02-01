Rails.application.routes.draw do

resources :cars
  root "pages#home"

end
