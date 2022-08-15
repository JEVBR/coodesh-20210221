Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: proc { [200, {}, ['REST Back-end Challenge 20201209 Running']] }

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :launchers
    end
  end
end
