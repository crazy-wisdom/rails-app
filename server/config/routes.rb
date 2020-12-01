Rails.application.routes.draw do
  resources :demos

  namespace :api do
    namespace :v1 do
      resources :demos do
        collection do
        end
      end
    end
  end
end
