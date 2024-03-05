Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  devise_for :users
  get "up" => "rails/health#show", as: :rails_health_check
end
