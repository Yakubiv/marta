Rails.application.routes.draw do
  mount_ember_app :frontend, to: '/'

  resources :albums
  resources :testimonials, only: [:index, :create]
end
