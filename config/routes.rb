Rails.application.routes.draw do
  root 'bookmarks#index'

  resources :kinds
  resources :categories
  resources :bookmarks
  get 'get_bookmarks/:category', to: 'bookmarks#bookmarks_category', as: 'bookmarks_category'

end
