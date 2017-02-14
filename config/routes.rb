Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  constraints subdomain: 'api' do
    scope module: 'api' do
      namespace :v1 do

      end
    end
  end

end
