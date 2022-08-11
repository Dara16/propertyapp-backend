Rails.application.routes.draw do
  resources :tenements

  resources :apartments

  resources :occupants
end
