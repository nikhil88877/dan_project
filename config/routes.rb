Rails.application.routes.draw do

  get 'whiskeys/search' => 'whiskeys#search'
  get '/' => 'whiskeys#index'
  resources :whiskeys
end
