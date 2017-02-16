Rails.application.routes.draw do



  constraints subdomain: 'admin' do

    scope module: :admin_api do

      mount_devise_token_auth_for 'Admin', at: 'auth', skip: [:omniauth_callbacks, :registrations, :confirmations, :passwords] do

      end

      resources :books do
        resources :chapters
      end

    end

  end

  constraints subdomain: 'api' do

    scope module: :api do

      namespace :v1 do

        mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]


        resources :books, only: [:index, :show] do
          resources :chapters, only: [:index, :show]
        end

      end



    end

  end

end
