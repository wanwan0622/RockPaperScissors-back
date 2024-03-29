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
  resources :partners, only: %i[show], param: :user_id
  resources :partners, except: %i[index show]  
  resources :principles, only: %i[show], param: :user_id
  resources :principles, except: %i[index show]

  # 議事録パート
  resources :reports, except: %i[show destroy]
  resources :report_details, except: %i[show destroy]
  resources :to_dos, except: %i[show destroy]
end
