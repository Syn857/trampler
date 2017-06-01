Rails.application.routes.draw do

  root 'page#home'
  devise_for :users,
             :path => '',
             :path_name => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'},
             :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
                              :registrations => 'registrations'}

  resources :users, only: [:show]
  resources :services

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
