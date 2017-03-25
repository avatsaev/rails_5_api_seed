Rails.application.routes.draw do


  root to: "application#health_check"

  constraints subdomain: 'admin.api' do


    scope module: :admin_api do

      mount_devise_token_auth_for 'Admin', at: 'auth', skip: [:omniauth_callbacks, :registrations, :confirmations, :passwords] do

      end

      resources :books do
        resources :chapters
      end

      resources :tags, only: [:most_used] do
        collection do
          get :most_used_for_books
          get :most_used_for_chapters
        end
      end

    end

  end

  constraints subdomain: 'api' do

    apipie

    scope module: :api do

      namespace :v1 do

        mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]

        resources :books, only: [:index, :show] do
          resources :chapters, only: [:index, :show]
          collection do

            get :recent
            get :featured
            get :popular

          end
        end

        resource :library, only: [:show] do
          member do
            post '/add_book/:id', to: 'library#add_book'
            delete '/remove_book/:id', to: 'library#remove_book'
          end
        end
      end

    end

  end

end
