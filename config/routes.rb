GradeSystem::Application.routes.draw do
  resources :instructors
  resources :courses do
    resources :assessments
    resources :enrollments do
      resources :grades
    end
  end
  resources :students

  root to: redirect('/welcome')
  get 'welcome' => 'courses#index'
  get 'instructors_main' => 'instructors#home'
  get 'students_main' => 'students#home'

  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  post 'logout' => 'sessions#destroy'
end
