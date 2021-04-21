Rails.application.routes.draw do
  root 'bookmarks#index'

  resources :kinds
  resources :categories
  resources :bookmarks
  get 'categories/:id/api', to: 'categories#api', as: 'api'

end
