Rails.application.routes.draw do
  get 'profile', to: 'pages#profile', as: 'profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
