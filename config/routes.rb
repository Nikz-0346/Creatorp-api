Rails.application.routes.draw do
  scope 'api/v1' do 
    mount_devise_token_auth_for 'User', at: 'auth', controllers: {
      sessions:      'users/sessions',
      registrations: 'users/registrations',
      confirmations: 'users/confirmations',
      passwords:     'users/passwords'
    }
    get '/get_users', to: 'user#get_users'
  end
end