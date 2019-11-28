Rails.application.routes.draw do
  devise_for :users
   # Quiz resources
  get 'quizzes', to: 'quizzes#index', as: 'quizzes'               # index
  get 'quizzes/new', to: 'quizzes#new', as: 'new_quiz'            # new
  post 'quizzes', to: 'quizzes#create'                            # create
  get 'quizzes/:id/edit', to: 'quizzes#edit', as: 'edit_quiz'     # edit
  match 'quizzes/:id', to: 'quizzes#update', via: [:put, :patch]  # update
  get 'quizzes/:id', to: 'quizzes#show', as: 'quiz'               # show
  delete 'quizzes/:id', to: 'quizzes#destroy'                     # destroy
  get 'users', to: 'users#index', as: 'users' # index
  get 'users/:id', to: 'users#show', as: 'user' # show
  get 'reviews', to: 'reviews#index', as: 'reviews' # index
  get 'reviews/:id', to: 'reviews#show', as: 'review_model' # show
  get 'authors', to: 'authors#index', as: 'authors' # index
  get 'authors/:id', to: 'authors#show', as: 'author' # show
  get 'books', to: 'books#index', as: 'books' # index
  get 'books/:id', to: 'books#show', as: 'book' # show
  get 'quizzes/:id/mc_questions', to: 'quiz_mc_questions#index', as: 'quiz_mc_questions' # nested index
  get 'quizzes/:id/mc_questions/new', to: 'quiz_mc_questions#new', as: 'new_quiz_mc_question' # nested new
  post 'quizzes/:id/mc_questions', to: 'quiz_mc_questions#create' # nested create
  get 'mc_questions/:id/edit', to: 'mc_questions#edit', as: 'edit_mc_question' # edit
  patch 'mc_questions/:id', to: 'mc_questions#update'                          # update (as needed)
  put 'mc_questions/:id', to: 'mc_questions#update'                            # update (full replacement)
  get 'mc_questions/:id', to: 'mc_questions#show', as: 'mc_question' # show
  delete 'mc_questions/:id', to: 'mc_questions#destroy' # destroy route
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
