Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'api/v1/auth/registrations'
      }

      namespace :auth do
        resources :sessions, only: [:index]
      end
    end
  end

  # 価値観パート
  resources :partners, except: %i[index]  
  resources :principles, only: %i[show], param: :user_id
  resources :principles, except: %i[index show]
end
