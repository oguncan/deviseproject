Rails.application.routes.draw do
  devise_for :users
  resources :yazars, :path=>"yazarlar"
  resources :kitaps, :path=>"kitaplar"
  
  root "kitaps#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
