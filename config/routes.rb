Rails.application.routes.draw do
  get 'reviews', to: 'reviews#index', as: 'review' # index
  get 'reviews/:id', to: 'reviews#show', as: 'review' # show
  get 'authors', to: 'authors#index', as: 'authors' # index
  get 'authors/:id', to: 'authors#show', as: 'author' # show
  get 'books', to: 'books#index', as: 'books' # index
  get 'books/:id', to: 'books#show', as: 'book' # show
  get 'mc_questions', to: 'mc_questions#index', as: 'mc_questions' # index
  get 'mc_questions/:id', to: 'mc_questions#show', as: 'mc_question' # show
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  get 'contact', to: 'static_pages#contact', as: 'contact'
  post 'student_feedback', to: 'static_pages#student_feedback', as: 'student_feedback'
  get 'student-info', to: 'static_pages#student_info', as: 'student_info'
  get 'profile', to: 'pages#profile', as: 'profile'
  # get 'review', to: 'pages#review', as: 'review'
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'question', to: 'pages#question', as: 'question'

  root to: redirect('/welcome', status: 302)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
