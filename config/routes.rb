Rails.application.routes.draw do
  get 'users', to: 'users#index', as: 'users' # index
  get 'users/:id', to: 'users#show', as: 'user' # show
  get 'reviews', to: 'reviews#index', as: 'reviews' # index
  get 'reviews/:id', to: 'reviews#show', as: 'review_model' # show
  get 'authors', to: 'authors#index', as: 'authors' # index
  get 'authors/:id', to: 'authors#show', as: 'author' # show
  get 'books', to: 'books#index', as: 'books' # index
  get 'books/:id', to: 'books#show', as: 'book' # show
  get 'mc_questions', to: 'mc_questions#index', as: 'mc_questions' # index
  get 'mc_questions/new', to: 'mc_questions#new', as: 'new_mc_question' # new
  post 'mc_questions', to: 'mc_questions#create'                        # create
  get 'mc_questions/:id/edit', to: 'mc_questions#edit', as: 'edit_mc_question' # edit
  patch 'mc_questions/:id', to: 'mc_questions#update'                          # update (as needed)
  put 'mc_questions/:id', to: 'mc_questions#update'                            # update (full replacement)
  get 'mc_questions/:id', to: 'mc_questions#show', as: 'mc_question' # show
  post 'contact', to: 'static_pages#leave_feedback', as: 'leave_feedback'
  get 'contact', to: 'static_pages#contact', as: 'contact'
  post 'student_feedback', to: 'static_pages#student_feedback', as: 'student_feedback'
  get 'student-info', to: 'static_pages#student_info', as: 'student_info'
  get 'profile', to: 'pages#profile', as: 'profile'
  get 'review', to: 'pages#review', as: 'review'
  get 'welcome', to: 'static_pages#welcome', as: 'welcome'
  get 'about', to: 'static_pages#about', as: 'about'
  get 'question', to: 'pages#question', as: 'question'

  root to: redirect('/welcome', status: 302)

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
