Rails.application.routes.draw do
  root "profil#index"


  resources :profil
end
