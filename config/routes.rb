Rails.application.routes.draw do
  resources :influencers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'influencers#index'
end
