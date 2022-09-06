Rails.application.routes.draw do
  resources :tenements

  resources :apartments do
    resources :occupants
  end

  resources :occupants do
    resources :apartments
  end
end
