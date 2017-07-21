Rails.application.routes.draw do
  mount_ember_app :frontend, to: '/'

  constraints subdomain: 'api' do
    namespace :api, path: '' do
      namespace :v1, path: '' do
        resources :albums
      end
    end
  end
end
