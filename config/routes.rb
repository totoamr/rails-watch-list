Rails.application.routes.draw do
  resources :bookmarks, only: [:destroy]

  resources :lists do
    resources :bookmarks
  end
end
