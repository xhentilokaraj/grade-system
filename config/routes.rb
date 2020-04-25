GradeSystem::Application.routes.draw do
  resources :instructors
  resources :courses do
    resources :assessments
    resources :enrollments
  end
  resources :students
end
