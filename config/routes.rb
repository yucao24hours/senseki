Rails.application.routes.draw do
  root "matches#index"

  resources :matches, only: %i(new create index)
end
