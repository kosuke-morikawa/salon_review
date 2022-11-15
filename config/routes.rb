Rails.application.routes.draw do
  get 'beauty_shops/index'
  get 'beauty_shops/show'
  devise_for :users
  root 'homes#top'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
