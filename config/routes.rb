Rails.application.routes.draw do
  # get "up" => "rails/health#show", as: :rails_health_check
  resources :principles, except: %i[index]
end
