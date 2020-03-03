Rails.application.routes.draw do

  get 'whiskeys/search' => 'whiskeys#search'
  resources :whiskeys
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
