Rails.application.routes.draw do
  get 'profile', to: 'pages#profile', as: 'profile'
  get 'review', to: 'pages#review', as: 'review'
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'question', to: 'pages#question', as: 'question'

  root to: redirect('/welcome', status: 302)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
